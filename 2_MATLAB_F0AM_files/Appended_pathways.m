% Appended_pathways.m

% The following script contains the manually added species, RO2, and 
% reactions for our Enhanced Model runs (2026)

%{
% ////////////////////////////////
% TO DEFINE "JRI" to initiate 1-iodopentane photolysis...

% CUT+PASTE the following segment into J_BottomUp.m (in Chem > Photolysis)
% after the Initialization step:


i=i+1;
Jnames{i} = 'JRI'; %RI -> RO2 + I
CS{i} = 'Cross_Section_scaled_isopropiodide.txt'; 
QY{i} = 1;


% The remaining code does not need to be moved to any other scripts.
% Simply call upon this file in ChemFiles when running the enhanced model
% (in addition to existing MCM exports for the remaining chemistry)
% ////////////////////////////////
%}


% # of added species = 6
% # of added reactions = 16

SpeciesToAdd = {'C5H11I'; 'C5H10O3'; 'HOOPEBO2'; 'HOO2C5OOH'; 'HOOPEBO'; 'PRODIO'};

RO2ToAdd = {'HOOPEBO2'};

AddSpecies;

% Iodine
i=i+1;
Rnames{i} = 'C5H11I + hv = PEAO2 + I';
k(:,i) = JRI; % as defined by our added absorption cross section file
Gstr{i,1} = 'C5H11I'; 
fC5H11I(i) = -1;  fPEAO2(i) = 1; fI(i) = 1;

i = i + 1;
Rnames{i} = 'I + I = I2';
k(:,i) = 1.27e-12 + 5.43e-13; % Rabinowitch and Wood (1936)
Gstr{i,1} = 'I'; Gstr{i,2} = 'I';
fI(i) = -2;  fI2(i) = 1;

i=i+1; 
Rnames{i} = 'IO + PEAO2 = PRODIO'; % generic lumped product
k(:,i) = 1.4e-10;
Gstr{i,1} = 'IO'; Gstr{i,2} = 'PEAO2';
fIO(i) = -1; fPEAO2(i) = -1; fPRODIO(i) = 1;

i=i+1;
Rnames{i} = 'IO + HO1C5O2 = PRODIO';
k(:,i) = 1.4e-10;
Gstr{i,1} = 'IO'; Gstr{i,2} = 'HO1C5O2';
fIO(i) = -1; fHO1C5O2(i) = -1; fPRODIO(i) = 1;

i=i+1;
Rnames{i} = 'IO + HOOPEBO2 = PRODIO';
k(:,i) = 1.4e-10;
Gstr{i,1} = 'IO'; Gstr{i,2} = 'HOOPEBO2';
fIO(i) = -1; fHOOPEBO2(i) = -1; fPRODIO(i) = 1;

% Organics
i=i+1;
Rnames{i} = 'PEAO2 = HOOPEBO2';
k(:,i) = 2.4e-3;
Gstr{i,1} = 'PEAO2'; 
fPEAO2(i)=fPEAO2(i)-1; fHOOPEBO2(i)=fHOOPEBO2(i)+1;

i=i+1;
Rnames{i} = 'HOOPEBO2 = C5H10O3 + OH';
k(:,i) = 1.01e-3;
Gstr{i,1} = 'HOOPEBO2';
fHOOPEBO2(i)=fHOOPEBO2(i)-1; fC5H10O3(i)=fC5H10O3(i)+1; fOH(i) = fOH(i)+1;

i=i+1;
Rnames{i} = 'HO2 + HOOPEBO2 = HOO2C5OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOOPEBO2'; 
fHO2(i)=fHO2(i)-1; fHOOPEBO2(i)=fHOOPEBO2(i)-1; fHOO2C5OOH(i)=fHOO2C5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HOOPEBO2 + RO2 = HOOPEBO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HOOPEBO2'; Gstr{i,2} = 'RO2';
fHOOPEBO2(i)=fHOOPEBO2(i)-1; fHOOPEBO(i)=fHOOPEBO(i)+1; 

i=i+1;
Rnames{i} = 'HOOPEBO2 + RO2 = C5H10O3';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HOOPEBO2'; Gstr{i,2} = 'RO2';
fHOOPEBO2(i)=fHOOPEBO2(i)-1; fC5H10O3(i)=fC5H10O3(i)+1; 

i=i+1;
Rnames{i} = 'HOOPEBO2 + RO2 = HO2C5OOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HOOPEBO2'; Gstr{i,2} = 'RO2';
fHOOPEBO2(i)=fHOOPEBO2(i)-1; fHO2C5OOH(i)=fHO2C5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 = C5H10O3 + HO2';
k(:,i) = 3.1e-1;
Gstr{i,1} = 'HO1C5O2';
fHO1C5O2(i)=fHO1C5O2(i)-1; fC5H10O3(i)=fC5H10O3(i)+1; fHO2(i)=fHO2(i)+1;

i=i+1;
Rnames{i} = 'HOOPEBO = HO2C4CHO + OH';
k(:,i) = 8.74e11.*exp(-3430./T);
Gstr{i,1} = 'HOOPEBO';
fHOOPEBO(i)=fHOOPEBO(i)-1; fHO2C4CHO(i)=fHO2C4CHO(i)+1; fOH(i)=fOH(i)+1;

i=i+1;
Rnames{i} = 'HOO2C5OOH + OH = HOOPEBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HOO2C5OOH'; Gstr{i,2} = 'OH'; 
fHOO2C5OOH(i)=fHOO2C5OOH(i)-1; fOH(i)=fOH(i)-1; fHOOPEBO2(i)=fHOOPEBO2(i)+1; 

i=i+1;
Rnames{i} = 'HOO2C5OOH + OH = C5H10O3 + OH';
k(:,i) = 2.09e-11;
Gstr{i,1} = 'HOO2C5OOH'; Gstr{i,2} = 'OH'; 
fHOO2C5OOH(i)=fHOO2C5OOH(i)-1; fOH(i)=fOH(i)-1; fC5H10O3(i)=fC5H10O3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOO2C5OOH + hv = HOOPEBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOO2C5OOH'; 
fHOO2C5OOH(i)=fHOO2C5OOH(i)-1; fHOOPEBO(i)=fHOOPEBO(i)+1; fOH(i)=fOH(i)+1; 


%END OF REACTION LIST


