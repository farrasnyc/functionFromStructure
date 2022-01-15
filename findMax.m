function [xmax,idxout] = findMax(x)

% Find the local min and max of a sequence x
% The function excludes the first two elements of x,
% then computes the highest of local maxima, including 
% at x(end).
% x: 1D sequence
%
%
% Farras Abdelnour, 24-Jul-2013



% Highpass filter,
% use it to extract mins and maxs
h = [1 -1];

mxidx = find(x == max(x));

% Check the boundaries
% (looks unnecessary, remove it..)
if( x(mxidx) == x(1) )
    xMax = x(1);
elseif( x(mxidx) == x(end) )
    xMax = x(end);
else
    xMax = NaN;
end

%% Find local minima and maxima
cnv = conv(x,h);
% Extract the signs
signx = sign(cnv);
%% Identify min and max
%% We take "-h" rather than "h" to preserve the signs of max and min.
maxX = conv(signx,-h);
maxX = maxX / 2;
% Keep only maxima
idx = (maxX > 0);
%% We discard the first and last elements plus the additional shift by one due to convolution 
idx(1:4) = 0; % Ignore the first three time points
%idx(end-1,end) = 0;
maxX = maxX .* idx;
maxX = maxX(2:end-1);

idxout = find(x == max(x .* maxX));

xmax = x(idxout);

