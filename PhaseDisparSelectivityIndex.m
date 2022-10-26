function [PDSI,ori_idx] = PhaseDisparSelectivityIndex(Tun)
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
	[~,~,~,PDSI]  = prefDOgOSIgDSI(TunPhi(:,ori_idx)-Tun.Resp(end,1));
	if all(TunPhi(:,ori_idx)-Tun.Resp(end,1)<0)
		PDSI = -1;
	end	
else
	PDSI = -1;
end
end
