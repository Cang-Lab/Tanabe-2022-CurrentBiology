function [BII,Amp] = BinocInteractIndx(Resp)

% R = Resp(1:end-3,1) - Resp(end,1);
R = Resp(1:end-3,1);
Rmax = (max(R));
Rmin = (min(R));
BII = (Rmax-Rmin)/(Rmax+Rmin);
Amp = Rmax-Rmin;