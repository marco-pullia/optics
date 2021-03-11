% {}~

% template analysis script
% - include Matlab library
pathToLibrary="..\..\..\MatLabTools";
addpath(genpath(pathToLibrary));

opticsFileNames=[...
    "..\extraction_030mm_optics.tfs" ...
    "..\extraction_320mm_optics.tfs" ...
    "..\extraction_030mm_noHbump_optics.tfs" ...
    "..\extraction_320mm_noHbump_optics.tfs" ...
    ];
labels=[...
    "p-30mm" ...
    "p-320mm" ...
    "p-30mm, no H bump" ...
    "p-320mm, no H bump" ...
    ];
geometryFileName="..\extraction_030mm_geometry.tfs";

optics = ParseTfsTable(opticsFileNames,'optics');
[Qx,Qy,Chrx,Chry,Laccel,headerNames,headerValues] = ...
    ParseTfsTableHeader(opticsFileNames);
% read geometry file
geometry = ParseTfsTable(geometryFileName,'geometry');

title="synchro, protons";
CompareOptics(optics,labels,geometry,"BET",title);
% CompareOptics(optics,labels,geometry,"D",title);
% CompareOptics(optics,labels,geometry,"CO",title);
% CompareOptics(optics,labels,geometry,"ENV",title);


