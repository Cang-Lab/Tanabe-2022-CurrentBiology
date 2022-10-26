function [prefD prefO gOSI gDSI]  = prefDOgOSIgDSI(var1_tuning);

% to calculate the prefO and global OSI from the tuing curve
n_steps_orient = numel(var1_tuning);
spacing = 360./n_steps_orient;
theta = [0:spacing:360-spacing]';
var1_tuning(var1_tuning<0) = 0;
R = sum(var1_tuning.*exp(j.*2.*deg2rad(theta)))/sum(var1_tuning); %circular variance
prefD = rad2deg(phase(R))/2; %divided by 2 to get the direction
gOSI = abs(R); % circular variance

gDSI = abs(sum(var1_tuning.*exp(j.*deg2rad(theta)))/sum(var1_tuning));


if prefD <0
    prefD = prefD + 360; % between 0 and 360, direction
end
if prefD > 180
    prefO = prefD -180; % between 0 and 180, but this is still the direction
else 
    prefO = prefD;
end
% prefO = prefO-90; % convert to orientation and now between -90 and 90

