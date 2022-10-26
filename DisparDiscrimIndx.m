function DDI = DisparDiscrimIndx(Rcount)
% Cacluate Disparity Discrimination Index (DDI) from:
% Prince, Pointon, Cumming, Parker (2002) Quantitative Analysis of the
% Responses of V1 Neurons to Horizontal Disparity in Dynamic Random-Dot
% Stereograms. J. Neurophysiol.

Rcount(:,1) = sqrt(Rcount(:,1));
conds = unique(Rcount(:,2));
conds  = conds(1:end-3); % Discard L-monoc, R-monoc, Blank conditions
Rmean = zeros(length(conds),2);
Rres = zeros(size(Rcount,1),1);
for n = 1:length(conds)
	R = Rcount(Rcount(:,2)==conds(n),1);
% 	R = sqrt(R);
	Rmean(n,:) = [mean(R) var(R)];
	Rres(Rcount(:,2)==conds(n)) = R - mean(R);
end
% RMS = sqrt(mean(Rmean(:,2)));
RMS = sqrt(var(Rres));
Rmax = max(Rmean(:,1));
Rmin = min(Rmean(:,1));
DDI = (Rmax-Rmin) / (Rmax-Rmin+2*RMS);
