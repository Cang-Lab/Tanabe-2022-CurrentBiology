function z_bound = LFP_boundary(LFP,chanpos)

% Find the minimum in the LFP
[minval,minidx] = min(LFP,[],2);
[~,minchan] = min(minval); % Min channel
LFPsink = LFP(:,minidx(minchan)); % LFP as a function of depth at min time

% Interpolation of LFP as a func of depth
z_interp = linspace(chanpos(1,2),chanpos(end,2),100)';
LFPsink_interp = interp1(chanpos(:,2),LFPsink,z_interp,'spline');
[~,mininterp] = min(LFPsink_interp);

% Definitions of bounds
% Upper bound: LFP rises from min to 1/3 of shallowest channel.
% Lower bound: LFP rises from min to 1/3 of deepest channel.
[~,z_bound(1,1)] = min(abs(LFPsink_interp(mininterp:end) - (minval(minchan)*2+LFPsink(end))/3));
[~,z_bound(3,1)] = min(abs(LFPsink_interp(1:mininterp(1)) - (minval(minchan)*2+LFPsink(1))/3));
z_bound(1) = z_interp(mininterp+z_bound(1));
z_bound(2) = z_interp(mininterp);
z_bound(3) = z_interp(z_bound(3));



