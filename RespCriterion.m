function CRIT_PASS = RespCriterion(Tun)
Nshuf = 1000;
CRIT_PVAL = 95;
WINDOW_RESP = 1;
ChiSq_obs = ChiSquare(Tun.Resp);

%% Shuffle for null distribution of ChiSq
ChiSq_shf = zeros(length(Nshuf),1);
for m = 1:Nshuf
	Tun_shuf = ShuffleTun;
	ChiSq_shf(m) = ChiSquare(Tun_shuf.Resp);
end

CRIT_PASS = ChiSq_obs > prctile(ChiSq_shf,CRIT_PVAL);

% figure
% histogram(ChiSq_shf); hold on;
% plot(ChiSq_obs*[1 1],[0 200],'r-')


%% Nested function for calculating chi-square
	function ChiSq = ChiSquare(r)
		Nstim = size(r,1);
		Robs = r(1:(Nstim-1),1);
		Rexp = r(Nstim,1);
		ChiSq = sum((Robs-Rexp).^2) / Rexp;
	end

%% Nested function for recalculating the Tun structure
	function Tun_shuf = ShuffleTun()
		Ntrl = size(Tun.Count,1);
		shuftrl = randperm(Ntrl);
		Tun_shuf = Tun;
		Tun_shuf.Count = [Tun.Count(:,1) Tun.Count(shuftrl,2)];
		Ncond = length(unique(Tun_shuf.Count(:,2)));
		for n = 1:Ncond
			thisStim = Tun_shuf.Count(:,2)==n;
			Tun_shuf.Resp(n,1) = mean(Tun_shuf.Count(thisStim,1))/WINDOW_RESP;
			Tun_shuf.Resp(n,2) = std(Tun_shuf.Count(thisStim,1)/WINDOW_RESP) /...
				sqrt(sum(thisStim));
		end
	end
end