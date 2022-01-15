function [estimates, model] = fitcurvedemo(xdata, ydata)
% Call fminsearch with a random starting point.

%start_point = rand(1, 3);
% Start point set to known range of parameters
start_point = [15 4 -0.5];

model = @expfun;
estimates = fminsearch(model, start_point);
% expfun accepts curve parameters as inputs, and outputs sse,
% the sum of squares error for A*exp(-lambda*xdata)-ydata,
% and the FittedCurve. FMINSEARCH only needs sse, but we want
% to plot the FittedCurve at the end.
    function [sse, FittedCurve] = expfun(params)
        A = params(1);
        lambda = params(2);
        C = params(3);
        FittedCurve = A .* exp(-lambda * xdata) + C;
        ErrorVector = FittedCurve - ydata;
        sse = sum(ErrorVector .^ 2);
    end
end