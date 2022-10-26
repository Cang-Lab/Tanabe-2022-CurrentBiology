function [ptratio,slope,v] = SpikeWave(v,ANIMALTYPE)
% Peak-to-trough ratio
% Rise-slope

[v_min,t_min] = min(v(75+[-20:20]));
[v_max,t_max] = max(v(75+[-20:20]));
v = v/abs(max(v)-min(v));
v = v - mean(v(75+[-10:-1]));
% v = circshift(v,t_min-20);

v_min = min(v);
v_max = max(v);

if v_min<0 && v_max>0 %&& t_min > 60 && t_min < 90
	ptratio = v_max/abs(v_min);
	slope = regress(v(t_min+2:t_min+4)',[[t_min+2:t_min+4]'/20 ones(3,1)]);
% 	slope2 = regress(v(75+5:75+7)',[[75+5:75+7]'/20 ones(3,1)]);
	if strcmp(ANIMALTYPE,'Mouse')
		% Mouse
		slope2 = regress(v(55+[t_min+9:t_min+11])',[[55+[t_min+9:t_min+11]]'/20 ones(3,1)]);
	elseif strcmp(ANIMALTYPE,'TreeShrew')
		% Tree shreew
		t_min = 20;
		slope2 = regress(v(55+[t_min+5:t_min+7])',[[55+[t_min+5:t_min+7]]'/20 ones(3,1)]);
	end
	
	slopeAll = [slope slope2];
	slope = [slope(1) slope2(1)];
else
	ptratio = -100;
	slope = [-100 -100];
end

% plot(([1:150]-75)/20,v,'-'); hold on;
% disp('hello')