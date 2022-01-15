function A = LaplacianMtx(MapC,version)

%
% For version = 2 the resulting matrix may not be exactly symmetric even if
% MapC is symmetric, thus the corection A = (A+A')/2
%

degC = diag(sum(MapC,2)); % Connectivity strength matrix
beta = 1;
% Unnormalized Laplacian, aka "generator matrix":
if(version == 1)
    A = degC - MapC;
elseif(version == 2)
    A = degC - MapC;
    % Normalized Laplacian matrix:
    iDelta = diag(sqrt(1./(diag(degC + eps))));
    % H = iDelta.^2 * H;
    A = iDelta * A * iDelta;
    % If MapC is symmetric then so is A 
    if(isequal(MapC , MapC'))
        A = (A + A')/2;
    end
elseif(version == 3)
    A = eye(size(MapC)) - inv(degC)*MapC;
end
