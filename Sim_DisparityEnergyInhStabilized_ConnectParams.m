function Sim_DisparityEnergyInhStabilized_ConnectParams()
% This model takes a populaton of the disparity energy model of Ohzawa-
% DeAngelis-Freeman (1990) and connects them into a network similar to the
% inhibition-stabilized network described in Ozeki et al (2009) Neuron and
% Rubin-VanHooser-Miller (2015) Neuron. The expectation is that this new
% model, by appropriately setting the connectivity weights, will explain
% our observations of disparity tuning in mouse V1. Hopefully, it will also
% reproduce the disparity tuning we have observed in tree shrew V1.
%
% IMPORTANT UPDATE!! Switched to Klein Bottle from torus (10/13/2022 Seiji)
% Original program is saved as Sim_DisparityEnergyInhStabilized_Torus.m



%% Setting parameters (RFs, stims, connectivity)
param_k = [2 12 20]; %[4 2 1]
param_w = [90 60 40 20 10]; %[75 60 45 30 15]
for ww = 1:length(param_w)
	for www = 1:length(param_k)
		Sim = InitParam('RDS','TreeShrew',param_w(ww),param_k(www)); % RDS or Grating, Mouse or TreeShrew
		RF = RFGen(Sim); % Generate RFs of population using params in Sim. RF{Ori,Phi,L/R}
		Resp = zeros(length(Sim.Disp),prod(Sim.Npop)*2); % Prep 2 populations (exc & inh)
		parfor s = 1:length(Sim.Disp)
			[SL,SR] = StimGen(Sim,s); % Generate stims using params in Sim
			Resp(s,:) = SimResp(Sim,RF,SL,SR); % Simulate the population dynamics, then time avg
		end
		figure;
		plot(Sim.Disp,Resp(:,79),'k.-'); hold on;
		plot(Sim.Disp,Resp(:,79+144),'.-');
		legend('Exc','Inh'); ah=gca; ah.FontSize=14; box off;
		saveas(gcf,['Sim_InhStabilized_KleinBottle/Sim_ConnectParam_k_' num2str(param_k(www)) '_w_' num2str(param_w(ww)) '.png']);
		close;
		save(['Sim_InhStabilized_KleinBottle/Sim_Resp_k_' num2str(param_k(www)) '_w_' num2str(param_w(ww)) '.mat'],'Sim','Resp');
	end
end

% filenames = what('Sim_InhStabilized_ConcentExc2Exc');
% for n=1:size(filenames.mat,1);
% 	load([filenames.path '/' filenames.mat{n}],'Resp');
% 	RespAmp(n)=max(Resp(:,79))-min(Resp(:,79));
% 	RespIndx(n)=RespAmp(n)/mean(Resp(:,79));
% end
% RespAmp = reshape(RespAmp',[3 4]);
% RespIndx = reshape(RespIndx',[3 4]);
% RespAmp_old = RespAmp; RespAmp(:,6)=RespAmp_old(:,5); RespAmp(:,5)=RespAmp_old(:,6);
% RespIndx_old = RespIndx; RespIndx(:,6)=RespIndx_old(:,5); RespIndx(:,5)=RespIndx_old(:,6);
% imagesc(RespAmp)
% axis xy; axis square; box off; ah=gca; colorbar;
% ah.XTick=[1:8]; ah.YTick=[1:4]; ah.TickDir='out'; ah.FontSize=14;
% ah.XTickLabel={'0.1','0.2','0.5','0.75','1','1.5','2','4'};
% ah.YTickLabel={'10','20','30','40'};
% xlabel('Inh pool concentration'); ylabel('Strength of feedback inh')

end


%%
function Sim = InitParam(stimtype,animaltype,prm_w,prm_k)

Sim.Npop = [12 12]; % Ori x PhaseDispar

Sim.N_x = 200;
Sim.N_y = 200;
Sim.VisAngle = [40 40];
Sim.x = linspace(-Sim.VisAngle(1)/2,Sim.VisAngle(1)/2,Sim.N_x);
Sim.y = linspace(-Sim.VisAngle(2)/2,Sim.VisAngle(2)/2,Sim.N_y);

% RF parameters of the disparity energy population
Sim.RFori = linspace(-90,90,Sim.Npop(1)+1);
Sim.RFori = Sim.RFori(1:end-1);
Sim.RFphi = linspace(-180,180,Sim.Npop(2)+1);
Sim.RFphi = Sim.RFphi(1:end-1);
Sim.StimType = stimtype;

% Mouse model has inh feedback, and broad exc feedback (or salt-and-pepper)
% TreeShrew model has inh feedback, and selective exc feedback.
switch animaltype
	case 'Mouse'
		% Connnectivity is set with a large matrix with 4 quadrants:
		% Exc-to-Exc (upper left), Exc-to-Inh (upper right)
		% Inh-to-Exc (bottom left), Inh-to-Inh (bottom right)
		Ntot = Sim.Npop(1)*Sim.Npop(2);
		Sim.weight = zeros(Ntot*2,Ntot*2); 
		% Set weights of exc-to-exc connections. Mouse model is broad.
		mm = 1;
		for m = 1:Sim.Npop(2)
			for n = 1:Sim.Npop(1)
				w_ori = vonmisespdf(deg2rad(Sim.RFori*2),deg2rad(Sim.RFori(n)*2),0.1); 
				w_phi = vonmisespdf(deg2rad(Sim.RFphi),deg2rad(Sim.RFphi(m)),0.1);
				w = w_ori' * w_phi;
				Sim.weight(mm,1:Ntot) = w(:)' / sum(w(:));
				mm = mm+1;
			end
		end
		Sim.weight(1:Ntot,1:Ntot) = Sim.weight(1:Ntot,1:Ntot) * 0.02;
		% Set weights of exc-to-inh connections
		mm = 1;
		for m = 1:Sim.Npop(2) % Must be in this order: 1st Ori then 2nd Phi
			for n = 1:Sim.Npop(1)
				w_ori = vonmisespdf(deg2rad(Sim.RFori*2),deg2rad(Sim.RFori(n)*2),0.02);
				w_phi = vonmisespdf(deg2rad(Sim.RFphi),deg2rad(Sim.RFphi(m)),0.1);
				w = w_ori' * w_phi;
				Sim.weight(mm,Ntot+[1:Ntot]) = w(:)' / sum(w(:));
				mm = mm+1;
			end
		end
		Sim.weight(1:Ntot,Ntot+[1:Ntot]) = Sim.weight(1:Ntot,Ntot+[1:Ntot]) * 0.1; %
		% Set weights of inh-to-exc connections
		Sim.weight(Ntot+[1:Ntot],1:Ntot) = eye(Ntot) * 0.1;
		% Set weights of inh-to-inh connections
% 		mm = 1;
% 		for m = 1:Sim.Npop(2) % Must be in this order: 1st Ori then 2nd Phi
% 			for n = 1:Sim.Npop(1)
% 				w_ori = vonmisespdf(deg2rad(Sim.RFori*2),deg2rad(Sim.RFori(n)*2),0.5);
% 				w_phi = vonmisespdf(deg2rad(Sim.RFphi),deg2rad(Sim.RFphi(m)),0.5);
% 				w = w_ori' * w_phi;
% 				Sim.weight(Ntot+mm,Ntot+[1:Ntot]) = w(:)' / sum(w(:));
% 				mm = mm+1;
% 			end
% 		end
% 		Sim.weight(Ntot+[1:Ntot],Ntot+[1:Ntot]) = Sim.weight(Ntot+[1:Ntot],Ntot+[1:Ntot])*5;		
		Sim.weight(Ntot+[1:Ntot],Ntot+[1:Ntot]) = eye(Ntot)*0;
	case 'TreeShrew'
		% Connnectivity is set with a large matrix with 4 quadrants:
		% Exc-to-Exc (upper left), Exc-to-Inh (upper right)
		% Inh-to-Exc (bottom left), Inh-to-Inh (bottom right)
		Ntot = Sim.Npop(1)*Sim.Npop(2);
		Sim.weight = zeros(Ntot*2,Ntot*2); 
		% Set weights of exc-to-exc connections. Tree shrew model is
		% narrow.
		mm = 1;
		for m = 1:Sim.Npop(2) % Must be in this order: 1st Ori then 2nd Phi
			for n = 1:Sim.Npop(1)
% 				w_ori = vonmisespdf(deg2rad(Sim.RFori*2),deg2rad(Sim.RFori(n)*2),4); % 1
				w_ori = vonmisespdf(deg2rad([Sim.RFori 180+Sim.RFori]),deg2rad(Sim.RFori(n)),12); % Concent 1
				w_phi = vonmisespdf(deg2rad(Sim.RFphi),deg2rad(Sim.RFphi(m)),1); % 1
				w = w_ori' * w_phi;
				w = w(1:Sim.Npop(1),:) + fliplr(w((Sim.Npop(1)+1):end,:));
				Sim.weight(mm,1:Ntot) = w(:)' / max(w(:));
				mm = mm+1;
			end
		end
		Sim.weight(1:Ntot,1:Ntot) = Sim.weight(1:Ntot,1:Ntot) * 0.033; %0.033
		% Set weights of exc-to-inh connections
		mm = 1;
		for m = 1:Sim.Npop(2) % Must be in this order: 1st Ori then 2nd Phi
			for n = 1:Sim.Npop(1)
% 				w_ori = vonmisespdf(deg2rad(Sim.RFori*2),deg2rad(Sim.RFori(n)*2),prm_k); % 0.5
				w_ori = vonmisespdf(deg2rad([Sim.RFori 180+Sim.RFori]),deg2rad(Sim.RFori(n)),prm_k); % 0.5
				w_phi = vonmisespdf(deg2rad(Sim.RFphi),deg2rad(Sim.RFphi(m)),0.5); % 0.5
				w = w_ori' * w_phi;
				w = w(1:Sim.Npop(1),:) + fliplr(w((Sim.Npop(1)+1):end,:));
				Sim.weight(mm,Ntot+[1:Ntot]) = w(:)' / max(w(:));
				mm = mm+1;
			end
		end
		Sim.weight(1:Ntot,Ntot+[1:Ntot]) = Sim.weight(1:Ntot,Ntot+[1:Ntot]) * 0.04; %0.06
		% Set weights of inh-to-exc connections
		Sim.weight(Ntot+[1:Ntot],1:Ntot) = eye(Ntot) * prm_w; %0.03
		% Set weights of inh-to-inh connections
		Sim.weight(Ntot+[1:Ntot],Ntot+[1:Ntot]) = eye(Ntot)*0;
end
if false
	figure;
	subplot(2,2,1);
	imagesc(reshape(Sim.weight(79,1:Ntot),Sim.Npop));
	axis square; axis off; caxis([0 max(caxis)])
	subplot(2,2,2);
	imagesc(reshape(Sim.weight(79,Ntot+[1:Ntot]),Sim.Npop));
	axis square; axis off; caxis([0 max(caxis)])
	subplot(2,2,3);
	imagesc(reshape(Sim.weight(Ntot+79,1:Ntot),Sim.Npop));
	axis square; axis off; caxis([0 max(caxis)])
	subplot(2,2,4);
	imagesc(reshape(Sim.weight(Ntot+79,Ntot+[1:Ntot]),Sim.Npop));
	axis square; axis off; caxis([0 max(caxis)])
	colormap('hot');
end

% Output nonlinearity
Sim.nonlin = [0 2 1]; % Offset, exponent, coeff

switch stimtype
	case 'RDS' % For RDS
		Sim.Dots = [0.5 0.05]; % [size density]
		Sim.Disp = [-20:2:20];% [Disparities in tuning (deg)]
		Sim.N_t= 2000; % 500 2000
		Sim.stimnorm = [0.5 20]; % Gain, offset 20
	case 'Grating' % For grating
		Sim.Disp = [0:(1/16):(15/16)]*2*pi;
		Sim.N_t=16;
		Sim.Ori = 0;
		Sim.SF = 0.08;
		Sim.stimnorm = [0.05 15]; % Gain, offset
end
Sim.RF = [0 0 5 0.08 0 0 0 0];
% [x0 y0 sgm freq phi_L phi_d ori ori_d]
end

%%
function RF = RFGen(Sim)
x = Sim.x;
y = Sim.y;
RF = cell(Sim.Npop(1),Sim.Npop(2),2);

for n = 1:Sim.Npop(1) % Iterate through RFori
	for m = 1:Sim.Npop(2) % Iterate through RFphi
		HLx = exp(-((x-Sim.RF(1)).^2)/(2*Sim.RF(3)^2)) ...
			.*cos(2*pi*Sim.RF(4)*x+Sim.RF(5));
		HLy = exp(-((x-Sim.RF(1)).^2)/(2*Sim.RF(3)^2));
		HL = HLy'*HLx;
		HL = imrotate(HL,-Sim.RFori(n),'bilinear','crop');
		RF{n,m,1} = HL;
		
		HRx = exp(-((x-Sim.RF(1)).^2)/(2*Sim.RF(3)^2)) ...
			.*cos(2*pi*Sim.RF(4)*x+Sim.RF(5)+deg2rad(Sim.RFphi(m)));
		HRy = exp(-((x-Sim.RF(1)).^2)/(2*Sim.RF(3)^2));
		HR = HRy'*HRx;
		HR = imrotate(HR,-Sim.RFori(n)-Sim.RF(8),'bilinear','crop');
		RF{n,m,2} = HR;
	end
end

if false
	figure;
	nn = 1;
% 	for n = 1:Sim.Npop(1) % Iterate through RFori
% 		for m = 1:Sim.Npop(2) % Iterate through RFphi
	for n = 6:8 % Iterate through RFori
		for m = 5:2:9 % Iterate through RFphi
	figure;
% 			subplot(Sim.Npop(1),Sim.Npop(2),nn);
			imagesc([RF{n,m,1} RF{n,m,2}]); hold on;
			colormap gray; axis off; caxis([-1 1]);
			ah=gca; ah.PlotBoxAspectRatio=[2 1 1];
			plot([200 200],[0 400],'w--');
			nn = nn+1;
		end
	end
end
end

%%
function [SL,SR] = StimGen(Sim,s)
SL = zeros(Sim.N_y,Sim.N_x,Sim.N_t);
SR = zeros(Sim.N_y,Sim.N_x,Sim.N_t);

switch Sim.StimType
	case 'RDS'
		for t = 1:Sim.N_t
			% Create dot positions
			N_dot = ( Sim.VisAngle(1) / Sim.Dots(1) ) * ...
				( Sim.VisAngle(2) / Sim.Dots(1) );
			N_dot = round(N_dot * Sim.Dots(2));
			p = [rand(N_dot,1)*Sim.N_x rand(N_dot,1)*Sim.N_y];
			p = round(p);
			sz = Sim.N_x/Sim.VisAngle(1)*Sim.Dots(1);
			sz = round(sz/2);
			p = p(p(:,1)>sz & p(:,2)>sz,:); % Discard dots that fall off
			p = p(p(:,1)<Sim.N_x & p(:,2)<Sim.N_y,:);
			
			% Odd dots are bright, even dots are dark
			N_dot = size(p,1);
			for n = 1:N_dot
				if mod(n,2)>0
					SL(p(n,1)-sz:p(n,1)+sz,p(n,2)-sz:p(n,2)+sz,t) = 1;
					SR(p(n,1)-sz:p(n,1)+sz,p(n,2)-sz:p(n,2)+sz,t) = 1;
				else
					SL(p(n,1)-sz:p(n,1)+sz,p(n,2)-sz:p(n,2)+sz,t) = -1;
					SR(p(n,1)-sz:p(n,1)+sz,p(n,2)-sz:p(n,2)+sz,t) = -1;
				end
			end
			
			% Apply disparity to right-eye image
			d = round( Sim.Disp(s) * Sim.N_x/Sim.VisAngle(1) );
			SR(:,:,t) = circshift(SR(:,:,t),d,2);
		
			if false
				[xx,yy] = meshgrid([1:Sim.N_x],[1:Sim.N_y]);
				patchmask = (xx-Sim.N_x/2).^2+(yy-Sim.N_y/2).^2 < 75^2;
				figure;
				subplot(1,2,1);
				imagesc(SL(:,:,t) .* patchmask);
				axis square; colormap gray; axis off;
				subplot(1,2,2);
				imagesc(SR(:,:,t) .* patchmask);
				axis square; colormap gray; axis off;
% 				F(t) = getframe(gcf); close;
			end
		end
	case 'Grating'
		x = Sim.x;
		y = Sim.y;
		dT = round((1/Sim.SF)/(x(2)-x(1))/Sim.N_t);
		for t = 1:Sim.N_t
			SLx = cos((2*pi*Sim.SF)*x-(t-1)*2*pi/Sim.N_t);
			SRx = cos((2*pi*Sim.SF)*x-(t-1)*2*pi/Sim.N_t-Sim.Disp(s));
			SL(:,:,t) = repmat(SLx,[Sim.N_y 1]);
			SR(:,:,t) = repmat(SRx,[Sim.N_y 1]);
			SL(:,:,t) = imrotate(SL(:,:,t),-Sim.Ori,'bilinear','crop');
			SR(:,:,t) = imrotate(SR(:,:,t),-Sim.Ori,'bilinear','crop');
			if false
				[xx,yy] = meshgrid(x,x);
				gratmask = xx.^2+yy.^2 < 15^2;
				figure;
				subplot(1,2,1);
				imagesc(SL(:,:,t) .* gratmask);
				axis square; colormap gray; axis off;
				subplot(1,2,2);
				imagesc(SR(:,:,t) .* gratmask);
				axis square; colormap gray; axis off;
% 				F(t) = getframe(gcf); close;
			end
		end
end
end

%%
function Resp = SimResp(Sim,RF,SL,SR)
N = size(SL,3);
Nori = Sim.Npop(1);
Nphi = Sim.Npop(2);
Resp = zeros(Nori,Nphi);
RespDyn = [];
t_sim = [];
t_end = 0;
Ntot = Nori*Nphi;
r_init = zeros(2*Ntot,1); % 1st half disparity energy, 2nd half inh
excpop_idx = [1:Ntot];
inhpop_idx = Ntot + [1:Ntot];
StimDyn = [];
for n = 1:Sim.N_t % Iterate through stim frames
	stim = zeros(Nori,Nphi); % Only disparity energy receive stim input
	% Calculate the inner-product of RF and Stim across population. This is
	% used as the stim drive in the network model.
	for k = 1:Nori
		for m = 1:Nphi
			stim(k,m) = sum(sum(RF{k,m,1}.*SL(:,:,n))) ...
				+ sum(sum(RF{k,m,2}.*SR(:,:,n)));
		end
	end
	stim = stim(:) * Sim.stimnorm(1) + Sim.stimnorm(2);
	% Crux of the simulation. Network dynamics during this stim frame.
	[T,R] = ode45(@NetworkModel,[0. 10],r_init);
	
	% Plug in the final network state as the initial state for the next
	% stim frame.
	r_init = R(end,:)';

	RespDyn = cat(1,RespDyn,R);
	t_sim = cat(1,t_sim,t_end+T);
	t_end = t_end + T(end);
	StimDyn = cat(1,StimDyn,ones(length(T),1)*stim');
end
RespDyn = NonLin(RespDyn);
Resp = mean(RespDyn);
if false
% 	figure;
% 	plot(t_sim/200,RespDyn(:,[144+79 79])); box off;
% 	figure;
% 	plot(t_sim/200,StimDyn(:,79)); box off;
	figure;
	Resp_Exc = reshape(Resp(excpop_idx),[Nori Nphi]);
	Resp_Inh = reshape(Resp(inhpop_idx),[Nori Nphi]);
	subplot(1,2,1);
	imagesc(Resp_Exc); axis square; axis off;
	subplot(1,2,2);
	imagesc(Resp_Inh); axis square; axis off;
end

%% Nested functions
% Diff equation describing the dynamics. Called from ODE.
	function drdt = NetworkModel(t,r)
		drdt = zeros(2*Ntot,1);

		for kk = 1:Ntot
			% Exc population: RFdrive + Exc-to-Exc + Inh-to-Exc 
			drdt(kk) = -r(kk) + stim(kk) ...
				+ Sim.weight(kk,excpop_idx)*NonLin(r(excpop_idx)) ...
				- Sim.weight(Ntot+kk,excpop_idx)*NonLin(r(inhpop_idx));
			% Inh population:  Exc-to-Inh + Inh-to-Inh
			drdt(kk+Ntot) = -r(kk+Ntot) ...
				+ Sim.weight(kk,inhpop_idx)*NonLin(r(excpop_idx));
				- Sim.weight(Ntot+kk,inhpop_idx)*NonLin(r(inhpop_idx));
		end
	end

% Output nonlinearity
	function r = NonLin(s)
		s = s.*(s>0);
		r = (s + Sim.nonlin(1)).^Sim.nonlin(2) * Sim.nonlin(3);
	end
end