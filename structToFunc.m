function [Ls2, vLs2, estimatesAllL, estimates,FCmtx,SCmtx] = structToFunc(SCmtx,FCmtx)

% Input:
%
% FCmtx: an NxNxM array containing the functional matrices of M subjects
% SCmtx: an NxNxM array containing the structural matrices of M subjects
%
% Outputs:
% 
% Ls2: Laplacian eigenvalues
% vLs2: Laplacian eigenvectors
% 
% estimatesAll: curve fitting parameters {a,alpha,b} computed over all subjects
% estimates: array of curve fitting parameters for all subjects
%
% Functions called:
% fitcurvedemo, LaplacianMtx

numEigvals = size(FCmtx,1);

for ii=1:length(FCdir)
			FC = FCmtx(:,:,ii);
            FC = FC - diag(diag(FC)); % Diagonal elements set to 0.
            thresh = std(nonzeros(FC(:))) / 3; % Threshold FC elements
            FCmtx(:,:,ii) = FC .* (abs(FC) > thresh);
end


fCeigMtx = zeros(size(FCmtx,3),numEigvals);
sCeigMtx = zeros(size(FCmtx,3),numEigvals);
sLapMtx2 = zeros(size(FCmtx,3),numEigvals);
UMtx = zeros(numEigvals , numEigvals ,size(FCmtx,3));


% Allocate memory for eigenvectors
vDs = zeros(numEigvals , numEigvals , size(FCmtx,3));
vLs2 = zeros(numEigvals , numEigvals , size(FCmtx,3));
vDf = zeros(numEigvals , numEigvals , size(FCmtx,3));

% Allocate memory for eigenvalues
Ds = zeros(numEigvals , numEigvals , size(FCmtx,3));
Ls2 = zeros(numEigvals , numEigvals , size(FCmtx,3));
Df = zeros(numEigvals , numEigvals , size(FCmtx,3));
eigFC = zeros(numEigvals , size(FCmtx,3));

for ii=1:size(SCmtx,3)
    LMtx2(:,:,ii) = LaplacianMtx(SCmtx(:,:,ii) , 2);
    [vLs2(:,:,ii),Ls2(:,:,ii)] = eig(LMtx2(:,:,ii));
    [vDf(:,:,ii),Df(:,:,ii)] = eig(FCmtx(:,:,ii)); 
    sLapMtx2(ii,:) = sort((diag(Ls2(1:numEigvals,1:numEigvals,ii))), 'Ascend')';
    fCeigMtx2(ii,:) = sort((diag(Df(1:numEigvals,1:numEigvals,ii)) ), 'Descend')';

    [estimates(:,ii) , ~] = fitcurvedemo(sLapMtx2(ii,:), fCeigMtx2(ii,:));

end
clear Ds Df Ls

[estimatesAllL, ~] = fitcurvedemo(sLapMtx2(:), fCeigMtx2(:));





