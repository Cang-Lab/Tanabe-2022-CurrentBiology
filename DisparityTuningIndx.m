function DTI = DisparityTuningIndx(Resp)

% R = Resp(1:end-3,1) - Resp(end,1);
R = Resp(1:end-3,1);
Rspont = Resp(end,1);
Rmax = (max(R));
Rmin = (min(R));
if Rmax - Rspont > 2 && Rmin - Rspont >= 0
	DTI = 1 - (Rmin-Rspont)/(Rmax-Rspont);
else
	DTI = -1;
end
