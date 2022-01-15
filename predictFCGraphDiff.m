function H = predictFCGraphDiff(MapC,Tcrit)

% Function finds the diffused graph H (estimated functional network) given a
% structural connectivity matrix MapC and diffusion depth Tcrit
%
% MapC: Structural connectivity matrix
% Tcrit: graph diffusion depth
% H: Output matrix, predicted functional network

degC = diag(sum(MapC,2)); % Connectivity strength matrix
beta = 1;
% Unnormalized Laplacian, aka "generator matrix":
A = degC - MapC;
% Normalized Laplacian matrix:
iDelta = diag(sqrt(1./(diag(degC + eps))));
% H = iDelta.^2 * H;
A = iDelta * A * iDelta;

H = expm(-beta*A*Tcrit);
