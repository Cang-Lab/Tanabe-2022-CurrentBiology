function DDI = DisparDiscrimIndx_Grating(Tun)
% 

if ~isempty(Tun)
	TunPhi = zeros(8,4);
	if size(Tun.Resp,1)==33
		TunPhi(:,1) = Tun.Resp(1:8,1);
		TunPhi(:,2) = Tun.Resp(9:16,1);
		TunPhi(:,3) = Tun.Resp(17:24,1);
		TunPhi(:,4) = Tun.Resp(25:32,1);
	elseif size(Tun.Resp,1)==41
		TunPhi(:,1) = Tun.Resp(1:8,1);
		TunPhi(:,2) = Tun.Resp(11:18,1);
		TunPhi(:,3) = Tun.Resp(21:28,1);
		TunPhi(:,4) = Tun.Resp(31:38,1);
	end
	
	phi = deg2rad(Tun.Stim) * ones(1,4);
	F1amp = abs(sum(TunPhi.*exp(1i.*phi)));
	[~,ori_idx] = max(F1amp);
	if size(Tun.Resp,1)==33
		conds = 8*(ori_idx-1)+[1:8];
	elseif size(Tun.Resp,1)==41
		conds = 10*(ori_idx-1)+[1:8];
	end
	resp_idx = false(size(Tun.Count,1),8);
	for n = 1:8
		resp_idx(:,n) = Tun.Count(:,2)==conds(n);
	end
	Rcount = Tun.Count(any(resp_idx,2),:);
	
	% Cannot use DDI func because discarding monoc conditions 
	% is different between gratings and RDS
	Rcount(:,1) = sqrt(Rcount(:,1));
	Rmean = zeros(length(conds),2);
	Rres = zeros(size(Rcount,1),1);
	for n = 1:length(conds)
		R = Rcount(Rcount(:,2)==conds(n),1);
		Rmean(n,:) = [mean(R) var(R)];
		Rres(Rcount(:,2)==conds(n)) = R - mean(R);
	end
	% RMS = sqrt(mean(Rmean(:,2)));
	RMS = sqrt(var(Rres));
	Rmax = max(Rmean(:,1));
	Rmin = min(Rmean(:,1));
	DDI = (Rmax-Rmin) / (Rmax-Rmin+2*RMS);
end

