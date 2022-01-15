# functionFromStructure
Estimating brain's functional network from the structural network

# functionFromStructure
Estimating brain's functional network from the structural network

## Main functions:

*predicFCGraphDiff.m*: Function finds the diffused graph H (estimated functional network) given a structural connectivity matrix MapC and diffusion depth Tcrit.

*structToFunc.m*: Estimate the functional network from the brain’s structural network using the structural Laplacian’s eigen decomposition.

## Supporting and additional functions:

*findMax.m*: Find the local min and max of a sequence x. The function excludes the first two elements of x,  then computes the highest of local maxima, including at x(end).
x: 1D sequence

*fitcurvedemo.m*: 1D curve fitting function.

*LaplacianMtx.m*: Obtain the Laplacian matrix of a network.

*lobeNames116.m*: List of 116 cortical regions with associated lobes.

*NewCallback90ROI.m*: Display the position of the data cursor.

*rotateXLabels.m*: Rotate any xticklabels.

*suplabel.m*: Places text as a title, xlabel, or ylabel on a group of subplots.
