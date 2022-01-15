function [lobeName116,labels,lobeColors116] = lobeNames116()

% List of 116 cortical regions with associated lobes
% This function requires no input
%
% list of lobe regions
% 1 = frontal, 2 = parietal, 3 = occipital, 4 = temporal, 5 = subcortical, % 6 = cerebellum
% Colors: 'k' = black, 'r' = red, 'b' = blue, 'y' = yellow, 'g' = green, 

lobeName116 = cell(116,1);
lobeColors116 = zeros(116,1);

% Regions' color code

lobeColors116 = zeros(116,1);
lobeColors116(1:28) = 1;
lobeColors116([29:42, 71:78]) = 5;
lobeColors116(43:54) = 3;
lobeColors116([55:56, 79:90]) = 4;
lobeColors116(57:70) = 2;
lobeColors116(91:116) = 6;

% new mods in limbic system
lobeColors116([29, 30]) = 1;  % insula
lobeColors116([31, 32]) = 1;  % ant cing
lobeColors116([33, 34]) = 1; % mid cing
lobeColors116([35, 36]) = 2; % post cing
lobeColors116([37, 38]) = 5; % hippo
lobeColors116([39, 40]) = 5; % parahippo % was 4
lobeColors116([41, 42]) = 5; % parahippo % was 4

% Lobe names

a = find(lobeColors116 == 1);
lobeName116(a,1) = {'Frontal'};
a = find(lobeColors116 == 2);
lobeName116(a,1) = {'Parietal'};
a = find(lobeColors116 == 3);
lobeName116(a,1) = {'Occipital'};
a = find(lobeColors116 == 4);
lobeName116(a,1) = {'Temporal'};
a = find(lobeColors116 == 5);
lobeName116(a,1) = {'Subcortical'};
a = find(lobeColors116 == 6);
lobeName116(a,1) = {'Cerebellum'};

% Regions' names
labels = {'Precentral-L',...
'Precentral-R',...
'Frontal-Sup-L',...
'Frontal-Sup-R',...
'Frontal-Sup-Orb-L',...
'Frontal-Sup-Orb-R',...
'Frontal-Mid-L',...
'Frontal-Mid-R',...
'Frontal-Mid-Orb-L',...
'Frontal-Mid-Orb-R',...
'Frontal-Inf-Oper-L',...
'Frontal-Inf-Oper-R',...
'Frontal-Inf-Tri-L',...
'Frontal-Inf-Tri-R',...
'Frontal-Inf-Orb-L',...
'Frontal-Inf-Orb-R',...
'Rolandic-Oper-L',...
'Rolandic-Oper-R',...
'Supp-Motor-Area-L',...
'Supp-Motor-Area-R',...
'Olfactory-L',...
'Olfactory-R',...
'Frontal-Sup-Medial-L',...
'Frontal-Sup-Medial-R',...
'Frontal-Mid-Orb-L',...
'Frontal-Mid-Orb-R',...
'Rectus-L',...
'Rectus-R',...
'Insula-L',...
'Insula-R',...
'Cingulum-Ant-L',...
'Cingulum-Ant-R',...
'Cingulum-Mid-L',...
'Cingulum-Mid-R',...
'Cingulum-Post-L',...
'Cingulum-Post-R',...
'Hippocampus-L',...
'Hippocampus-R',...
'ParaHippocampal-L',...
'ParaHippocampal-R',...
'Amygdala-L',...
'Amygdala-R',...
'Calcarine-L',...
'Calcarine-R',...
'Cuneus-L',...
'Cuneus-R',...
'Lingual-L',...
'Lingual-R',...
'Occipital-Sup-L',...
'Occipital-Sup-R',...
'Occipital-Mid-L',...
'Occipital-Mid-R',...
'Occipital-Inf-L',...
'Occipital-Inf-R',...
'Fusiform-L',...
'Fusiform-R',...
'Postcentral-L',...
'Postcentral-R',...
'Parietal-Sup-L',...
'Parietal-Sup-R',...
'Parietal-Inf-L',...
'Parietal-Inf-R',...
'SupraMarginal-L',...
'SupraMarginal-R',...
'Angular-L',...
'Angular-R',...
'Precuneus-L',...
'Precuneus-R',...
'Paracentral-Lobule-L',...
'Paracentral-Lobule-R',...
'Caudate-L',...
'Caudate-R',...
'Putamen-L',...
'Putamen-R',...
'Pallidum-L',...
'Pallidum-R',...
'Thalamus-L',...
'Thalamus-R',...
'Heschl-L',...
'Heschl-R',...
'Temporal-Sup-L',...
'Temporal-Sup-R',...
'Temporal-Pole-Sup-L',...
'Temporal-Pole-Sup-R',...
'Temporal-Mid-L',...
'Temporal-Mid-R',...
'Temporal-Pole-Mid-L',...
'Temporal-Pole-Mid-R',...
'Temporal-Inf-L',...
'Temporal-Inf-R',...
'Cerebelum-Crus1-L',...
'Cerebelum-Crus1-R',...
'Cerebelum-Crus2-L',...
'Cerebelum-Crus2-R',...
'Cerebelum-3-L',...
'Cerebelum-3-R',...
'Cerebelum-4-5-L',...
'Cerebelum-4-5-R',...
'Cerebelum-6-L',...
'Cerebelum-6-R',...
'Cerebelum-7b-L',...
'Cerebelum-7b-R',...
'Cerebelum-8-L',...
'Cerebelum-8-R',...
'Cerebelum-9-L',...
'Cerebelum-9-R',...
'Cerebelum-10-L',...
'Cerebelum-10-R',...
'Vermis-1-2',...
'Vermis-3',...
'Vermis-4-5',...
'Vermis-6',...
'Vermis-7',...
'Vermis-8',...
'Vermis-9',...
'Vermis-10'
};
