% MCM_PEAO2_HO2C5OOH.m
% generated from exported "PEAO2" and "HO2C5OOH" pathways from MCM
% 20260901
% # of species = 240
% # of reactions = 755

SpeciesToAdd = {...
'O'; 'O3'; 'NO'; 'NO2'; 'NO3'; 'O1D'; 'N2O5'; 'OH'; 'HO2'; 'H2'; ...
'CO'; 'H2O2'; 'HONO'; 'HNO3'; 'HO2NO2'; 'SO2'; 'SO3'; 'HSO3'; 'NA'; 'SA'; ...
'CH3O'; 'CH3O2'; 'CH3NO3'; 'HCHO'; 'CH3O2NO2'; 'CH3OOH'; 'CH3OH'; 'C2H5O'; 'C2H5O2'; 'C2H5NO3'; ...
'CH3CHO'; 'C2H5OOH'; 'C2H5OH'; 'NC3H7O'; 'NC3H7O2'; 'NC3H7NO3'; 'C2H5CHO'; 'NC3H7OOH'; 'NPROPOL'; 'IC3H7O'; ...
'IC3H7O2'; 'IC3H7NO3'; 'CH3COCH3'; 'IC3H7OOH'; 'IPROPOL'; 'NC4H9O'; 'NC4H9O2'; 'NC4H9NO3'; 'C3H7CHO'; 'HO1C4O2'; ...
'HO1C4O'; 'HO1C4NO3'; 'HOC3H6CHO'; 'NC4H9OOH'; 'NBUTOL'; 'HO1C4OOH'; 'HOC4H8OH'; 'HO1C3O2'; 'HOC3H6CO3'; 'HO1C3O'; ...
'HO1C3NO3'; 'HOC2H4CHO'; 'C4PAN1'; 'HOC3H6CO3H'; 'HOC3H6CO2H'; 'HO1C3OOH'; 'HOC3H6OH'; 'HOCH2CH2O2'; 'HOC2H4CO3'; 'C3PAN1'; ...
'HOC2H4CO3H'; 'HOC2H4CO2H'; 'HOCH2CHO'; 'PEAO'; 'PEAO2'; 'PEANO3'; 'HO1C5O2'; 'HO1C5O'; 'HO1C5NO3'; 'HO2C4CHO'; ...
'PEAOOH'; 'C4H9CHO'; 'PEAOH'; 'HO1C5OOH'; 'CO2C5OH'; 'HO2C5OH'; 'HO2C4O2'; 'HO2C4CO3'; 'HO2C4O'; 'HO2C4NO3'; ...
'HO2C3CHO'; 'HO13C4O2'; 'HO13C4O'; 'HO13C4NO3'; 'C5PAN1'; 'HO2C4CO3H'; 'HO2C4CO2H'; 'HO2C4OOH'; 'HO2C4OH'; 'HO13C4OOH'; ...
'HO13C3CHO'; 'HO13C4OH'; 'MEKAOH'; 'HO13C3CO3'; 'C4PAN2'; 'HO13C3CO3H'; 'IPROPOLO2'; 'CO2C3CHO'; 'HO2C3CO3'; 'C4PAN3'; ...
'HO2C3CO3H'; 'HO2C3CO2H'; 'CH3CHOHCHO'; 'HO2C5O'; 'HO2C5O2'; 'HO2C5NO3'; 'HO2C5OOH'; 'CH3CO3'; 'CO2C4CHO'; 'C51O2'; ...
'C51O'; 'C51NO3'; 'C51OOH'; 'HO1CO24C5'; 'C51OH'; 'CH3COCH2O2'; 'HOCH2CO3'; 'CO24C4CHO'; 'CO2C3CO3'; 'MEKAO2'; ...
'CO2C4CO3'; 'C5PAN2'; 'CO2C4CO3H'; 'CO2C4CO2H'; 'HO3C4CHO'; 'HO3C4O2'; 'CO3C4CHO'; 'HO3C4CO3'; 'C5PAN8'; 'HO3C4CO3H'; ...
'HO3C3CHO'; 'MEKCO2'; 'CO3C4CO3'; 'C5PAN16'; 'CO3C4CO3H'; 'CO3C4CO2H'; 'EGLYOX'; 'C2H5CO3'; 'C2H4'; 'HOCH2CH2O'; ...
'ETHOHNO3'; 'HYETHO2H'; 'ETHGLY'; 'GLYOX'; 'PHAN'; 'HOCH2CO3H'; 'HOCH2CO2H'; 'CH2OOA'; 'CH2OO'; 'HCOOH'; ...
'ETHENO3O2'; 'ETHENO3O'; 'NO3CH2CHO'; 'ETHO2HNO3'; 'HCOCH2O'; 'NO3CH2CO3'; 'NO3CH2PAN'; 'NO3CH2CO3H'; 'NO3CH2CO2H'; 'HYPROPO'; ...
'HYPROPO2'; 'PROPOLNO3'; 'HYPROPO2H'; 'PROPGLY'; 'ACETOL'; 'MGLYOX'; 'HO3C4O'; 'HO3C4NO3'; 'HO3C4OOH'; 'NBUTOLAOH'; ...
'HO3C3CO3'; 'HO3C3PAN'; 'HO3C3CO3H'; 'HCOCH2O2'; 'CH3COCH2O'; 'HCOCO'; 'HCOCO3'; 'HCOCO3H'; 'HCOCO2H'; 'PAN'; ...
'CH3CO3H'; 'CH3CO2H'; 'PPN'; 'PERPROACID'; 'PROPACID'; 'C3H7CO3'; 'BUTALO2'; 'PBN'; 'PERBUACID'; 'BUTACID'; ...
'BUTALO'; 'BUTALNO3'; 'BUTALO2H'; 'HCOCH2OOH'; 'C4H9CO3'; 'C4CHOBO2'; 'PPEN'; 'PERPENACID'; 'PENTACID'; 'C4CHOBO'; ...
'C4CHOBNO3'; 'C4CHOBOOH'; 'HYPERACET'; 'MEKAO'; 'MEKANO3'; 'HO1CO3C4O2'; 'HO1CO3C4O'; 'MEKAOOH'; 'HOCO3C4OOH'; 'HO1CO3CHO'; ...
'HO14CO2C4'; 'CO2C3PAN'; 'CO2C3CO3H'; 'MEKCO'; 'MEKCOOH'; 'MEKCOH'; 'IPROPOLO'; 'PROLNO3'; 'IPROPOLO2H'; 'CH3CHOHCO3'; ...
'IPROPOLPAN'; 'IPROPOLPER'; 'NBUTOLAO2'; 'NBUTOLBO2'; 'NBUTOLAO'; 'NBUTOLANO3'; 'NBUTOLAOOH'; 'NBUTOLBO'; 'NBUTOLBNO3'; 'NBUTOLBOOH'; ...
};

RO2ToAdd = {...
'CH3O2'; 'C2H5O2'; 'NC3H7O2'; 'IC3H7O2'; 'NC4H9O2'; 'HO1C4O2'; 'HO1C3O2'; 'HOC3H6CO3'; 'HOCH2CH2O2'; 'HOC2H4CO3'; ...
'PEAO2'; 'HO1C5O2'; 'HO2C4O2'; 'HO2C4CO3'; 'HO13C4O2'; 'HO13C3CO3'; 'IPROPOLO2'; 'HO2C3CO3'; 'HO2C5O2'; 'CH3CO3'; ...
'C51O2'; 'CH3COCH2O2'; 'HOCH2CO3'; 'CO2C3CO3'; 'MEKAO2'; 'CO2C4CO3'; 'HO3C4O2'; 'HO3C4CO3'; 'MEKCO2'; 'CO3C4CO3'; ...
'C2H5CO3'; 'ETHENO3O2'; 'NO3CH2CO3'; 'HYPROPO2'; 'HO3C3CO3'; 'HCOCH2O2'; 'HCOCO3'; 'C3H7CO3'; 'BUTALO2'; 'C4H9CO3'; ...
'C4CHOBO2'; 'HO1CO3C4O2'; 'CH3CHOHCO3'; 'NBUTOLAO2'; 'NBUTOLBO2'; };

AddSpecies

i=i+1;
Rnames{i} = 'O = O3';
k(:,i) = 5.6e-34.*.78.*M.*(T./300).^(-2.6).*.21.*M;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'O = O3';
k(:,i) = 6.0e-34.*.21.*M.*(T./300).^(-2.6).*.21.*M;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'O + O3 = ';
k(:,i) = 8.0e-12.*exp(-2060./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'O3'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)-1; 

i=i+1;
Rnames{i} = 'NO + O = NO2';
k(:,i) = KMT01;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O'; 
fNO(i)=fNO(i)-1; fO(i)=fO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + O = NO';
k(:,i) = 5.5e-12.*exp(188./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O'; 
fNO2(i)=fNO2(i)-1; fO(i)=fO(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + O = NO3';
k(:,i) = KMT02;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O'; 
fNO2(i)=fNO2(i)-1; fO(i)=fO(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'O1D = O';
k(:,i) = 3.2e-11.*exp(67./T).*.21.*M;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'O1D = O';
k(:,i) = 2.0e-11.*exp(130./T).*.78.*M;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'NO + O3 = NO2';
k(:,i) = 1.4e-12.*exp(-1310./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O3'; 
fNO(i)=fNO(i)-1; fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + O3 = NO3';
k(:,i) = 1.4e-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO = NO2 + NO2';
k(:,i) = 3.3e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO3 = NO2 + NO2';
k(:,i) = 1.8e-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + NO3 = NO + NO2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + NO3 = N2O5';
k(:,i) = KMT03;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1;
Rnames{i} = 'O1D = OH + OH';
k(:,i) = 2.14e-10.*H2O;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + OH = HO2';
k(:,i) = 1.70e-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH'; 
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H2 + OH = HO2';
k(:,i) = 7.7e-12.*exp(-2100./T);
Gstr{i,1} = 'H2'; Gstr{i,2} = 'OH'; 
fH2(i)=fH2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO + OH = HO2';
k(:,i) = KMT05;
Gstr{i,1} = 'CO'; Gstr{i,2} = 'OH'; 
fCO(i)=fCO(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H2O2 + OH = HO2';
k(:,i) = 2.9e-12.*exp(-160./T);
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'OH'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + O3 = OH';
k(:,i) = 2.03e-16.*(T./300).^(4.57).*exp(693./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O3'; 
fHO2(i)=fHO2(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + OH = ';
k(:,i) = 4.8e-11.*exp(250./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'OH'; 
fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)-1; 

i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 2.20e-13.*KMT06.*exp(600./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 1.90e-33.*M.*KMT06.*exp(980./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + OH = HONO';
k(:,i) = KMT07;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'OH'; 
fNO(i)=fNO(i)-1; fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + OH = HNO3';
k(:,i) = KMT08;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'OH'; 
fNO2(i)=fNO2(i)-1; fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + OH = HO2 + NO2';
k(:,i) = 2.0e-11;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OH'; 
fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO = NO2 + OH';
k(:,i) = 3.45e-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO2 = HO2NO2';
k(:,i) = KMT09;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHO2NO2(i)=fHO2NO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2NO2 + OH = NO2';
k(:,i) = 3.2e-13.*exp(690./T).*1.0;
Gstr{i,1} = 'HO2NO2'; Gstr{i,2} = 'OH'; 
fHO2NO2(i)=fHO2NO2(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO3 = NO2 + OH';
k(:,i) = 4.0e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3'; 
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HONO + OH = NO2';
k(:,i) = 2.5e-12.*exp(260./T);
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'OH'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 + OH = NO3';
k(:,i) = KMT11;
Gstr{i,1} = 'HNO3'; Gstr{i,2} = 'OH'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'O + SO2 = SO3';
k(:,i) = 4.0e-32.*exp(-1000./T).*M;
Gstr{i,1} = 'O'; Gstr{i,2} = 'SO2'; 
fO(i)=fO(i)-1; fSO2(i)=fSO2(i)-1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + SO2 = HSO3';
k(:,i) = KMT12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'SO2'; 
fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)-1; fHSO3(i)=fHSO3(i)+1; 

i=i+1;
Rnames{i} = 'HSO3 = HO2 + SO3';
k(:,i) = 1.3e-12.*exp(-330./T).*.21.*M;
Gstr{i,1} = 'HSO3'; 
fHSO3(i)=fHSO3(i)-1; fHO2(i)=fHO2(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 = NA';
k(:,i) = 6.00e-06;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fNA(i)=fNA(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = NA + NA';
k(:,i) = 4.00e-04;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNA(i)=fNA(i)+1; fNA(i)=fNA(i)+1; 

i=i+1;
Rnames{i} = 'SO3 = SA';
k(:,i) = 1.20e-15.*H2O;
Gstr{i,1} = 'SO3'; 
fSO3(i)=fSO3(i)-1; fSA(i)=fSA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + hv = O1D';
k(:,i) = J1;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1; 

i=i+1;
Rnames{i} = 'O3 + hv = O';
k(:,i) = J2;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'H2O2 + hv = OH + OH';
k(:,i) = J3;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + hv = NO + O';
k(:,i) = J4;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + hv = NO';
k(:,i) = J5;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + hv = NO2 + O';
k(:,i) = J6;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'HONO + hv = NO + OH';
k(:,i) = J7;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fNO(i)=fNO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 + hv = NO2 + OH';
k(:,i) = J8;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = NO2 + NO3';
k(:,i) = KMT04;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2NO2 = HO2 + NO2';
k(:,i) = KMT10;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO = CH3O + NO2';
k(:,i) = 2.3e-12.*exp(360./T).*0.999;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO'; 
fCH3O2(i)=fCH3O2(i)-1; fNO(i)=fNO(i)-1; fCH3O(i)=fCH3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO = CH3NO3';
k(:,i) = 2.3e-12.*exp(360./T).*0.001;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO'; 
fCH3O2(i)=fCH3O2(i)-1; fNO(i)=fNO(i)-1; fCH3NO3(i)=fCH3NO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3O = HCHO + HO2';
k(:,i) = 7.2e-14.*exp(-1080./T).*.21.*M;
Gstr{i,1} = 'CH3O'; 
fCH3O(i)=fCH3O(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO2 = CH3O2NO2';
k(:,i) = KMT13;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO2'; 
fCH3O2(i)=fCH3O2(i)-1; fNO2(i)=fNO2(i)-1; fCH3O2NO2(i)=fCH3O2NO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2NO2 = CH3O2 + NO2';
k(:,i) = KMT14;
Gstr{i,1} = 'CH3O2NO2'; 
fCH3O2NO2(i)=fCH3O2NO2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO3 = CH3O + NO2';
k(:,i) = 1.2e-12;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO3'; 
fCH3O2(i)=fCH3O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3O(i)=fCH3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + HO2 = CH3OOH';
k(:,i) = 3.8e-13.*exp(780./T).*(1-1./(1+498.*exp(-1160./T)));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'HO2'; 
fCH3O2(i)=fCH3O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3OOH(i)=fCH3OOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = CH3O';
k(:,i) = 2.*KCH3O2.*7.18.*exp(-885./T);
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fCH3O(i)=fCH3O(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = HCHO';
k(:,i) = 2.*KCH3O2.*0.5.*(1-7.18.*exp(-885./T));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = CH3OH';
k(:,i) = 2.*KCH3O2.*0.5.*(1-7.18.*exp(-885./T));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fCH3OH(i)=fCH3OH(i)+1; 

i=i+1;
Rnames{i} = 'CH3NO3 + OH = HCHO + NO2';
k(:,i) = 4.0e-13.*exp(-845./T);
Gstr{i,1} = 'CH3NO3'; Gstr{i,2} = 'OH'; 
fCH3NO3(i)=fCH3NO3(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3NO3 + hv = CH3O + NO2';
k(:,i) = J51;
Gstr{i,1} = 'CH3NO3'; 
fCH3NO3(i)=fCH3NO3(i)-1; fCH3O(i)=fCH3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OOH + OH = CH3O2';
k(:,i) = 5.3e-12.*exp(190./T).*0.6;
Gstr{i,1} = 'CH3OOH'; Gstr{i,2} = 'OH'; 
fCH3OOH(i)=fCH3OOH(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OOH + OH = HCHO + OH';
k(:,i) = 5.3e-12.*exp(190./T).*0.4;
Gstr{i,1} = 'CH3OOH'; Gstr{i,2} = 'OH'; 
fCH3OOH(i)=fCH3OOH(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3OOH + hv = CH3O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3OOH'; 
fCH3OOH(i)=fCH3OOH(i)-1; fCH3O(i)=fCH3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO = C2H5O + NO2';
k(:,i) = 2.55e-12.*exp(380./T).*0.991;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO(i)=fNO(i)-1; fC2H5O(i)=fC2H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO = C2H5NO3';
k(:,i) = 2.55e-12.*exp(380./T).*0.009;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO(i)=fNO(i)-1; fC2H5NO3(i)=fC2H5NO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O = CH3CHO + HO2';
k(:,i) = 2.4e-14.*exp(-325./T).*.21.*M;
Gstr{i,1} = 'C2H5O'; 
fC2H5O(i)=fC2H5O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO3 = C2H5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO3'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO3(i)=fNO3(i)-1; fC2H5O(i)=fC2H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + HO2 = C2H5OOH';
k(:,i) = 4.3e-13.*exp(870./T);
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'HO2'; 
fC2H5O2(i)=fC2H5O2(i)-1; fHO2(i)=fHO2(i)-1; fC2H5OOH(i)=fC2H5OOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = C2H5O';
k(:,i) = 2.*(KCH3O2.*6.4e-14).^(0.5).*0.6;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fC2H5O(i)=fC2H5O(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = CH3CHO';
k(:,i) = 2.*(KCH3O2.*6.4e-14).^(0.5).*0.2;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = C2H5OH';
k(:,i) = 2.*(KCH3O2.*6.4e-14).^(0.5).*0.2;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fC2H5OH(i)=fC2H5OH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5NO3 + OH = CH3CHO + NO2';
k(:,i) = 6.7e-13.*exp(-395./T);
Gstr{i,1} = 'C2H5NO3'; Gstr{i,2} = 'OH'; 
fC2H5NO3(i)=fC2H5NO3(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5NO3 + hv = C2H5O + NO2';
k(:,i) = J52;
Gstr{i,1} = 'C2H5NO3'; 
fC2H5NO3(i)=fC2H5NO3(i)-1; fC2H5O(i)=fC2H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OOH + OH = C2H5O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'C2H5OOH'; Gstr{i,2} = 'OH'; 
fC2H5OOH(i)=fC2H5OOH(i)-1; fOH(i)=fOH(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OOH + OH = CH3CHO + OH';
k(:,i) = 8.01e-12;
Gstr{i,1} = 'C2H5OOH'; Gstr{i,2} = 'OH'; 
fC2H5OOH(i)=fC2H5OOH(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OOH + hv = C2H5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C2H5OOH'; 
fC2H5OOH(i)=fC2H5OOH(i)-1; fC2H5O(i)=fC2H5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + NO = NC3H7O + NO2';
k(:,i) = 2.9e-12.*exp(350./T).*0.980;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'NO'; 
fNC3H7O2(i)=fNC3H7O2(i)-1; fNO(i)=fNO(i)-1; fNC3H7O(i)=fNC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + NO = NC3H7NO3';
k(:,i) = 2.9e-12.*exp(350./T).*0.020;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'NO'; 
fNC3H7O2(i)=fNC3H7O2(i)-1; fNO(i)=fNO(i)-1; fNC3H7NO3(i)=fNC3H7NO3(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O = C2H5CHO + HO2';
k(:,i) = 2.6e-14.*exp(-255./T).*.21.*M;
Gstr{i,1} = 'NC3H7O'; 
fNC3H7O(i)=fNC3H7O(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + NO3 = NC3H7O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'NO3'; 
fNC3H7O2(i)=fNC3H7O2(i)-1; fNO3(i)=fNO3(i)-1; fNC3H7O(i)=fNC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NC3H7O2 = NC3H7OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NC3H7O2'; 
fHO2(i)=fHO2(i)-1; fNC3H7O2(i)=fNC3H7O2(i)-1; fNC3H7OOH(i)=fNC3H7OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + RO2 = NC3H7O';
k(:,i) = 2.*(K298CH3O2.*3e-13).^(0.5).*0.6;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'RO2';
fNC3H7O2(i)=fNC3H7O2(i)-1; fNC3H7O(i)=fNC3H7O(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + RO2 = C2H5CHO';
k(:,i) = 2.*(K298CH3O2.*3e-13).^(0.5).*0.2;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'RO2';
fNC3H7O2(i)=fNC3H7O2(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7O2 + RO2 = NPROPOL';
k(:,i) = 2.*(K298CH3O2.*3e-13).^(0.5).*0.2;
Gstr{i,1} = 'NC3H7O2'; Gstr{i,2} = 'RO2';
fNC3H7O2(i)=fNC3H7O2(i)-1; fNPROPOL(i)=fNPROPOL(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7NO3 + OH = C2H5CHO + NO2';
k(:,i) = 5.8e-13;
Gstr{i,1} = 'NC3H7NO3'; Gstr{i,2} = 'OH'; 
fNC3H7NO3(i)=fNC3H7NO3(i)-1; fOH(i)=fOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7NO3 + hv = NC3H7O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'NC3H7NO3'; 
fNC3H7NO3(i)=fNC3H7NO3(i)-1; fNC3H7O(i)=fNC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7OOH + OH = NC3H7O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NC3H7OOH'; Gstr{i,2} = 'OH'; 
fNC3H7OOH(i)=fNC3H7OOH(i)-1; fOH(i)=fOH(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7OOH + OH = C2H5CHO + OH';
k(:,i) = 1.10e-11;
Gstr{i,1} = 'NC3H7OOH'; Gstr{i,2} = 'OH'; 
fNC3H7OOH(i)=fNC3H7OOH(i)-1; fOH(i)=fOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC3H7OOH + hv = NC3H7O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC3H7OOH'; 
fNC3H7OOH(i)=fNC3H7OOH(i)-1; fNC3H7O(i)=fNC3H7O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + NO = IC3H7O + NO2';
k(:,i) = 2.7e-12.*exp(360./T).*0.958;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'NO'; 
fIC3H7O2(i)=fIC3H7O2(i)-1; fNO(i)=fNO(i)-1; fIC3H7O(i)=fIC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + NO = IC3H7NO3';
k(:,i) = 2.7e-12.*exp(360./T).*0.042;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'NO'; 
fIC3H7O2(i)=fIC3H7O2(i)-1; fNO(i)=fNO(i)-1; fIC3H7NO3(i)=fIC3H7NO3(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O = CH3COCH3 + HO2';
k(:,i) = 1.5e-14.*exp(-230./T).*.21.*M;
Gstr{i,1} = 'IC3H7O'; 
fIC3H7O(i)=fIC3H7O(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + NO3 = IC3H7O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'NO3'; 
fIC3H7O2(i)=fIC3H7O2(i)-1; fNO3(i)=fNO3(i)-1; fIC3H7O(i)=fIC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + IC3H7O2 = IC3H7OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'IC3H7O2'; 
fHO2(i)=fHO2(i)-1; fIC3H7O2(i)=fIC3H7O2(i)-1; fIC3H7OOH(i)=fIC3H7OOH(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + RO2 = IC3H7O';
k(:,i) = 2.*(KCH3O2.*1.6e-12.*exp(-2200./T)).^(0.5).*0.6;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'RO2';
fIC3H7O2(i)=fIC3H7O2(i)-1; fIC3H7O(i)=fIC3H7O(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + RO2 = CH3COCH3';
k(:,i) = 2.*(KCH3O2.*1.6e-12.*exp(-2200./T)).^(0.5).*0.2;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'RO2';
fIC3H7O2(i)=fIC3H7O2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7O2 + RO2 = IPROPOL';
k(:,i) = 2.*(KCH3O2.*1.6e-12.*exp(-2200./T)).^(0.5).*0.2;
Gstr{i,1} = 'IC3H7O2'; Gstr{i,2} = 'RO2';
fIC3H7O2(i)=fIC3H7O2(i)-1; fIPROPOL(i)=fIPROPOL(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7NO3 + OH = CH3COCH3 + NO2';
k(:,i) = 6.2e-13.*exp(-230./T);
Gstr{i,1} = 'IC3H7NO3'; Gstr{i,2} = 'OH'; 
fIC3H7NO3(i)=fIC3H7NO3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7NO3 + hv = IC3H7O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'IC3H7NO3'; 
fIC3H7NO3(i)=fIC3H7NO3(i)-1; fIC3H7O(i)=fIC3H7O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7OOH + OH = IC3H7O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'IC3H7OOH'; Gstr{i,2} = 'OH'; 
fIC3H7OOH(i)=fIC3H7OOH(i)-1; fOH(i)=fOH(i)-1; fIC3H7O2(i)=fIC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7OOH + OH = CH3COCH3 + OH';
k(:,i) = 1.66e-11;
Gstr{i,1} = 'IC3H7OOH'; Gstr{i,2} = 'OH'; 
fIC3H7OOH(i)=fIC3H7OOH(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IC3H7OOH + hv = IC3H7O + OH';
k(:,i) = J41;
Gstr{i,1} = 'IC3H7OOH'; 
fIC3H7OOH(i)=fIC3H7OOH(i)-1; fIC3H7O(i)=fIC3H7O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + NO = NC4H9O + NO2';
k(:,i) = KRO2NO.*0.967;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'NO'; 
fNC4H9O2(i)=fNC4H9O2(i)-1; fNO(i)=fNO(i)-1; fNC4H9O(i)=fNC4H9O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + NO = NC4H9NO3';
k(:,i) = KRO2NO.*0.033;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'NO'; 
fNC4H9O2(i)=fNC4H9O2(i)-1; fNO(i)=fNO(i)-1; fNC4H9NO3(i)=fNC4H9NO3(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O = C3H7CHO + HO2';
k(:,i) = 8.9e-14.*exp(-550./T).*.21.*M;
Gstr{i,1} = 'NC4H9O'; 
fNC4H9O(i)=fNC4H9O(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O = HO1C4O2';
k(:,i) = 4.6D10.*exp(-3570./T);
Gstr{i,1} = 'NC4H9O'; 
fNC4H9O(i)=fNC4H9O(i)-1; fHO1C4O2(i)=fHO1C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + NO = HO1C4O + NO2';
k(:,i) = KRO2NO.*0.987;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'NO'; 
fHO1C4O2(i)=fHO1C4O2(i)-1; fNO(i)=fNO(i)-1; fHO1C4O(i)=fHO1C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + NO = HO1C4NO3';
k(:,i) = KRO2NO.*0.013;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'NO'; 
fHO1C4O2(i)=fHO1C4O2(i)-1; fNO(i)=fNO(i)-1; fHO1C4NO3(i)=fHO1C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O = HO2 + HOC3H6CHO';
k(:,i) = 8.74e11.*exp(-3430./T);
Gstr{i,1} = 'HO1C4O'; 
fHO1C4O(i)=fHO1C4O(i)-1; fHO2(i)=fHO2(i)+1; fHOC3H6CHO(i)=fHOC3H6CHO(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + NO3 = NC4H9O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'NO3'; 
fNC4H9O2(i)=fNC4H9O2(i)-1; fNO3(i)=fNO3(i)-1; fNC4H9O(i)=fNC4H9O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NC4H9O2 = NC4H9OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NC4H9O2'; 
fHO2(i)=fHO2(i)-1; fNC4H9O2(i)=fNC4H9O2(i)-1; fNC4H9OOH(i)=fNC4H9OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + RO2 = NC4H9O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'RO2';
fNC4H9O2(i)=fNC4H9O2(i)-1; fNC4H9O(i)=fNC4H9O(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + RO2 = C3H7CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'RO2';
fNC4H9O2(i)=fNC4H9O2(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9O2 + RO2 = NBUTOL';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'NC4H9O2'; Gstr{i,2} = 'RO2';
fNC4H9O2(i)=fNC4H9O2(i)-1; fNBUTOL(i)=fNBUTOL(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + NO3 = HO1C4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'NO3'; 
fHO1C4O2(i)=fHO1C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHO1C4O(i)=fHO1C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + HO2 = HO1C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'HO2'; 
fHO1C4O2(i)=fHO1C4O2(i)-1; fHO2(i)=fHO2(i)-1; fHO1C4OOH(i)=fHO1C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + RO2 = HO1C4O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'RO2';
fHO1C4O2(i)=fHO1C4O2(i)-1; fHO1C4O(i)=fHO1C4O(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + RO2 = HOC3H6CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'RO2';
fHO1C4O2(i)=fHO1C4O2(i)-1; fHOC3H6CHO(i)=fHOC3H6CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4O2 + RO2 = HOC4H8OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO1C4O2'; Gstr{i,2} = 'RO2';
fHO1C4O2(i)=fHO1C4O2(i)-1; fHOC4H8OH(i)=fHOC4H8OH(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9NO3 + OH = C3H7CHO + NO2';
k(:,i) = 1.6e-12;
Gstr{i,1} = 'NC4H9NO3'; Gstr{i,2} = 'OH'; 
fNC4H9NO3(i)=fNC4H9NO3(i)-1; fOH(i)=fOH(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9NO3 + hv = NC4H9O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'NC4H9NO3'; 
fNC4H9NO3(i)=fNC4H9NO3(i)-1; fNC4H9O(i)=fNC4H9O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4NO3 + OH = HOC3H6CHO + NO2';
k(:,i) = 5.85e-12;
Gstr{i,1} = 'HO1C4NO3'; Gstr{i,2} = 'OH'; 
fHO1C4NO3(i)=fHO1C4NO3(i)-1; fOH(i)=fOH(i)-1; fHOC3H6CHO(i)=fHOC3H6CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4NO3 + hv = HO1C4O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HO1C4NO3'; 
fHO1C4NO3(i)=fHO1C4NO3(i)-1; fHO1C4O(i)=fHO1C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9OOH + OH = NC4H9O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NC4H9OOH'; Gstr{i,2} = 'OH'; 
fNC4H9OOH(i)=fNC4H9OOH(i)-1; fOH(i)=fOH(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9OOH + OH = C3H7CHO + OH';
k(:,i) = 1.24e-11;
Gstr{i,1} = 'NC4H9OOH'; Gstr{i,2} = 'OH'; 
fNC4H9OOH(i)=fNC4H9OOH(i)-1; fOH(i)=fOH(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC4H9OOH + hv = NC4H9O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC4H9OOH'; 
fNC4H9OOH(i)=fNC4H9OOH(i)-1; fNC4H9O(i)=fNC4H9O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4OOH + OH = HO1C4O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HO1C4OOH'; Gstr{i,2} = 'OH'; 
fHO1C4OOH(i)=fHO1C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO1C4O2(i)=fHO1C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4OOH + OH = HOC3H6CHO + OH';
k(:,i) = 1.66e-11;
Gstr{i,1} = 'HO1C4OOH'; Gstr{i,2} = 'OH'; 
fHO1C4OOH(i)=fHO1C4OOH(i)-1; fOH(i)=fOH(i)-1; fHOC3H6CHO(i)=fHOC3H6CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C4OOH + hv = HO1C4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO1C4OOH'; 
fHO1C4OOH(i)=fHO1C4OOH(i)-1; fHO1C4O(i)=fHO1C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOC4H8OH + OH = HO2 + HOC3H6CHO';
k(:,i) = 1.11e-11;
Gstr{i,1} = 'HOC4H8OH'; Gstr{i,2} = 'OH'; 
fHOC4H8OH(i)=fHOC4H8OH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fHOC3H6CHO(i)=fHOC3H6CHO(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CHO + hv = CO + HO1C3O2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HOC3H6CHO'; 
fHOC3H6CHO(i)=fHOC3H6CHO(i)-1; fCO(i)=fCO(i)+1; fHO1C3O2(i)=fHO1C3O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CHO + OH = HOC3H6CO3';
k(:,i) = 2.64e-11;
Gstr{i,1} = 'HOC3H6CHO'; Gstr{i,2} = 'OH'; 
fHOC3H6CHO(i)=fHOC3H6CHO(i)-1; fOH(i)=fOH(i)-1; fHOC3H6CO3(i)=fHOC3H6CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CHO + NO3 = HNO3 + HOC3H6CO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'HOC3H6CHO'; Gstr{i,2} = 'NO3'; 
fHOC3H6CHO(i)=fHOC3H6CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHOC3H6CO3(i)=fHOC3H6CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + NO = HO1C3O2 + NO2';
k(:,i) = KAPNO.*4.0;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'NO'; 
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fNO(i)=fNO(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + NO = HO1C3O + NO2';
k(:,i) = KRO2NO.*0.981;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'NO'; 
fHO1C3O2(i)=fHO1C3O2(i)-1; fNO(i)=fNO(i)-1; fHO1C3O(i)=fHO1C3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + NO = HO1C3NO3';
k(:,i) = KRO2NO.*0.019;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'NO'; 
fHO1C3O2(i)=fHO1C3O2(i)-1; fNO(i)=fNO(i)-1; fHO1C3NO3(i)=fHO1C3NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O = HO2 + HOC2H4CHO';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'HO1C3O'; 
fHO1C3O(i)=fHO1C3O(i)-1; fHO2(i)=fHO2(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + NO2 = C4PAN1';
k(:,i) = KFPAN;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'NO2'; 
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN1(i)=fC4PAN1(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN1 = HOC3H6CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN1'; 
fC4PAN1(i)=fC4PAN1(i)-1; fHOC3H6CO3(i)=fHOC3H6CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + NO3 = HO1C3O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'NO3'; 
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOC3H6CO3 = HOC3H6CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOC3H6CO3'; 
fHO2(i)=fHO2(i)-1; fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fHOC3H6CO3H(i)=fHOC3H6CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOC3H6CO3 = HOC3H6CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOC3H6CO3'; 
fHO2(i)=fHO2(i)-1; fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fHOC3H6CO2H(i)=fHOC3H6CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + RO2 = HO1C3O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'RO2';
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3 + RO2 = HOC3H6CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HOC3H6CO3'; Gstr{i,2} = 'RO2';
fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fHOC3H6CO2H(i)=fHOC3H6CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + NO3 = HO1C3O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'NO3'; 
fHO1C3O2(i)=fHO1C3O2(i)-1; fNO3(i)=fNO3(i)-1; fHO1C3O(i)=fHO1C3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + HO2 = HO1C3OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'HO2'; 
fHO1C3O2(i)=fHO1C3O2(i)-1; fHO2(i)=fHO2(i)-1; fHO1C3OOH(i)=fHO1C3OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + RO2 = HO1C3O';
k(:,i) = 6.00e-13.*0.6;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'RO2';
fHO1C3O2(i)=fHO1C3O2(i)-1; fHO1C3O(i)=fHO1C3O(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + RO2 = HOC2H4CHO';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'RO2';
fHO1C3O2(i)=fHO1C3O2(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3O2 + RO2 = HOC3H6OH';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'HO1C3O2'; Gstr{i,2} = 'RO2';
fHO1C3O2(i)=fHO1C3O2(i)-1; fHOC3H6OH(i)=fHOC3H6OH(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN1 + OH = CO + HOC2H4CHO + NO2';
k(:,i) = 5.92e-12;
Gstr{i,1} = 'C4PAN1'; Gstr{i,2} = 'OH'; 
fC4PAN1(i)=fC4PAN1(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3NO3 + OH = HOC2H4CHO + NO2';
k(:,i) = 4.44e-12;
Gstr{i,1} = 'HO1C3NO3'; Gstr{i,2} = 'OH'; 
fHO1C3NO3(i)=fHO1C3NO3(i)-1; fOH(i)=fOH(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3NO3 + hv = HO1C3O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HO1C3NO3'; 
fHO1C3NO3(i)=fHO1C3NO3(i)-1; fHO1C3O(i)=fHO1C3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3H + OH = HOC3H6CO3';
k(:,i) = 1.31e-11;
Gstr{i,1} = 'HOC3H6CO3H'; Gstr{i,2} = 'OH'; 
fHOC3H6CO3H(i)=fHOC3H6CO3H(i)-1; fOH(i)=fOH(i)-1; fHOC3H6CO3(i)=fHOC3H6CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO3H + hv = HO1C3O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOC3H6CO3H'; 
fHOC3H6CO3H(i)=fHOC3H6CO3H(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6CO2H + OH = HO1C3O2';
k(:,i) = 9.64e-12;
Gstr{i,1} = 'HOC3H6CO2H'; Gstr{i,2} = 'OH'; 
fHOC3H6CO2H(i)=fHOC3H6CO2H(i)-1; fOH(i)=fOH(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3OOH + OH = HO1C3O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HO1C3OOH'; Gstr{i,2} = 'OH'; 
fHO1C3OOH(i)=fHO1C3OOH(i)-1; fOH(i)=fOH(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3OOH + OH = HOC2H4CHO + OH';
k(:,i) = 1.52e-11;
Gstr{i,1} = 'HO1C3OOH'; Gstr{i,2} = 'OH'; 
fHO1C3OOH(i)=fHO1C3OOH(i)-1; fOH(i)=fOH(i)-1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C3OOH + hv = HO1C3O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO1C3OOH'; 
fHO1C3OOH(i)=fHO1C3OOH(i)-1; fHO1C3O(i)=fHO1C3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOC3H6OH + OH = HO2 + HOC2H4CHO';
k(:,i) = 9.73e-12;
Gstr{i,1} = 'HOC3H6OH'; Gstr{i,2} = 'OH'; 
fHOC3H6OH(i)=fHOC3H6OH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CHO + hv = CO + HO2 + HOCH2CH2O2';
k(:,i) = J15;
Gstr{i,1} = 'HOC2H4CHO'; 
fHOC2H4CHO(i)=fHOC2H4CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CHO + OH = HOC2H4CO3';
k(:,i) = 3.06e-11;
Gstr{i,1} = 'HOC2H4CHO'; Gstr{i,2} = 'OH'; 
fHOC2H4CHO(i)=fHOC2H4CHO(i)-1; fOH(i)=fOH(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CHO + NO3 = HNO3 + HOC2H4CO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'HOC2H4CHO'; Gstr{i,2} = 'NO3'; 
fHOC2H4CHO(i)=fHOC2H4CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + NO = HOCH2CH2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'NO'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fNO(i)=fNO(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + NO2 = C3PAN1';
k(:,i) = KFPAN;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'NO2'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC3PAN1(i)=fC3PAN1(i)+1; 

i=i+1;
Rnames{i} = 'C3PAN1 = HOC2H4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C3PAN1'; 
fC3PAN1(i)=fC3PAN1(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + NO3 = HOCH2CH2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'NO3'; 
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOC2H4CO3 = HOC2H4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOC2H4CO3'; 
fHO2(i)=fHO2(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHOC2H4CO3H(i)=fHOC2H4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOC2H4CO3 = HOC2H4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOC2H4CO3'; 
fHO2(i)=fHO2(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHOC2H4CO2H(i)=fHOC2H4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + RO2 = HOCH2CH2O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'RO2';
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3 + RO2 = HOC2H4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HOC2H4CO3'; Gstr{i,2} = 'RO2';
fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHOC2H4CO2H(i)=fHOC2H4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C3PAN1 + OH = CO + HOCH2CHO + NO2';
k(:,i) = 4.51e-12;
Gstr{i,1} = 'C3PAN1'; Gstr{i,2} = 'OH'; 
fC3PAN1(i)=fC3PAN1(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3H + OH = HOC2H4CO3';
k(:,i) = 1.73e-11;
Gstr{i,1} = 'HOC2H4CO3H'; Gstr{i,2} = 'OH'; 
fHOC2H4CO3H(i)=fHOC2H4CO3H(i)-1; fOH(i)=fOH(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO3H + hv = HOCH2CH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOC2H4CO3H'; 
fHOC2H4CO3H(i)=fHOC2H4CO3H(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOC2H4CO2H + OH = HOCH2CH2O2';
k(:,i) = 1.39e-11;
Gstr{i,1} = 'HOC2H4CO2H'; Gstr{i,2} = 'OH'; 
fHOC2H4CO2H(i)=fHOC2H4CO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NO + PEAO2 = NO2 + PEAO';
k(:,i) = KRO2NO.*0.948;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'PEAO2'; 
fNO(i)=fNO(i)-1; fPEAO2(i)=fPEAO2(i)-1; fNO2(i)=fNO2(i)+1; fPEAO(i)=fPEAO(i)+1; 

i=i+1;
Rnames{i} = 'NO + PEAO2 = PEANO3';
k(:,i) = KRO2NO.*0.052;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'PEAO2'; 
fNO(i)=fNO(i)-1; fPEAO2(i)=fPEAO2(i)-1; fPEANO3(i)=fPEANO3(i)+1; 

i=i+1;
Rnames{i} = 'PEAO = HO1C5O2';
k(:,i) = 2.03e11.*exp(-3430./T);
Gstr{i,1} = 'PEAO'; 
fPEAO(i)=fPEAO(i)-1; fHO1C5O2(i)=fHO1C5O2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + NO = HO1C5O + NO2';
k(:,i) = KRO2NO.*0.948;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'NO'; 
fHO1C5O2(i)=fHO1C5O2(i)-1; fNO(i)=fNO(i)-1; fHO1C5O(i)=fHO1C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + NO = HO1C5NO3';
k(:,i) = KRO2NO.*0.052;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'NO'; 
fHO1C5O2(i)=fHO1C5O2(i)-1; fNO(i)=fNO(i)-1; fHO1C5NO3(i)=fHO1C5NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O = HO2 + HO2C4CHO';
k(:,i) = 8.74e11.*exp(-3430./T);
Gstr{i,1} = 'HO1C5O'; 
fHO1C5O(i)=fHO1C5O(i)-1; fHO2(i)=fHO2(i)+1; fHO2C4CHO(i)=fHO2C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + PEAO2 = NO2 + PEAO';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'PEAO2'; 
fNO3(i)=fNO3(i)-1; fPEAO2(i)=fPEAO2(i)-1; fNO2(i)=fNO2(i)+1; fPEAO(i)=fPEAO(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + PEAO2 = PEAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'PEAO2'; 
fHO2(i)=fHO2(i)-1; fPEAO2(i)=fPEAO2(i)-1; fPEAOOH(i)=fPEAOOH(i)+1; 

i=i+1;
Rnames{i} = 'PEAO2 + RO2 = PEAO';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'PEAO2'; Gstr{i,2} = 'RO2';
fPEAO2(i)=fPEAO2(i)-1; fPEAO(i)=fPEAO(i)+1; 

i=i+1;
Rnames{i} = 'PEAO2 + RO2 = C4H9CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'PEAO2'; Gstr{i,2} = 'RO2';
fPEAO2(i)=fPEAO2(i)-1; fC4H9CHO(i)=fC4H9CHO(i)+1; 

i=i+1;
Rnames{i} = 'PEAO2 + RO2 = PEAOH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'PEAO2'; Gstr{i,2} = 'RO2';
fPEAO2(i)=fPEAO2(i)-1; fPEAOH(i)=fPEAOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + NO3 = HO1C5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'NO3'; 
fHO1C5O2(i)=fHO1C5O2(i)-1; fNO3(i)=fNO3(i)-1; fHO1C5O(i)=fHO1C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + HO2 = HO1C5OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'HO2'; 
fHO1C5O2(i)=fHO1C5O2(i)-1; fHO2(i)=fHO2(i)-1; fHO1C5OOH(i)=fHO1C5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + RO2 = HO1C5O';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'RO2';
fHO1C5O2(i)=fHO1C5O2(i)-1; fHO1C5O(i)=fHO1C5O(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + RO2 = CO2C5OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'RO2';
fHO1C5O2(i)=fHO1C5O2(i)-1; fCO2C5OH(i)=fCO2C5OH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5O2 + RO2 = HO2C5OH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'HO1C5O2'; Gstr{i,2} = 'RO2';
fHO1C5O2(i)=fHO1C5O2(i)-1; fHO2C5OH(i)=fHO2C5OH(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEANO3 = C4H9CHO + NO2';
k(:,i) = 3.00e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEANO3'; 
fOH(i)=fOH(i)-1; fPEANO3(i)=fPEANO3(i)-1; fC4H9CHO(i)=fC4H9CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PEANO3 + hv = NO2 + PEAO';
k(:,i) = J53;
Gstr{i,1} = 'PEANO3'; 
fPEANO3(i)=fPEANO3(i)-1; fNO2(i)=fNO2(i)+1; fPEAO(i)=fPEAO(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5NO3 + OH = CO2C5OH + NO2';
k(:,i) = 5.93e-12;
Gstr{i,1} = 'HO1C5NO3'; Gstr{i,2} = 'OH'; 
fHO1C5NO3(i)=fHO1C5NO3(i)-1; fOH(i)=fOH(i)-1; fCO2C5OH(i)=fCO2C5OH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5NO3 + hv = HO1C5O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HO1C5NO3'; 
fHO1C5NO3(i)=fHO1C5NO3(i)-1; fHO1C5O(i)=fHO1C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEAOOH = PEAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEAOOH'; 
fOH(i)=fOH(i)-1; fPEAOOH(i)=fPEAOOH(i)-1; fPEAO2(i)=fPEAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEAOOH = C4H9CHO + OH';
k(:,i) = 1.41e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEAOOH'; 
fOH(i)=fOH(i)-1; fPEAOOH(i)=fPEAOOH(i)-1; fC4H9CHO(i)=fC4H9CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PEAOOH + hv = OH + PEAO';
k(:,i) = J41;
Gstr{i,1} = 'PEAOOH'; 
fPEAOOH(i)=fPEAOOH(i)-1; fOH(i)=fOH(i)+1; fPEAO(i)=fPEAO(i)+1; 

i=i+1;
Rnames{i} = 'OH + PEAOH = C4H9CHO + HO2';
k(:,i) = 8.57e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PEAOH'; 
fOH(i)=fOH(i)-1; fPEAOH(i)=fPEAOH(i)-1; fC4H9CHO(i)=fC4H9CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5OOH + OH = CO2C5OH + OH';
k(:,i) = 3.08e-11;
Gstr{i,1} = 'HO1C5OOH'; Gstr{i,2} = 'OH'; 
fHO1C5OOH(i)=fHO1C5OOH(i)-1; fOH(i)=fOH(i)-1; fCO2C5OH(i)=fCO2C5OH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1C5OOH + hv = HO1C5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO1C5OOH'; 
fHO1C5OOH(i)=fHO1C5OOH(i)-1; fHO1C5O(i)=fHO1C5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CHO + hv = CO + HO2 + HO2C4O2';
k(:,i) = J15;
Gstr{i,1} = 'HO2C4CHO'; 
fHO2C4CHO(i)=fHO2C4CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2C4O2(i)=fHO2C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CHO + OH = HO2C4CO3';
k(:,i) = 3.09e-11;
Gstr{i,1} = 'HO2C4CHO'; Gstr{i,2} = 'OH'; 
fHO2C4CHO(i)=fHO2C4CHO(i)-1; fOH(i)=fOH(i)-1; fHO2C4CO3(i)=fHO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CHO + NO3 = HNO3 + HO2C4CO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'HO2C4CHO'; Gstr{i,2} = 'NO3'; 
fHO2C4CHO(i)=fHO2C4CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2C4CO3(i)=fHO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + NO = HO2C4O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'NO'; 
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fNO(i)=fNO(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + NO = HO2C4O + NO2';
k(:,i) = KRO2NO.*0.967;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'NO'; 
fHO2C4O2(i)=fHO2C4O2(i)-1; fNO(i)=fNO(i)-1; fHO2C4O(i)=fHO2C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + NO = HO2C4NO3';
k(:,i) = KRO2NO.*0.033;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'NO'; 
fHO2C4O2(i)=fHO2C4O2(i)-1; fNO(i)=fNO(i)-1; fHO2C4NO3(i)=fHO2C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O = HO2 + HO2C3CHO';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'HO2C4O'; 
fHO2C4O(i)=fHO2C4O(i)-1; fHO2(i)=fHO2(i)+1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O = HO13C4O2';
k(:,i) = 3.05e11.*exp(-4240./T);
Gstr{i,1} = 'HO2C4O'; 
fHO2C4O(i)=fHO2C4O(i)-1; fHO13C4O2(i)=fHO13C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + NO = HO13C4O + NO2';
k(:,i) = KRO2NO.*0.993;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'NO'; 
fHO13C4O2(i)=fHO13C4O2(i)-1; fNO(i)=fNO(i)-1; fHO13C4O(i)=fHO13C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + NO = HO13C4NO3';
k(:,i) = KRO2NO.*0.007;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'NO'; 
fHO13C4O2(i)=fHO13C4O2(i)-1; fNO(i)=fNO(i)-1; fHO13C4NO3(i)=fHO13C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O = HCHO + HO2 + HOC2H4CHO';
k(:,i) = 2.00e14.*exp(-5538./T);
Gstr{i,1} = 'HO13C4O'; 
fHO13C4O(i)=fHO13C4O(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + NO2 = C5PAN1';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'NO2'; 
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN1(i)=fC5PAN1(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN1 = HO2C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN1'; 
fC5PAN1(i)=fC5PAN1(i)-1; fHO2C4CO3(i)=fHO2C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + NO3 = HO2C4O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'NO3'; 
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2C4CO3 = HO2C4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2C4CO3'; 
fHO2(i)=fHO2(i)-1; fHO2C4CO3(i)=fHO2C4CO3(i)-1; fHO2C4CO3H(i)=fHO2C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2C4CO3 = HO2C4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2C4CO3'; 
fHO2(i)=fHO2(i)-1; fHO2C4CO3(i)=fHO2C4CO3(i)-1; fHO2C4CO2H(i)=fHO2C4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + RO2 = HO2C4O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'RO2';
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3 + RO2 = HO2C4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HO2C4CO3'; Gstr{i,2} = 'RO2';
fHO2C4CO3(i)=fHO2C4CO3(i)-1; fHO2C4CO2H(i)=fHO2C4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + NO3 = HO2C4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'NO3'; 
fHO2C4O2(i)=fHO2C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHO2C4O(i)=fHO2C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2C4O2 = HO2C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2C4O2'; 
fHO2(i)=fHO2(i)-1; fHO2C4O2(i)=fHO2C4O2(i)-1; fHO2C4OOH(i)=fHO2C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + RO2 = HO2C4O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'RO2';
fHO2C4O2(i)=fHO2C4O2(i)-1; fHO2C4O(i)=fHO2C4O(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + RO2 = HO2C3CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'RO2';
fHO2C4O2(i)=fHO2C4O2(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4O2 + RO2 = HO2C4OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO2C4O2'; Gstr{i,2} = 'RO2';
fHO2C4O2(i)=fHO2C4O2(i)-1; fHO2C4OH(i)=fHO2C4OH(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + NO3 = HO13C4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'NO3'; 
fHO13C4O2(i)=fHO13C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHO13C4O(i)=fHO13C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + HO2 = HO13C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'HO2'; 
fHO13C4O2(i)=fHO13C4O2(i)-1; fHO2(i)=fHO2(i)-1; fHO13C4OOH(i)=fHO13C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + RO2 = HO13C4O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'RO2';
fHO13C4O2(i)=fHO13C4O2(i)-1; fHO13C4O(i)=fHO13C4O(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + RO2 = HO13C3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'RO2';
fHO13C4O2(i)=fHO13C4O2(i)-1; fHO13C3CHO(i)=fHO13C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4O2 + RO2 = HO13C4OH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO13C4O2'; Gstr{i,2} = 'RO2';
fHO13C4O2(i)=fHO13C4O2(i)-1; fHO13C4OH(i)=fHO13C4OH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4NO3 + OH = HO2C3CHO + NO2';
k(:,i) = 8.93e-12;
Gstr{i,1} = 'HO2C4NO3'; Gstr{i,2} = 'OH'; 
fHO2C4NO3(i)=fHO2C4NO3(i)-1; fOH(i)=fOH(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4NO3 + hv = HO2C4O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'HO2C4NO3'; 
fHO2C4NO3(i)=fHO2C4NO3(i)-1; fHO2C4O(i)=fHO2C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4NO3 + OH = HO13C3CHO + NO2';
k(:,i) = 7.29e-12;
Gstr{i,1} = 'HO13C4NO3'; Gstr{i,2} = 'OH'; 
fHO13C4NO3(i)=fHO13C4NO3(i)-1; fOH(i)=fOH(i)-1; fHO13C3CHO(i)=fHO13C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4OOH + OH = HO2C4O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HO2C4OOH'; Gstr{i,2} = 'OH'; 
fHO2C4OOH(i)=fHO2C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4OOH + OH = HO2C3CHO + OH';
k(:,i) = 1.97e-11;
Gstr{i,1} = 'HO2C4OOH'; Gstr{i,2} = 'OH'; 
fHO2C4OOH(i)=fHO2C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4OOH + hv = HO2C4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO2C4OOH'; 
fHO2C4OOH(i)=fHO2C4OOH(i)-1; fHO2C4O(i)=fHO2C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4OH + OH = HO2 + MEKAOH';
k(:,i) = 1.42e-11;
Gstr{i,1} = 'HO2C4OH'; Gstr{i,2} = 'OH'; 
fHO2C4OH(i)=fHO2C4OH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fMEKAOH(i)=fMEKAOH(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN1 + OH = CO + HO2C3CHO + NO2';
k(:,i) = 1.04e-11;
Gstr{i,1} = 'C5PAN1'; Gstr{i,2} = 'OH'; 
fC5PAN1(i)=fC5PAN1(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3H + OH = HO2C4CO3';
k(:,i) = 1.45e-11;
Gstr{i,1} = 'HO2C4CO3H'; Gstr{i,2} = 'OH'; 
fHO2C4CO3H(i)=fHO2C4CO3H(i)-1; fOH(i)=fOH(i)-1; fHO2C4CO3(i)=fHO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO3H + hv = HO2C4O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO2C4CO3H'; 
fHO2C4CO3H(i)=fHO2C4CO3H(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C4CO2H + OH = HO2C4O2';
k(:,i) = 1.11e-11;
Gstr{i,1} = 'HO2C4CO2H'; Gstr{i,2} = 'OH'; 
fHO2C4CO2H(i)=fHO2C4CO2H(i)-1; fOH(i)=fOH(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4OOH + OH = HO13C4O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HO13C4OOH'; Gstr{i,2} = 'OH'; 
fHO13C4OOH(i)=fHO13C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO13C4O2(i)=fHO13C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4OOH + OH = HO13C3CHO + OH';
k(:,i) = 2.56e-11;
Gstr{i,1} = 'HO13C4OOH'; Gstr{i,2} = 'OH'; 
fHO13C4OOH(i)=fHO13C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO13C3CHO(i)=fHO13C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4OOH + hv = HO13C4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO13C4OOH'; 
fHO13C4OOH(i)=fHO13C4OOH(i)-1; fHO13C4O(i)=fHO13C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO13C4OH + OH = HO13C3CHO + HO2';
k(:,i) = 2.01e-11;
Gstr{i,1} = 'HO13C4OH'; Gstr{i,2} = 'OH'; 
fHO13C4OH(i)=fHO13C4OH(i)-1; fOH(i)=fOH(i)-1; fHO13C3CHO(i)=fHO13C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CHO + hv = CO + HO2 + HO2 + HOC2H4CHO';
k(:,i) = J15;
Gstr{i,1} = 'HO13C3CHO'; 
fHO13C3CHO(i)=fHO13C3CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CHO + OH = HO13C3CO3';
k(:,i) = 3.19e-11;
Gstr{i,1} = 'HO13C3CHO'; Gstr{i,2} = 'OH'; 
fHO13C3CHO(i)=fHO13C3CHO(i)-1; fOH(i)=fOH(i)-1; fHO13C3CO3(i)=fHO13C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CHO + NO3 = HNO3 + HO13C3CO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'HO13C3CHO'; Gstr{i,2} = 'NO3'; 
fHO13C3CHO(i)=fHO13C3CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO13C3CO3(i)=fHO13C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + NO = HO2 + HOC2H4CHO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'NO'; 
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + NO2 = C4PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'NO2'; 
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN2(i)=fC4PAN2(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN2 = HO13C3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN2'; 
fC4PAN2(i)=fC4PAN2(i)-1; fHO13C3CO3(i)=fHO13C3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + NO3 = HO2 + HOC2H4CHO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'NO3'; 
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + HO2 = HO13C3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'HO2'; 
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO13C3CO3H(i)=fHO13C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + RO2 = HO2 + HOC2H4CHO';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'RO2';
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fHO2(i)=fHO2(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN2 + OH = CO + HOC2H4CHO + NO2';
k(:,i) = 8.22e-12;
Gstr{i,1} = 'C4PAN2'; Gstr{i,2} = 'OH'; 
fC4PAN2(i)=fC4PAN2(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3H + OH = HO13C3CO3';
k(:,i) = 1.86e-11;
Gstr{i,1} = 'HO13C3CO3H'; Gstr{i,2} = 'OH'; 
fHO13C3CO3H(i)=fHO13C3CO3H(i)-1; fOH(i)=fOH(i)-1; fHO13C3CO3(i)=fHO13C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3H + hv = HO2 + HOC2H4CHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO13C3CO3H'; 
fHO13C3CO3H(i)=fHO13C3CO3H(i)-1; fHO2(i)=fHO2(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CHO + hv = CO + HO2 + IPROPOLO2';
k(:,i) = J15;
Gstr{i,1} = 'HO2C3CHO'; 
fHO2C3CHO(i)=fHO2C3CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CHO + OH = CO2C3CHO + HO2';
k(:,i) = 4.88e-11.*0.561;
Gstr{i,1} = 'HO2C3CHO'; Gstr{i,2} = 'OH'; 
fHO2C3CHO(i)=fHO2C3CHO(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CHO + OH = HO2C3CO3';
k(:,i) = 4.88e-11.*0.439;
Gstr{i,1} = 'HO2C3CHO'; Gstr{i,2} = 'OH'; 
fHO2C3CHO(i)=fHO2C3CHO(i)-1; fOH(i)=fOH(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CHO + NO3 = HNO3 + HO2C3CO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'HO2C3CHO'; Gstr{i,2} = 'NO3'; 
fHO2C3CHO(i)=fHO2C3CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2C3CO3(i)=fHO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + NO = IPROPOLO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'NO'; 
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fNO(i)=fNO(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + NO2 = C4PAN3';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'NO2'; 
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN3(i)=fC4PAN3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN3 = HO2C3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN3'; 
fC4PAN3(i)=fC4PAN3(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + NO3 = IPROPOLO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'NO3'; 
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fNO3(i)=fNO3(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2C3CO3 = HO2C3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2C3CO3'; 
fHO2(i)=fHO2(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)-1; fHO2C3CO3H(i)=fHO2C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2C3CO3 = HO2C3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2C3CO3'; 
fHO2(i)=fHO2(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)-1; fHO2C3CO2H(i)=fHO2C3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + RO2 = IPROPOLO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'RO2';
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3 + RO2 = HO2C3CO3H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HO2C3CO3'; Gstr{i,2} = 'RO2';
fHO2C3CO3(i)=fHO2C3CO3(i)-1; fHO2C3CO3H(i)=fHO2C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN3 + OH = CH3CHOHCHO + CO + NO2';
k(:,i) = 9.00e-12;
Gstr{i,1} = 'C4PAN3'; Gstr{i,2} = 'OH'; 
fC4PAN3(i)=fC4PAN3(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3H + OH = HO2C3CO3';
k(:,i) = 3.12e-11;
Gstr{i,1} = 'HO2C3CO3H'; Gstr{i,2} = 'OH'; 
fHO2C3CO3H(i)=fHO2C3CO3H(i)-1; fOH(i)=fOH(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO3H + hv = IPROPOLO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO2C3CO3H'; 
fHO2C3CO3H(i)=fHO2C3CO3H(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C3CO2H + OH = IPROPOLO2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'HO2C3CO2H'; Gstr{i,2} = 'OH'; 
fHO2C3CO2H(i)=fHO2C3CO2H(i)-1; fOH(i)=fOH(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + NO = HO2C5O + NO2';
k(:,i) = KRO2NO.*0.979;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'NO'; 
fHO2C5O2(i)=fHO2C5O2(i)-1; fNO(i)=fNO(i)-1; fHO2C5O(i)=fHO2C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + NO = HO2C5NO3';
k(:,i) = KRO2NO.*0.021;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'NO'; 
fHO2C5O2(i)=fHO2C5O2(i)-1; fNO(i)=fNO(i)-1; fHO2C5NO3(i)=fHO2C5NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O = CO2C5OH + HO2';
k(:,i) = 4.37e11.*exp(-2945./T);
Gstr{i,1} = 'HO2C5O'; 
fHO2C5O(i)=fHO2C5O(i)-1; fCO2C5OH(i)=fCO2C5OH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + NO3 = HO2C5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'NO3'; 
fHO2C5O2(i)=fHO2C5O2(i)-1; fNO3(i)=fNO3(i)-1; fHO2C5O(i)=fHO2C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2C5O2 = HO2C5OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2C5O2'; 
fHO2(i)=fHO2(i)-1; fHO2C5O2(i)=fHO2C5O2(i)-1; fHO2C5OOH(i)=fHO2C5OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + RO2 = HO2C5O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'RO2';
fHO2C5O2(i)=fHO2C5O2(i)-1; fHO2C5O(i)=fHO2C5O(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + RO2 = HO2C4CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'RO2';
fHO2C5O2(i)=fHO2C5O2(i)-1; fHO2C4CHO(i)=fHO2C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5O2 + RO2 = HO2C5OH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'HO2C5O2'; Gstr{i,2} = 'RO2';
fHO2C5O2(i)=fHO2C5O2(i)-1; fHO2C5OH(i)=fHO2C5OH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5NO3 + OH = HO2C4CHO + NO2';
k(:,i) = 1.03e-11;
Gstr{i,1} = 'HO2C5NO3'; Gstr{i,2} = 'OH'; 
fHO2C5NO3(i)=fHO2C5NO3(i)-1; fOH(i)=fOH(i)-1; fHO2C4CHO(i)=fHO2C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5NO3 + hv = HO2C5O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'HO2C5NO3'; 
fHO2C5NO3(i)=fHO2C5NO3(i)-1; fHO2C5O(i)=fHO2C5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5OOH + OH = HO2C5O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HO2C5OOH'; Gstr{i,2} = 'OH'; 
fHO2C5OOH(i)=fHO2C5OOH(i)-1; fOH(i)=fOH(i)-1; fHO2C5O2(i)=fHO2C5O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5OOH + OH = HO2C4CHO + OH';
k(:,i) = 2.09e-11;
Gstr{i,1} = 'HO2C5OOH'; Gstr{i,2} = 'OH'; 
fHO2C5OOH(i)=fHO2C5OOH(i)-1; fOH(i)=fOH(i)-1; fHO2C4CHO(i)=fHO2C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5OOH + hv = HO2C5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO2C5OOH'; 
fHO2C5OOH(i)=fHO2C5OOH(i)-1; fHO2C5O(i)=fHO2C5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2C5OH + OH = CO2C5OH + HO2';
k(:,i) = 1.54e-11;
Gstr{i,1} = 'HO2C5OH'; Gstr{i,2} = 'OH'; 
fHO2C5OH(i)=fHO2C5OH(i)-1; fOH(i)=fOH(i)-1; fCO2C5OH(i)=fCO2C5OH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C5OH + hv = CH3CO3 + HO1C3O2';
k(:,i) = J22;
Gstr{i,1} = 'CO2C5OH'; 
fCO2C5OH(i)=fCO2C5OH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO1C3O2(i)=fHO1C3O2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C5OH + OH = CO2C4CHO + HO2';
k(:,i) = 9.60e-12.*0.483;
Gstr{i,1} = 'CO2C5OH'; Gstr{i,2} = 'OH'; 
fCO2C5OH(i)=fCO2C5OH(i)-1; fOH(i)=fOH(i)-1; fCO2C4CHO(i)=fCO2C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C5OH + OH = C51O2';
k(:,i) = 9.70e-12.*0.517;
Gstr{i,1} = 'CO2C5OH'; Gstr{i,2} = 'OH'; 
fCO2C5OH(i)=fCO2C5OH(i)-1; fOH(i)=fOH(i)-1; fC51O2(i)=fC51O2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO = C51O + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO'; 
fC51O2(i)=fC51O2(i)-1; fNO(i)=fNO(i)-1; fC51O(i)=fC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO = C51NO3';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO'; 
fC51O2(i)=fC51O2(i)-1; fNO(i)=fNO(i)-1; fC51NO3(i)=fC51NO3(i)+1; 

i=i+1;
Rnames{i} = 'C51O = CO2C3CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-6382./T);
Gstr{i,1} = 'C51O'; 
fC51O(i)=fC51O(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO3 = C51O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO3'; 
fC51O2(i)=fC51O2(i)-1; fNO3(i)=fNO3(i)-1; fC51O(i)=fC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + HO2 = C51OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'HO2'; 
fC51O2(i)=fC51O2(i)-1; fHO2(i)=fHO2(i)-1; fC51OOH(i)=fC51OOH(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + RO2 = C51O';
k(:,i) = 8.40e-13.*0.6;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fC51O(i)=fC51O(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + RO2 = HO1CO24C5';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + RO2 = C51OH';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fC51OH(i)=fC51OH(i)+1; 

i=i+1;
Rnames{i} = 'C51NO3 + OH = HO1CO24C5 + NO2';
k(:,i) = 1.55e-12;
Gstr{i,1} = 'C51NO3'; Gstr{i,2} = 'OH'; 
fC51NO3(i)=fC51NO3(i)-1; fOH(i)=fOH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51NO3 + hv = C51O + NO2';
k(:,i) = J22;
Gstr{i,1} = 'C51NO3'; 
fC51NO3(i)=fC51NO3(i)-1; fC51O(i)=fC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51OOH + OH = HO1CO24C5 + OH';
k(:,i) = 8.69e-11;
Gstr{i,1} = 'C51OOH'; Gstr{i,2} = 'OH'; 
fC51OOH(i)=fC51OOH(i)-1; fOH(i)=fOH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C51OOH + hv = C51O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C51OOH'; 
fC51OOH(i)=fC51OOH(i)-1; fC51O(i)=fC51O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C51OOH + hv = C51O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C51OOH'; 
fC51OOH(i)=fC51OOH(i)-1; fC51O(i)=fC51O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C51OH + OH = HO1CO24C5 + OH';
k(:,i) = 3.78e-11;
Gstr{i,1} = 'C51OH'; Gstr{i,2} = 'OH'; 
fC51OH(i)=fC51OH(i)-1; fOH(i)=fOH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO24C5 + hv = CH3COCH2O2 + HOCH2CO3';
k(:,i) = J22.*2;
Gstr{i,1} = 'HO1CO24C5'; 
fHO1CO24C5(i)=fHO1CO24C5(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO24C5 + OH = CO24C4CHO + HO2';
k(:,i) = 3.22e-12;
Gstr{i,1} = 'HO1CO24C5'; Gstr{i,2} = 'OH'; 
fHO1CO24C5(i)=fHO1CO24C5(i)-1; fOH(i)=fOH(i)-1; fCO24C4CHO(i)=fCO24C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C4CHO + OH = CO + CO2C3CO3';
k(:,i) = 1.33e-11;
Gstr{i,1} = 'CO24C4CHO'; Gstr{i,2} = 'OH'; 
fCO24C4CHO(i)=fCO24C4CHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO24C4CHO + NO3 = CO + CO2C3CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'CO24C4CHO'; Gstr{i,2} = 'NO3'; 
fCO24C4CHO(i)=fCO24C4CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO24C4CHO + hv = CO + CO2C3CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO24C4CHO'; 
fCO24C4CHO(i)=fCO24C4CHO(i)-1; fCO(i)=fCO(i)+1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CHO + hv = CO + HO2 + MEKAO2';
k(:,i) = J15;
Gstr{i,1} = 'CO2C4CHO'; 
fCO2C4CHO(i)=fCO2C4CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CHO + OH = CO2C4CO3';
k(:,i) = 2.63e-11;
Gstr{i,1} = 'CO2C4CHO'; Gstr{i,2} = 'OH'; 
fCO2C4CHO(i)=fCO2C4CHO(i)-1; fOH(i)=fOH(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CHO + NO3 = CO2C4CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'CO2C4CHO'; Gstr{i,2} = 'NO3'; 
fCO2C4CHO(i)=fCO2C4CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + NO = MEKAO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'NO'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fNO(i)=fNO(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + NO2 = C5PAN2';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'NO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN2(i)=fC5PAN2(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN2 = CO2C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN2'; 
fC5PAN2(i)=fC5PAN2(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + NO3 = MEKAO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'NO3'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + HO2 = CO2C4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'HO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2C4CO3H(i)=fCO2C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + HO2 = CO2C4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'HO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2C4CO2H(i)=fCO2C4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + RO2 = MEKAO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'RO2';
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + RO2 = CO2C4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'RO2';
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fCO2C4CO2H(i)=fCO2C4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN2 + OH = CO + CO2C3CHO + NO2';
k(:,i) = 1.90e-12;
Gstr{i,1} = 'C5PAN2'; Gstr{i,2} = 'OH'; 
fC5PAN2(i)=fC5PAN2(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3H + hv = MEKAO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2C4CO3H'; 
fCO2C4CO3H(i)=fCO2C4CO3H(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3H + hv = MEKAO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO2C4CO3H'; 
fCO2C4CO3H(i)=fCO2C4CO3H(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3H + OH = CO2C4CO3';
k(:,i) = 9.17e-12;
Gstr{i,1} = 'CO2C4CO3H'; Gstr{i,2} = 'OH'; 
fCO2C4CO3H(i)=fCO2C4CO3H(i)-1; fOH(i)=fOH(i)-1; fCO2C4CO3(i)=fCO2C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO2H + OH = MEKAO2';
k(:,i) = 5.71e-12;
Gstr{i,1} = 'CO2C4CO2H'; Gstr{i,2} = 'OH'; 
fCO2C4CO2H(i)=fCO2C4CO2H(i)-1; fOH(i)=fOH(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CHO + hv = CO + HO2 + HO3C4O2';
k(:,i) = J15;
Gstr{i,1} = 'HO3C4CHO'; 
fHO3C4CHO(i)=fHO3C4CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO3C4O2(i)=fHO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CHO + OH = CO3C4CHO + HO2';
k(:,i) = 5.56e-11.*0.611;
Gstr{i,1} = 'HO3C4CHO'; Gstr{i,2} = 'OH'; 
fHO3C4CHO(i)=fHO3C4CHO(i)-1; fOH(i)=fOH(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CHO + OH = HO3C4CO3';
k(:,i) = 5.56e-11.*0.389;
Gstr{i,1} = 'HO3C4CHO'; Gstr{i,2} = 'OH'; 
fHO3C4CHO(i)=fHO3C4CHO(i)-1; fOH(i)=fOH(i)-1; fHO3C4CO3(i)=fHO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CHO + NO3 = HNO3 + HO3C4CO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'HO3C4CHO'; Gstr{i,2} = 'NO3'; 
fHO3C4CHO(i)=fHO3C4CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO3C4CO3(i)=fHO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3 + NO = HO3C4O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO3C4CO3'; Gstr{i,2} = 'NO'; 
fHO3C4CO3(i)=fHO3C4CO3(i)-1; fNO(i)=fNO(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3 + NO2 = C5PAN8';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO3C4CO3'; Gstr{i,2} = 'NO2'; 
fHO3C4CO3(i)=fHO3C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN8(i)=fC5PAN8(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN8 = HO3C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN8'; 
fC5PAN8(i)=fC5PAN8(i)-1; fHO3C4CO3(i)=fHO3C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3 + NO3 = HO3C4O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO3C4CO3'; Gstr{i,2} = 'NO3'; 
fHO3C4CO3(i)=fHO3C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO3C4CO3 = HO3C4CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO3C4CO3'; 
fHO2(i)=fHO2(i)-1; fHO3C4CO3(i)=fHO3C4CO3(i)-1; fHO3C4CO3H(i)=fHO3C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3 + RO2 = HO3C4O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HO3C4CO3'; Gstr{i,2} = 'RO2';
fHO3C4CO3(i)=fHO3C4CO3(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN8 + OH = CO + HO3C3CHO + NO2';
k(:,i) = 1.20e-11;
Gstr{i,1} = 'C5PAN8'; Gstr{i,2} = 'OH'; 
fC5PAN8(i)=fC5PAN8(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHO3C3CHO(i)=fHO3C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3H + hv = HO3C4O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO3C4CO3H'; 
fHO3C4CO3H(i)=fHO3C4CO3H(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4CO3H + OH = HO3C4CO3';
k(:,i) = 3.84e-11;
Gstr{i,1} = 'HO3C4CO3H'; Gstr{i,2} = 'OH'; 
fHO3C4CO3H(i)=fHO3C4CO3H(i)-1; fOH(i)=fOH(i)-1; fHO3C4CO3(i)=fHO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CHO + hv = CO + HO2 + MEKCO2';
k(:,i) = J15;
Gstr{i,1} = 'CO3C4CHO'; 
fCO3C4CHO(i)=fCO3C4CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CHO + OH = CO3C4CO3';
k(:,i) = 6.76e-11;
Gstr{i,1} = 'CO3C4CHO'; Gstr{i,2} = 'OH'; 
fCO3C4CHO(i)=fCO3C4CHO(i)-1; fOH(i)=fOH(i)-1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CHO + NO3 = CO3C4CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'CO3C4CHO'; Gstr{i,2} = 'NO3'; 
fCO3C4CHO(i)=fCO3C4CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + NO = MEKCO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'NO'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fNO(i)=fNO(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + NO2 = C5PAN16';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'NO2'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN16(i)=fC5PAN16(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN16 = CO3C4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN16'; 
fC5PAN16(i)=fC5PAN16(i)-1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + NO3 = MEKCO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'NO3'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fNO3(i)=fNO3(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + HO2 = CO3C4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'HO2'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO3C4CO3H(i)=fCO3C4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + HO2 = CO3C4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'HO2'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO3C4CO2H(i)=fCO3C4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + RO2 = MEKCO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'RO2';
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + RO2 = CO3C4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'RO2';
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fCO3C4CO2H(i)=fCO3C4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN16 + OH = CO + EGLYOX + NO2';
k(:,i) = 1.44e-12;
Gstr{i,1} = 'C5PAN16'; Gstr{i,2} = 'OH'; 
fC5PAN16(i)=fC5PAN16(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fEGLYOX(i)=fEGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3H + OH = CO3C4CO3';
k(:,i) = 5.36e-12;
Gstr{i,1} = 'CO3C4CO3H'; Gstr{i,2} = 'OH'; 
fCO3C4CO3H(i)=fCO3C4CO3H(i)-1; fOH(i)=fOH(i)-1; fCO3C4CO3(i)=fCO3C4CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3H + hv = MEKCO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO3C4CO3H'; 
fCO3C4CO3H(i)=fCO3C4CO3H(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3H + hv = MEKCO2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO3C4CO3H'; 
fCO3C4CO3H(i)=fCO3C4CO3H(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO2H + OH = MEKCO2';
k(:,i) = 1.90e-12;
Gstr{i,1} = 'CO3C4CO2H'; Gstr{i,2} = 'OH'; 
fCO3C4CO2H(i)=fCO3C4CO2H(i)-1; fOH(i)=fOH(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO2H + hv = HO2 + MEKCO2';
k(:,i) = J22;
Gstr{i,1} = 'CO3C4CO2H'; 
fCO3C4CO2H(i)=fCO3C4CO2H(i)-1; fHO2(i)=fHO2(i)+1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'EGLYOX + hv = C2H5CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'EGLYOX'; 
fEGLYOX(i)=fEGLYOX(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'EGLYOX + OH = C2H5CO3 + CO';
k(:,i) = 1.39e-11;
Gstr{i,1} = 'EGLYOX'; Gstr{i,2} = 'OH'; 
fEGLYOX(i)=fEGLYOX(i)-1; fOH(i)=fOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'EGLYOX + NO3 = C2H5CO3 + CO + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'EGLYOX'; Gstr{i,2} = 'NO3'; 
fEGLYOX(i)=fEGLYOX(i)-1; fNO3(i)=fNO3(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + OH = HOCH2CH2O2';
k(:,i) = KMT15;
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'OH'; 
fC2H4(i)=fC2H4(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO = HOCH2CH2O + NO2';
k(:,i) = KRO2NO.*0.995;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO(i)=fNO(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO = ETHOHNO3';
k(:,i) = KRO2NO.*0.005;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO(i)=fNO(i)-1; fETHOHNO3(i)=fETHOHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O = HCHO + HCHO + HO2';
k(:,i) = 9.50e13.*exp(-5988./T);
Gstr{i,1} = 'HOCH2CH2O'; 
fHOCH2CH2O(i)=fHOCH2CH2O(i)-1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O = HO2 + HOCH2CHO';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'HOCH2CH2O'; 
fHOCH2CH2O(i)=fHOCH2CH2O(i)-1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO3 = HOCH2CH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO3'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOCH2CH2O2 = HYETHO2H';
k(:,i) = 1.53e-13.*exp(1300./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOCH2CH2O2'; 
fHO2(i)=fHO2(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHYETHO2H(i)=fHYETHO2H(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + RO2 = HOCH2CH2O';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^(0.5).*0.6;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + RO2 = ETHGLY';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^(0.5).*0.2;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fETHGLY(i)=fETHGLY(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + RO2 = HOCH2CHO';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^(0.5).*0.2;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'ETHOHNO3 + OH = HOCH2CHO + NO2';
k(:,i) = 8.40e-13;
Gstr{i,1} = 'ETHOHNO3'; Gstr{i,2} = 'OH'; 
fETHOHNO3(i)=fETHOHNO3(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H + hv = HOCH2CH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYETHO2H'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H + OH = HOCH2CH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYETHO2H'; Gstr{i,2} = 'OH'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H + OH = HOCH2CHO + OH';
k(:,i) = 1.38e-11;
Gstr{i,1} = 'HYETHO2H'; Gstr{i,2} = 'OH'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + OH = HOCH2CO3';
k(:,i) = 1.00e-11.*0.800;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'OH'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + OH = GLYOX + HO2';
k(:,i) = 1.00e-11.*0.200;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'OH'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + hv = CO + HCHO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HOCH2CHO'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + NO3 = HNO3 + HOCH2CO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'NO3'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO2 = PHAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fPHAN(i)=fPHAN(i)+1; 

i=i+1;
Rnames{i} = 'PHAN = HOCH2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PHAN'; 
fPHAN(i)=fPHAN(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO = HCHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO3 = HCHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO3'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOCH2CO3 = HOCH2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOCH2CO3'; 
fHO2(i)=fHO2(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHOCH2CO3H(i)=fHOCH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOCH2CO3 = HOCH2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOCH2CO3'; 
fHO2(i)=fHO2(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHOCH2CO2H(i)=fHOCH2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + RO2 = HCHO + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'RO2';
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + RO2 = HOCH2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'RO2';
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHOCH2CO2H(i)=fHOCH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO2H + OH = HCHO + HO2';
k(:,i) = 2.73e-12;
Gstr{i,1} = 'HOCH2CO2H'; Gstr{i,2} = 'OH'; 
fHOCH2CO2H(i)=fHOCH2CO2H(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3H + hv = HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCH2CO3H'; 
fHOCH2CO3H(i)=fHOCH2CO3H(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3H + OH = HOCH2CO3';
k(:,i) = 6.19e-12;
Gstr{i,1} = 'HOCH2CO3H'; Gstr{i,2} = 'OH'; 
fHOCH2CO3H(i)=fHOCH2CO3H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + O3 = CH2OOA + HCHO';
k(:,i) = 9.1e-15.*exp(-2580./T);
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'O3'; 
fC2H4(i)=fC2H4(i)-1; fO3(i)=fO3(i)-1; fCH2OOA(i)=fCH2OOA(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOA = CH2OO';
k(:,i) = KDEC.*0.37;
Gstr{i,1} = 'CH2OOA'; 
fCH2OOA(i)=fCH2OOA(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOA = CO + HO2 + OH';
k(:,i) = KDEC.*0.13;
Gstr{i,1} = 'CH2OOA'; 
fCH2OOA(i)=fCH2OOA(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOA = CO';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'CH2OOA'; 
fCH2OOA(i)=fCH2OOA(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + NO = HCHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO'; 
fCH2OO(i)=fCH2OO(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + NO2 = HCHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO2'; 
fCH2OO(i)=fCH2OO(i)-1; fNO2(i)=fNO2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + SO2 = HCHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'SO2'; 
fCH2OO(i)=fCH2OO(i)-1; fSO2(i)=fSO2(i)-1; fHCHO(i)=fHCHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO = HCOOH';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'CH2OO'; 
fCH2OO(i)=fCH2OO(i)-1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO = H2O2 + HCHO';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'CH2OO'; 
fCH2OO(i)=fCH2OO(i)-1; fH2O2(i)=fH2O2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + CO = HCHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'CO'; 
fCH2OO(i)=fCH2OO(i)-1; fCO(i)=fCO(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + NO3 = ETHENO3O2';
k(:,i) = 3.3e-12.*exp(-2880./T);
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'NO3'; 
fC2H4(i)=fC2H4(i)-1; fNO3(i)=fNO3(i)-1; fETHENO3O2(i)=fETHENO3O2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + NO = ETHENO3O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'NO'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO(i)=fNO(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O = HO2 + NO3CH2CHO';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'ETHENO3O'; 
fETHENO3O(i)=fETHENO3O(i)-1; fHO2(i)=fHO2(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O = HCHO + HCHO + NO2';
k(:,i) = 7.00e03;
Gstr{i,1} = 'ETHENO3O'; 
fETHENO3O(i)=fETHENO3O(i)-1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + HO2 = ETHO2HNO3';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'HO2'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fHO2(i)=fHO2(i)-1; fETHO2HNO3(i)=fETHO2HNO3(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + NO3 = ETHENO3O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'NO3'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO3(i)=fNO3(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + RO2 = ETHENO3O';
k(:,i) = 6.00e-13.*0.6;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + RO2 = ETHOHNO3';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fETHOHNO3(i)=fETHOHNO3(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + RO2 = NO3CH2CHO';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 + hv = ETHENO3O + OH';
k(:,i) = J41;
Gstr{i,1} = 'ETHO2HNO3'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 + OH = ETHENO3O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'ETHO2HNO3'; Gstr{i,2} = 'OH'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fOH(i)=fOH(i)-1; fETHENO3O2(i)=fETHENO3O2(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 + OH = NO3CH2CHO + OH';
k(:,i) = 1.62e-12;
Gstr{i,1} = 'ETHO2HNO3'; Gstr{i,2} = 'OH'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO + hv = HCOCH2O + NO2';
k(:,i) = J56.*4.3;
Gstr{i,1} = 'NO3CH2CHO'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fHCOCH2O(i)=fHCOCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO + OH = NO3CH2CO3';
k(:,i) = 3.40e-12;
Gstr{i,1} = 'NO3CH2CHO'; Gstr{i,2} = 'OH'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NO3CH2CHO = HNO3 + NO3CH2CO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3CH2CHO'; 
fNO3(i)=fNO3(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fHNO3(i)=fHNO3(i)+1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO3CH2CO3 = HCHO + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3CH2CO3'; 
fNO(i)=fNO(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + NO3CH2CO3 = NO3CH2PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3CH2CO3'; 
fNO2(i)=fNO2(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO3CH2PAN(i)=fNO3CH2PAN(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2PAN = NO2 + NO3CH2CO3';
k(:,i) = KBPAN;
Gstr{i,1} = 'NO3CH2PAN'; 
fNO3CH2PAN(i)=fNO3CH2PAN(i)-1; fNO2(i)=fNO2(i)+1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NO3CH2CO3 = HCHO + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3CH2CO3'; 
fNO3(i)=fNO3(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO3CH2CO3 = NO3CH2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3CH2CO3'; 
fHO2(i)=fHO2(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO3CH2CO3H(i)=fNO3CH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO3CH2CO3 = NO3CH2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3CH2CO3'; 
fHO2(i)=fHO2(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO3CH2CO2H(i)=fNO3CH2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + RO2 = HCHO + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'RO2';
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + RO2 = NO3CH2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'RO2';
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO3CH2CO2H(i)=fNO3CH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2PAN + OH = CO + HCHO + NO2 + NO2';
k(:,i) = 1.12e-14;
Gstr{i,1} = 'NO3CH2PAN'; Gstr{i,2} = 'OH'; 
fNO3CH2PAN(i)=fNO3CH2PAN(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3H + hv = HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NO3CH2CO3H'; 
fNO3CH2CO3H(i)=fNO3CH2CO3H(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3H + OH = NO3CH2CO3';
k(:,i) = 3.63e-12;
Gstr{i,1} = 'NO3CH2CO3H'; Gstr{i,2} = 'OH'; 
fNO3CH2CO3H(i)=fNO3CH2CO3H(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO2H + OH = HCHO + NO2';
k(:,i) = 1.68e-13;
Gstr{i,1} = 'NO3CH2CO2H'; Gstr{i,2} = 'OH'; 
fNO3CH2CO2H(i)=fNO3CH2CO2H(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + NO = HYPROPO + NO2';
k(:,i) = KRO2NO.*0.977;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'NO'; 
fHYPROPO2(i)=fHYPROPO2(i)-1; fNO(i)=fNO(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + NO = PROPOLNO3';
k(:,i) = KRO2NO.*0.023;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'NO'; 
fHYPROPO2(i)=fHYPROPO2(i)-1; fNO(i)=fNO(i)-1; fPROPOLNO3(i)=fPROPOLNO3(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO = CH3CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-6410./T);
Gstr{i,1} = 'HYPROPO'; 
fHYPROPO(i)=fHYPROPO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + NO3 = HYPROPO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'NO3'; 
fHYPROPO2(i)=fHYPROPO2(i)-1; fNO3(i)=fNO3(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HYPROPO2 = HYPROPO2H';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HYPROPO2'; 
fHO2(i)=fHO2(i)-1; fHYPROPO2(i)=fHYPROPO2(i)-1; fHYPROPO2H(i)=fHYPROPO2H(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + RO2 = HYPROPO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + RO2 = PROPGLY';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fPROPGLY(i)=fPROPGLY(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + RO2 = ACETOL';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fACETOL(i)=fACETOL(i)+1; 

i=i+1;
Rnames{i} = 'OH + PROPOLNO3 = ACETOL + NO2';
k(:,i) = 9.16e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PROPOLNO3'; 
fOH(i)=fOH(i)-1; fPROPOLNO3(i)=fPROPOLNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H + hv = HYPROPO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYPROPO2H'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H + OH = HYPROPO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYPROPO2H'; Gstr{i,2} = 'OH'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fOH(i)=fOH(i)-1; fHYPROPO2(i)=fHYPROPO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H + OH = ACETOL + OH';
k(:,i) = 2.44e-11;
Gstr{i,1} = 'HYPROPO2H'; Gstr{i,2} = 'OH'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL + OH = HO2 + MGLYOX';
k(:,i) = 1.6e-12.*exp(305./T);
Gstr{i,1} = 'ACETOL'; Gstr{i,2} = 'OH'; 
fACETOL(i)=fACETOL(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL + hv = CH3CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'ACETOL'; 
fACETOL(i)=fACETOL(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + NO = HO3C4O + NO2';
k(:,i) = KRO2NO.*0.983;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'NO'; 
fHO3C4O2(i)=fHO3C4O2(i)-1; fNO(i)=fNO(i)-1; fHO3C4O(i)=fHO3C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + NO = HO3C4NO3';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'NO'; 
fHO3C4O2(i)=fHO3C4O2(i)-1; fNO(i)=fNO(i)-1; fHO3C4NO3(i)=fHO3C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O = C2H5CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-5538./T);
Gstr{i,1} = 'HO3C4O'; 
fHO3C4O(i)=fHO3C4O(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + NO3 = HO3C4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'NO3'; 
fHO3C4O2(i)=fHO3C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHO3C4O(i)=fHO3C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO3C4O2 = HO3C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO3C4O2'; 
fHO2(i)=fHO2(i)-1; fHO3C4O2(i)=fHO3C4O2(i)-1; fHO3C4OOH(i)=fHO3C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + RO2 = HO3C4O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'RO2';
fHO3C4O2(i)=fHO3C4O2(i)-1; fHO3C4O(i)=fHO3C4O(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + RO2 = HO3C3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'RO2';
fHO3C4O2(i)=fHO3C4O2(i)-1; fHO3C3CHO(i)=fHO3C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4O2 + RO2 = NBUTOLAOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO3C4O2'; Gstr{i,2} = 'RO2';
fHO3C4O2(i)=fHO3C4O2(i)-1; fNBUTOLAOH(i)=fNBUTOLAOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4NO3 + OH = HO3C3CHO + NO2';
k(:,i) = 3.03e-12;
Gstr{i,1} = 'HO3C4NO3'; Gstr{i,2} = 'OH'; 
fHO3C4NO3(i)=fHO3C4NO3(i)-1; fOH(i)=fOH(i)-1; fHO3C3CHO(i)=fHO3C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4OOH + hv = HO3C4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO3C4OOH'; 
fHO3C4OOH(i)=fHO3C4OOH(i)-1; fHO3C4O(i)=fHO3C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4OOH + OH = HO3C4O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HO3C4OOH'; Gstr{i,2} = 'OH'; 
fHO3C4OOH(i)=fHO3C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C4OOH + OH = HO3C3CHO + OH';
k(:,i) = 2.14e-11;
Gstr{i,1} = 'HO3C4OOH'; Gstr{i,2} = 'OH'; 
fHO3C4OOH(i)=fHO3C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO3C3CHO(i)=fHO3C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CHO + hv = C2H5CHO + HCHO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HO3C3CHO'; 
fHO3C3CHO(i)=fHO3C3CHO(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CHO + OH = HO3C3CO3';
k(:,i) = 3.08e-11;
Gstr{i,1} = 'HO3C3CHO'; Gstr{i,2} = 'OH'; 
fHO3C3CHO(i)=fHO3C3CHO(i)-1; fOH(i)=fOH(i)-1; fHO3C3CO3(i)=fHO3C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CHO + NO3 = HNO3 + HO3C3CO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'HO3C3CHO'; Gstr{i,2} = 'NO3'; 
fHO3C3CHO(i)=fHO3C3CHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO3C3CO3(i)=fHO3C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3 + NO = C2H5CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HO3C3CO3'; Gstr{i,2} = 'NO'; 
fHO3C3CO3(i)=fHO3C3CO3(i)-1; fNO(i)=fNO(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3 + NO2 = HO3C3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HO3C3CO3'; Gstr{i,2} = 'NO2'; 
fHO3C3CO3(i)=fHO3C3CO3(i)-1; fNO2(i)=fNO2(i)-1; fHO3C3PAN(i)=fHO3C3PAN(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3PAN = HO3C3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HO3C3PAN'; 
fHO3C3PAN(i)=fHO3C3PAN(i)-1; fHO3C3CO3(i)=fHO3C3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO3C3CO3 = HO3C3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO3C3CO3'; 
fHO2(i)=fHO2(i)-1; fHO3C3CO3(i)=fHO3C3CO3(i)-1; fHO3C3CO3H(i)=fHO3C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3 + RO2 = C2H5CHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HO3C3CO3'; Gstr{i,2} = 'RO2';
fHO3C3CO3(i)=fHO3C3CO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3PAN + OH = C2H5CHO + CO + NO2';
k(:,i) = 3.82e-12;
Gstr{i,1} = 'HO3C3PAN'; Gstr{i,2} = 'OH'; 
fHO3C3PAN(i)=fHO3C3PAN(i)-1; fOH(i)=fOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3 + NO3 = C2H5CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HO3C3CO3'; Gstr{i,2} = 'NO3'; 
fHO3C3CO3(i)=fHO3C3CO3(i)-1; fNO3(i)=fNO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3H + hv = C2H5CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HO3C3CO3H'; 
fHO3C3CO3H(i)=fHO3C3CO3H(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO3C3CO3H + OH = HO3C3CO3';
k(:,i) = 1.38e-11;
Gstr{i,1} = 'HO3C3CO3H'; Gstr{i,2} = 'OH'; 
fHO3C3CO3H(i)=fHO3C3CO3H(i)-1; fOH(i)=fOH(i)-1; fHO3C3CO3(i)=fHO3C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + HO2 = HCHO';
k(:,i) = 3.8e-13.*exp(780./T).*(1./(1+498.*exp(-1160./T)));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'HO2'; 
fCH3O2(i)=fCH3O2(i)-1; fHO2(i)=fHO2(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHO + OH = HCOCH2O2';
k(:,i) = 4.7e-12.*exp(345./T).*0.05;
Gstr{i,1} = 'CH3CHO'; Gstr{i,2} = 'OH'; 
fCH3CHO(i)=fCH3CHO(i)-1; fOH(i)=fOH(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + HO2 = CH3COCH2O + OH';
k(:,i) = 1.36e-13.*exp(1250./T).*0.15;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'HO2'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OH + OH = C2H5O';
k(:,i) = 3.0e-12.*exp(20./T).*0.05;
Gstr{i,1} = 'C2H5OH'; Gstr{i,2} = 'OH'; 
fC2H5OH(i)=fC2H5OH(i)-1; fOH(i)=fOH(i)-1; fC2H5O(i)=fC2H5O(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX + hv = CO + CO + H2';
k(:,i) = J31;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fH2(i)=fH2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX + hv = CO + HCHO';
k(:,i) = J32;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX + hv = CO + CO + HO2 + HO2';
k(:,i) = J33;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX + OH = HCOCO';
k(:,i) = 3.1e-12.*exp(340./T);
Gstr{i,1} = 'GLYOX'; Gstr{i,2} = 'OH'; 
fGLYOX(i)=fGLYOX(i)-1; fOH(i)=fOH(i)-1; fHCOCO(i)=fHCOCO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX + NO3 = HCOCO + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'GLYOX'; Gstr{i,2} = 'NO3'; 
fGLYOX(i)=fGLYOX(i)-1; fNO3(i)=fNO3(i)-1; fHCOCO(i)=fHCOCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO = CO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO(i)=fNO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOX + hv = CH3CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'MGLYOX'; 
fMGLYOX(i)=fMGLYOX(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOX + OH = CH3CO3 + CO';
k(:,i) = 1.9e-12.*exp(575./T);
Gstr{i,1} = 'MGLYOX'; Gstr{i,2} = 'OH'; 
fMGLYOX(i)=fMGLYOX(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOX + NO3 = CH3CO3 + CO + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'MGLYOX'; Gstr{i,2} = 'NO3'; 
fMGLYOX(i)=fMGLYOX(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO2 = CO + HO2 + NO3';
k(:,i) = KFPAN;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO2(i)=fNO2(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO3 = CO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO3'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = HCOCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = HCOCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + RO2 = CO + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'RO2';
fHCOCO3(i)=fHCOCO3(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + RO2 = HCOCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'RO2';
fHCOCO3(i)=fHCOCO3(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3H + OH = HCOCO3';
k(:,i) = 1.58e-11;
Gstr{i,1} = 'HCOCO3H'; Gstr{i,2} = 'OH'; 
fHCOCO3H(i)=fHCOCO3H(i)-1; fOH(i)=fOH(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3H + hv = CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCO3H'; 
fHCOCO3H(i)=fHCOCO3H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3H + hv = CO + HO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'HCOCO3H'; 
fHCOCO3H(i)=fHCOCO3H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO2H + OH = CO + HO2';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'HCOCO2H'; Gstr{i,2} = 'OH'; 
fHCOCO2H(i)=fHCOCO2H(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + OH = CO + HO2';
k(:,i) = 5.4e-12.*exp(135./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'OH'; 
fHCHO(i)=fHCHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + hv = CO + HO2 + HO2';
k(:,i) = J11;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + hv = CO + H2';
k(:,i) = J12;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fCO(i)=fCO(i)+1; fH2(i)=fH2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + NO3 = CO + HNO3 + HO2';
k(:,i) = 5.5e-16;
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NO3'; 
fHCHO(i)=fHCHO(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHO + OH = CH3CO3';
k(:,i) = 4.7e-12.*exp(345./T).*0.95;
Gstr{i,1} = 'CH3CHO'; Gstr{i,2} = 'OH'; 
fCH3CHO(i)=fCH3CHO(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHO + NO3 = CH3CO3 + HNO3';
k(:,i) = 1.4e-12.*exp(-1860./T);
Gstr{i,1} = 'CH3CHO'; Gstr{i,2} = 'NO3'; 
fCH3CHO(i)=fCH3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO = CH3O2 + NO2';
k(:,i) = 7.5e-12.*exp(290./T);
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO(i)=fNO(i)-1; fCH3O2(i)=fCH3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO2 = PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1;
Rnames{i} = 'PAN = CH3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO3 = CH3O2 + NO2';
k(:,i) = 4.0e-12;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO3'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3H(i)=fCH3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + RO2 = CH3O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'RO2';
fCH3CO3(i)=fCH3CO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + RO2 = CH3CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'RO2';
fCH3CO3(i)=fCH3CO3(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'OH + PAN = CO + HCHO + NO2';
k(:,i) = 3e-14;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PAN'; 
fOH(i)=fOH(i)-1; fPAN(i)=fPAN(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3H + hv = CH3O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3CO3H'; 
fCH3CO3H(i)=fCH3CO3H(i)-1; fCH3O2(i)=fCH3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3H + OH = CH3CO3';
k(:,i) = 3.70e-12;
Gstr{i,1} = 'CH3CO3H'; Gstr{i,2} = 'OH'; 
fCH3CO3H(i)=fCH3CO3H(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHO + hv = CH3O2 + CO + HO2';
k(:,i) = J13;
Gstr{i,1} = 'CH3CHO'; 
fCH3CHO(i)=fCH3CHO(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHO + OH = C2H5CO3';
k(:,i) = 4.9e-12.*exp(405./T);
Gstr{i,1} = 'C2H5CHO'; Gstr{i,2} = 'OH'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fOH(i)=fOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHO + NO3 = C2H5CO3 + HNO3';
k(:,i) = 3.24e-12.*exp(-1860./T);
Gstr{i,1} = 'C2H5CHO'; Gstr{i,2} = 'NO3'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fNO3(i)=fNO3(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO = C2H5O2 + NO2';
k(:,i) = 6.7e-12.*exp(340./T);
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO(i)=fNO(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO2 = PPN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO2(i)=fNO2(i)-1; fPPN(i)=fPPN(i)+1; 

i=i+1;
Rnames{i} = 'PPN = C2H5CO3 + NO2';
k(:,i) = KBPPN;
Gstr{i,1} = 'PPN'; 
fPPN(i)=fPPN(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO3 = C2H5O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO3'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO3(i)=fNO3(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + HO2 = PERPROACID';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'HO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fPERPROACID(i)=fPERPROACID(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + HO2 = O3 + PROPACID';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'HO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fO3(i)=fO3(i)+1; fPROPACID(i)=fPROPACID(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + RO2 = C2H5O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'RO2';
fC2H5CO3(i)=fC2H5CO3(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + RO2 = PROPACID';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'RO2';
fC2H5CO3(i)=fC2H5CO3(i)-1; fPROPACID(i)=fPROPACID(i)+1; 

i=i+1;
Rnames{i} = 'OH + PPN = CH3CHO + CO + NO2';
k(:,i) = 1.27e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PPN'; 
fOH(i)=fOH(i)-1; fPPN(i)=fPPN(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PERPROACID + hv = C2H5O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PERPROACID'; 
fPERPROACID(i)=fPERPROACID(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + PERPROACID = C2H5CO3';
k(:,i) = 4.42e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PERPROACID'; 
fOH(i)=fOH(i)-1; fPERPROACID(i)=fPERPROACID(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHO + hv = C2H5O2 + CO + HO2';
k(:,i) = J14;
Gstr{i,1} = 'C2H5CHO'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + OH = C3H7CO3';
k(:,i) = 6.0e-12.*exp(410./T).*0.849;
Gstr{i,1} = 'C3H7CHO'; Gstr{i,2} = 'OH'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fOH(i)=fOH(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + OH = BUTALO2';
k(:,i) = 6.0e-12.*exp(410./T).*0.151;
Gstr{i,1} = 'C3H7CHO'; Gstr{i,2} = 'OH'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fOH(i)=fOH(i)-1; fBUTALO2(i)=fBUTALO2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + NO3 = C3H7CO3 + HNO3';
k(:,i) = 1.7e-12.*exp(-1500./T);
Gstr{i,1} = 'C3H7CHO'; Gstr{i,2} = 'NO3'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fNO3(i)=fNO3(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + hv = CO + HO2 + NC3H7O2';
k(:,i) = J15;
Gstr{i,1} = 'C3H7CHO'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CHO + hv = C2H4 + CH3CHO';
k(:,i) = J16;
Gstr{i,1} = 'C3H7CHO'; 
fC3H7CHO(i)=fC3H7CHO(i)-1; fC2H4(i)=fC2H4(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + NO = NC3H7O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'NO'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fNO(i)=fNO(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + NO2 = PBN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'NO2'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fNO2(i)=fNO2(i)-1; fPBN(i)=fPBN(i)+1; 

i=i+1;
Rnames{i} = 'PBN = C3H7CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PBN'; 
fPBN(i)=fPBN(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + NO3 = NC3H7O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'NO3'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fNO3(i)=fNO3(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + HO2 = PERBUACID';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'HO2'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fHO2(i)=fHO2(i)-1; fPERBUACID(i)=fPERBUACID(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + HO2 = BUTACID + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'HO2'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fHO2(i)=fHO2(i)-1; fBUTACID(i)=fBUTACID(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + RO2 = NC3H7O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'RO2';
fC3H7CO3(i)=fC3H7CO3(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + RO2 = BUTACID';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'RO2';
fC3H7CO3(i)=fC3H7CO3(i)-1; fBUTACID(i)=fBUTACID(i)+1; 

i=i+1;
Rnames{i} = 'OH + PBN = C2H5CHO + CO + NO2';
k(:,i) = 4.70e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PBN'; 
fOH(i)=fOH(i)-1; fPBN(i)=fPBN(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PERBUACID + hv = NC3H7O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PERBUACID'; 
fPERBUACID(i)=fPERBUACID(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + PERBUACID = C3H7CO3';
k(:,i) = 8.29e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PERBUACID'; 
fOH(i)=fOH(i)-1; fPERBUACID(i)=fPERBUACID(i)-1; fC3H7CO3(i)=fC3H7CO3(i)+1; 

i=i+1;
Rnames{i} = 'BUTACID + OH = NC3H7O2';
k(:,i) = 1.8e-12;
Gstr{i,1} = 'BUTACID'; Gstr{i,2} = 'OH'; 
fBUTACID(i)=fBUTACID(i)-1; fOH(i)=fOH(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + NO = BUTALO + NO2';
k(:,i) = KRO2NO.*0.917;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'NO'; 
fBUTALO2(i)=fBUTALO2(i)-1; fNO(i)=fNO(i)-1; fBUTALO(i)=fBUTALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + NO = BUTALNO3';
k(:,i) = KRO2NO.*0.083;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'NO'; 
fBUTALO2(i)=fBUTALO2(i)-1; fNO(i)=fNO(i)-1; fBUTALNO3(i)=fBUTALNO3(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO = CO2C3CHO + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'BUTALO'; 
fBUTALO(i)=fBUTALO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO = CH3CHO + HCOCH2O2';
k(:,i) = 2.70e14.*exp(-7398./T);
Gstr{i,1} = 'BUTALO'; 
fBUTALO(i)=fBUTALO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + NO = HCOCH2O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'NO'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fNO(i)=fNO(i)-1; fHCOCH2O(i)=fHCOCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O = CO + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'HCOCH2O'; 
fHCOCH2O(i)=fHCOCH2O(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + NO3 = BUTALO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'NO3'; 
fBUTALO2(i)=fBUTALO2(i)-1; fNO3(i)=fNO3(i)-1; fBUTALO(i)=fBUTALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + HO2 = BUTALO2H';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'HO2'; 
fBUTALO2(i)=fBUTALO2(i)-1; fHO2(i)=fHO2(i)-1; fBUTALO2H(i)=fBUTALO2H(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + RO2 = BUTALO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'RO2';
fBUTALO2(i)=fBUTALO2(i)-1; fBUTALO(i)=fBUTALO(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + RO2 = CO2C3CHO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'RO2';
fBUTALO2(i)=fBUTALO2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2 + RO2 = HO2C3CHO';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'BUTALO2'; Gstr{i,2} = 'RO2';
fBUTALO2(i)=fBUTALO2(i)-1; fHO2C3CHO(i)=fHO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + NO3 = HCOCH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'NO3'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fHCOCH2O(i)=fHCOCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + HO2 = HCOCH2OOH';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'HO2'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + RO2 = HCOCH2O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHCOCH2O(i)=fHCOCH2O(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + RO2 = GLYOX';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + RO2 = HOCH2CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'BUTALNO3 + hv = BUTALO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'BUTALNO3'; 
fBUTALNO3(i)=fBUTALNO3(i)-1; fBUTALO(i)=fBUTALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALNO3 + hv = BUTALO + NO2';
k(:,i) = J15;
Gstr{i,1} = 'BUTALNO3'; 
fBUTALNO3(i)=fBUTALNO3(i)-1; fBUTALO(i)=fBUTALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALNO3 + OH = CO2C3CHO + NO2';
k(:,i) = 2.25e-11;
Gstr{i,1} = 'BUTALNO3'; Gstr{i,2} = 'OH'; 
fBUTALNO3(i)=fBUTALNO3(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2H + hv = BUTALO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BUTALO2H'; 
fBUTALO2H(i)=fBUTALO2H(i)-1; fBUTALO(i)=fBUTALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2H + hv = CO + HO2 + IC3H7O2';
k(:,i) = J15;
Gstr{i,1} = 'BUTALO2H'; 
fBUTALO2H(i)=fBUTALO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fIC3H7O2(i)=fIC3H7O2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2H + OH = BUTALO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'BUTALO2H'; Gstr{i,2} = 'OH'; 
fBUTALO2H(i)=fBUTALO2H(i)-1; fOH(i)=fOH(i)-1; fBUTALO2(i)=fBUTALO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTALO2H + OH = CO2C3CHO + OH';
k(:,i) = 1.27e-10;
Gstr{i,1} = 'BUTALO2H'; Gstr{i,2} = 'OH'; 
fBUTALO2H(i)=fBUTALO2H(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + hv = HCOCH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCH2OOH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fHCOCH2O(i)=fHCOCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + hv = CO + HCHO + HO2 + OH';
k(:,i) = J15;
Gstr{i,1} = 'HCOCH2OOH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + OH = HCOCH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HCOCH2OOH'; Gstr{i,2} = 'OH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fOH(i)=fOH(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + OH = GLYOX + OH';
k(:,i) = 2.91e-11;
Gstr{i,1} = 'HCOCH2OOH'; Gstr{i,2} = 'OH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CHO + OH = C4H9CO3';
k(:,i) = 6.34e-12.*exp(448./T).*0.81;
Gstr{i,1} = 'C4H9CHO'; Gstr{i,2} = 'OH'; 
fC4H9CHO(i)=fC4H9CHO(i)-1; fOH(i)=fOH(i)-1; fC4H9CO3(i)=fC4H9CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CHO + OH = C4CHOBO2';
k(:,i) = 6.34e-12.*exp(448./T).*0.19;
Gstr{i,1} = 'C4H9CHO'; Gstr{i,2} = 'OH'; 
fC4H9CHO(i)=fC4H9CHO(i)-1; fOH(i)=fOH(i)-1; fC4CHOBO2(i)=fC4CHOBO2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CHO + NO3 = C4H9CO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'C4H9CHO'; Gstr{i,2} = 'NO3'; 
fC4H9CHO(i)=fC4H9CHO(i)-1; fNO3(i)=fNO3(i)-1; fC4H9CO3(i)=fC4H9CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CHO + hv = CO + HO2 + NC4H9O2';
k(:,i) = J15;
Gstr{i,1} = 'C4H9CHO'; 
fC4H9CHO(i)=fC4H9CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNC4H9O2(i)=fNC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + NO = NC4H9O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'NO'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fNO(i)=fNO(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + NO2 = PPEN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'NO2'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fNO2(i)=fNO2(i)-1; fPPEN(i)=fPPEN(i)+1; 

i=i+1;
Rnames{i} = 'PPEN = C4H9CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PPEN'; 
fPPEN(i)=fPPEN(i)-1; fC4H9CO3(i)=fC4H9CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + NO3 = NC4H9O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'NO3'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fNO3(i)=fNO3(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + HO2 = PERPENACID';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'HO2'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fHO2(i)=fHO2(i)-1; fPERPENACID(i)=fPERPENACID(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + HO2 = O3 + PENTACID';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'HO2'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fHO2(i)=fHO2(i)-1; fO3(i)=fO3(i)+1; fPENTACID(i)=fPENTACID(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + RO2 = NC4H9O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'RO2';
fC4H9CO3(i)=fC4H9CO3(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + RO2 = PENTACID';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'RO2';
fC4H9CO3(i)=fC4H9CO3(i)-1; fPENTACID(i)=fPENTACID(i)+1; 

i=i+1;
Rnames{i} = 'OH + PPEN = C3H7CHO + CO + NO2';
k(:,i) = 6.85e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PPEN'; 
fOH(i)=fOH(i)-1; fPPEN(i)=fPPEN(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PERPENACID = C4H9CO3';
k(:,i) = 1.04e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PERPENACID'; 
fOH(i)=fOH(i)-1; fPERPENACID(i)=fPERPENACID(i)-1; fC4H9CO3(i)=fC4H9CO3(i)+1; 

i=i+1;
Rnames{i} = 'PERPENACID + hv = NC4H9O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PERPENACID'; 
fPERPENACID(i)=fPERPENACID(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + PENTACID = NC4H9O2';
k(:,i) = 6.88e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PENTACID'; 
fOH(i)=fOH(i)-1; fPENTACID(i)=fPENTACID(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + NO = C4CHOBO + NO2';
k(:,i) = KRO2NO.*0.871;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'NO'; 
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fNO(i)=fNO(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + NO = C4CHOBNO3';
k(:,i) = KRO2NO.*0.129;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'NO'; 
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fNO(i)=fNO(i)-1; fC4CHOBNO3(i)=fC4CHOBNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO = CO3C4CHO + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'C4CHOBO'; 
fC4CHOBO(i)=fC4CHOBO(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + NO3 = C4CHOBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'NO3'; 
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fNO3(i)=fNO3(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + HO2 = C4CHOBOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'HO2'; 
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fHO2(i)=fHO2(i)-1; fC4CHOBOOH(i)=fC4CHOBOOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + RO2 = C4CHOBO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'RO2';
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + RO2 = CO3C4CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'RO2';
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBO2 + RO2 = HO3C4CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'C4CHOBO2'; Gstr{i,2} = 'RO2';
fC4CHOBO2(i)=fC4CHOBO2(i)-1; fHO3C4CHO(i)=fHO3C4CHO(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBNO3 + OH = CO3C4CHO + NO2';
k(:,i) = 2.33e-11;
Gstr{i,1} = 'C4CHOBNO3'; Gstr{i,2} = 'OH'; 
fC4CHOBNO3(i)=fC4CHOBNO3(i)-1; fOH(i)=fOH(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBNO3 + hv = C4CHOBO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C4CHOBNO3'; 
fC4CHOBNO3(i)=fC4CHOBNO3(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBNO3 + hv = C4CHOBO + NO2';
k(:,i) = J15;
Gstr{i,1} = 'C4CHOBNO3'; 
fC4CHOBNO3(i)=fC4CHOBNO3(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBOOH + OH = C4CHOBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'C4CHOBOOH'; Gstr{i,2} = 'OH'; 
fC4CHOBOOH(i)=fC4CHOBOOH(i)-1; fOH(i)=fOH(i)-1; fC4CHOBO2(i)=fC4CHOBO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBOOH + OH = CO3C4CHO + OH';
k(:,i) = 1.57e-10;
Gstr{i,1} = 'C4CHOBOOH'; Gstr{i,2} = 'OH'; 
fC4CHOBOOH(i)=fC4CHOBOOH(i)-1; fOH(i)=fOH(i)-1; fCO3C4CHO(i)=fCO3C4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBOOH + hv = C4CHOBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C4CHOBOOH'; 
fC4CHOBOOH(i)=fC4CHOBOOH(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CHOBOOH + hv = C4CHOBO + OH';
k(:,i) = J15;
Gstr{i,1} = 'C4CHOBOOH'; 
fC4CHOBOOH(i)=fC4CHOBOOH(i)-1; fC4CHOBO(i)=fC4CHOBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH3 + hv = CH3CO3 + CH3O2';
k(:,i) = J21;
Gstr{i,1} = 'CH3COCH3'; 
fCH3COCH3(i)=fCH3COCH3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH3 + OH = CH3COCH2O2';
k(:,i) = 8.8e-12.*exp(-1320./T) + 1.7e-14.*exp(423./T);
Gstr{i,1} = 'CH3COCH3'; Gstr{i,2} = 'OH'; 
fCH3COCH3(i)=fCH3COCH3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + NO = CH3COCH2O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'NO'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O = CH3CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'CH3COCH2O'; 
fCH3COCH2O(i)=fCH3COCH2O(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + NO3 = CH3COCH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'NO3'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + HO2 = HYPERACET';
k(:,i) = 1.36e-13.*exp(1250./T).*0.85;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'HO2'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fHYPERACET(i)=fHYPERACET(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + RO2 = CH3COCH2O';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^(0.5).*0.6;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + RO2 = MGLYOX';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^(0.5).*0.2;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + RO2 = ACETOL';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^(0.5).*0.2;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fACETOL(i)=fACETOL(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + OH = CH3COCH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYPERACET'; Gstr{i,2} = 'OH'; 
fHYPERACET(i)=fHYPERACET(i)-1; fOH(i)=fOH(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + OH = MGLYOX + OH';
k(:,i) = 8.39e-12;
Gstr{i,1} = 'HYPERACET'; Gstr{i,2} = 'OH'; 
fHYPERACET(i)=fHYPERACET(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + hv = CH3COCH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYPERACET'; 
fHYPERACET(i)=fHYPERACET(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + hv = CH3CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'HYPERACET'; 
fHYPERACET(i)=fHYPERACET(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + NO = MEKAO + NO2';
k(:,i) = KRO2NO.*0.967;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'NO'; 
fMEKAO2(i)=fMEKAO2(i)-1; fNO(i)=fNO(i)-1; fMEKAO(i)=fMEKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + NO = MEKANO3';
k(:,i) = KRO2NO.*0.033;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'NO'; 
fMEKAO2(i)=fMEKAO2(i)-1; fNO(i)=fNO(i)-1; fMEKANO3(i)=fMEKANO3(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO = CO2C3CHO + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'MEKAO'; 
fMEKAO(i)=fMEKAO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO = HO1CO3C4O2';
k(:,i) = 1.30e11.*exp(-4127./T);
Gstr{i,1} = 'MEKAO'; 
fMEKAO(i)=fMEKAO(i)-1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + NO = HO1CO3C4O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'NO'; 
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fNO(i)=fNO(i)-1; fHO1CO3C4O(i)=fHO1CO3C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O = HCHO + HOC2H4CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'HO1CO3C4O'; 
fHO1CO3C4O(i)=fHO1CO3C4O(i)-1; fHCHO(i)=fHCHO(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + NO3 = MEKAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'NO3'; 
fMEKAO2(i)=fMEKAO2(i)-1; fNO3(i)=fNO3(i)-1; fMEKAO(i)=fMEKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + MEKAO2 = MEKAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'MEKAO2'; 
fHO2(i)=fHO2(i)-1; fMEKAO2(i)=fMEKAO2(i)-1; fMEKAOOH(i)=fMEKAOOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + RO2 = MEKAO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'RO2';
fMEKAO2(i)=fMEKAO2(i)-1; fMEKAO(i)=fMEKAO(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + RO2 = CO2C3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'RO2';
fMEKAO2(i)=fMEKAO2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'MEKAO2 + RO2 = MEKAOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MEKAO2'; Gstr{i,2} = 'RO2';
fMEKAO2(i)=fMEKAO2(i)-1; fMEKAOH(i)=fMEKAOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + NO3 = HO1CO3C4O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'NO3'; 
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fNO3(i)=fNO3(i)-1; fHO1CO3C4O(i)=fHO1CO3C4O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + HO2 = HOCO3C4OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'HO2'; 
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHO2(i)=fHO2(i)-1; fHOCO3C4OOH(i)=fHOCO3C4OOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + RO2 = HO1CO3C4O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'RO2';
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHO1CO3C4O(i)=fHO1CO3C4O(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + RO2 = HO1CO3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'RO2';
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHO1CO3CHO(i)=fHO1CO3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3C4O2 + RO2 = HO14CO2C4';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HO1CO3C4O2'; Gstr{i,2} = 'RO2';
fHO1CO3C4O2(i)=fHO1CO3C4O2(i)-1; fHO14CO2C4(i)=fHO14CO2C4(i)+1; 

i=i+1;
Rnames{i} = 'MEKANO3 + OH = CO2C3CHO + NO2';
k(:,i) = 9.64e-13;
Gstr{i,1} = 'MEKANO3'; Gstr{i,2} = 'OH'; 
fMEKANO3(i)=fMEKANO3(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKANO3 + hv = MEKAO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'MEKANO3'; 
fMEKANO3(i)=fMEKANO3(i)-1; fMEKAO(i)=fMEKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKANO3 + hv = MEKAO + NO2';
k(:,i) = J22;
Gstr{i,1} = 'MEKANO3'; 
fMEKANO3(i)=fMEKANO3(i)-1; fMEKAO(i)=fMEKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH + hv = MEKAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MEKAOOH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fMEKAO(i)=fMEKAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH + OH = MEKAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MEKAOOH'; Gstr{i,2} = 'OH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fOH(i)=fOH(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH + OH = CO2C3CHO + OH';
k(:,i) = 4.88e-11;
Gstr{i,1} = 'MEKAOOH'; Gstr{i,2} = 'OH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOOH + hv = MEKAO + OH';
k(:,i) = J22;
Gstr{i,1} = 'MEKAOOH'; 
fMEKAOOH(i)=fMEKAOOH(i)-1; fMEKAO(i)=fMEKAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOH + OH = CO2C3CHO + HO2';
k(:,i) = 1.35e-11;
Gstr{i,1} = 'MEKAOH'; Gstr{i,2} = 'OH'; 
fMEKAOH(i)=fMEKAOH(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKAOH + hv = CH3CO3 + HOCH2CH2O2';
k(:,i) = J22;
Gstr{i,1} = 'MEKAOH'; 
fMEKAOH(i)=fMEKAOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH + hv = HO1CO3C4O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCO3C4OOH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fHO1CO3C4O(i)=fHO1CO3C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH + hv = HO1CO3C4O + OH';
k(:,i) = J22;
Gstr{i,1} = 'HOCO3C4OOH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fHO1CO3C4O(i)=fHO1CO3C4O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH + OH = HO1CO3CHO + OH';
k(:,i) = 2.16e-11;
Gstr{i,1} = 'HOCO3C4OOH'; Gstr{i,2} = 'OH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO1CO3CHO(i)=fHO1CO3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCO3C4OOH + OH = HO1CO3C4O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HOCO3C4OOH'; Gstr{i,2} = 'OH'; 
fHOCO3C4OOH(i)=fHOCO3C4OOH(i)-1; fOH(i)=fOH(i)-1; fHO1CO3C4O2(i)=fHO1CO3C4O2(i)+1; 

i=i+1;
Rnames{i} = 'HO14CO2C4 + hv = HOCH2CH2O2 + HOCH2CO3';
k(:,i) = J22;
Gstr{i,1} = 'HO14CO2C4'; 
fHO14CO2C4(i)=fHO14CO2C4(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO14CO2C4 + OH = HO1CO3CHO + HO2';
k(:,i) = 1.57e-11;
Gstr{i,1} = 'HO14CO2C4'; Gstr{i,2} = 'OH'; 
fHO14CO2C4(i)=fHO14CO2C4(i)-1; fOH(i)=fOH(i)-1; fHO1CO3CHO(i)=fHO1CO3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3CHO + hv = CO + HO2 + HOC2H4CO3';
k(:,i) = J34;
Gstr{i,1} = 'HO1CO3CHO'; 
fHO1CO3CHO(i)=fHO1CO3CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3CHO + OH = CO + HOC2H4CO3';
k(:,i) = 2.56e-11;
Gstr{i,1} = 'HO1CO3CHO'; Gstr{i,2} = 'OH'; 
fHO1CO3CHO(i)=fHO1CO3CHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO3CHO + NO3 = CO + HNO3 + HOC2H4CO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'HO1CO3CHO'; Gstr{i,2} = 'NO3'; 
fHO1CO3CHO(i)=fHO1CO3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; fHOC2H4CO3(i)=fHOC2H4CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CHO + hv = CH3COCH2O2 + HCHO';
k(:,i) = J15;
Gstr{i,1} = 'CO2C3CHO'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CHO + OH = CO2C3CO3';
k(:,i) = 7.15e-11;
Gstr{i,1} = 'CO2C3CHO'; Gstr{i,2} = 'OH'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fOH(i)=fOH(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CHO + NO3 = CO2C3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'CO2C3CHO'; Gstr{i,2} = 'NO3'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO = CH3COCH2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO(i)=fNO(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO2 = CO2C3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO2(i)=fNO2(i)-1; fCO2C3PAN(i)=fCO2C3PAN(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3PAN = CO2C3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CO2C3PAN'; 
fCO2C3PAN(i)=fCO2C3PAN(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO3 = CH3COCH2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO3'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + HO2 = CO2C3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'HO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2C3CO3H(i)=fCO2C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + RO2 = CH3COCH2O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'RO2';
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3PAN + OH = CO + MGLYOX + NO2';
k(:,i) = 5.93e-13;
Gstr{i,1} = 'CO2C3PAN'; Gstr{i,2} = 'OH'; 
fCO2C3PAN(i)=fCO2C3PAN(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H + hv = CH3COCH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2C3CO3H'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H + OH = CO2C3CO3';
k(:,i) = 4.18e-12;
Gstr{i,1} = 'CO2C3CO3H'; Gstr{i,2} = 'OH'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fOH(i)=fOH(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H + hv = CH3COCH2O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO2C3CO3H'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO2 + NO = MEKCO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MEKCO2'; Gstr{i,2} = 'NO'; 
fMEKCO2(i)=fMEKCO2(i)-1; fNO(i)=fNO(i)-1; fMEKCO(i)=fMEKCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO = C2H5CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'MEKCO'; 
fMEKCO(i)=fMEKCO(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO2 + NO3 = MEKCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MEKCO2'; Gstr{i,2} = 'NO3'; 
fMEKCO2(i)=fMEKCO2(i)-1; fNO3(i)=fNO3(i)-1; fMEKCO(i)=fMEKCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + MEKCO2 = MEKCOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'MEKCO2'; 
fHO2(i)=fHO2(i)-1; fMEKCO2(i)=fMEKCO2(i)-1; fMEKCOOH(i)=fMEKCOOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO2 + RO2 = MEKCO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'MEKCO2'; Gstr{i,2} = 'RO2';
fMEKCO2(i)=fMEKCO2(i)-1; fMEKCO(i)=fMEKCO(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO2 + RO2 = EGLYOX';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MEKCO2'; Gstr{i,2} = 'RO2';
fMEKCO2(i)=fMEKCO2(i)-1; fEGLYOX(i)=fEGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'MEKCO2 + RO2 = MEKCOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MEKCO2'; Gstr{i,2} = 'RO2';
fMEKCO2(i)=fMEKCO2(i)-1; fMEKCOH(i)=fMEKCOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOOH + hv = MEKCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MEKCOOH'; 
fMEKCOOH(i)=fMEKCOOH(i)-1; fMEKCO(i)=fMEKCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOOH + hv = C2H5CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'MEKCOOH'; 
fMEKCOOH(i)=fMEKCOOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOOH + OH = MEKCO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MEKCOOH'; Gstr{i,2} = 'OH'; 
fMEKCOOH(i)=fMEKCOOH(i)-1; fOH(i)=fOH(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOOH + OH = EGLYOX + OH';
k(:,i) = 9.55e-12;
Gstr{i,1} = 'MEKCOOH'; Gstr{i,2} = 'OH'; 
fMEKCOOH(i)=fMEKCOOH(i)-1; fOH(i)=fOH(i)-1; fEGLYOX(i)=fEGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOH + hv = C2H5CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'MEKCOH'; 
fMEKCOH(i)=fMEKCOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEKCOH + OH = EGLYOX + HO2';
k(:,i) = 3.44e-12;
Gstr{i,1} = 'MEKCOH'; Gstr{i,2} = 'OH'; 
fMEKCOH(i)=fMEKCOH(i)-1; fOH(i)=fOH(i)-1; fEGLYOX(i)=fEGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OH + OH = HCHO + HO2';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'CH3OH'; Gstr{i,2} = 'OH'; 
fCH3OH(i)=fCH3OH(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OH + OH = CH3CHO + HO2';
k(:,i) = 3.0e-12.*exp(20./T).*0.9;
Gstr{i,1} = 'C2H5OH'; Gstr{i,2} = 'OH'; 
fC2H5OH(i)=fC2H5OH(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OH + OH = HOCH2CH2O2';
k(:,i) = 3.0e-12.*exp(20./T).*0.05;
Gstr{i,1} = 'C2H5OH'; Gstr{i,2} = 'OH'; 
fC2H5OH(i)=fC2H5OH(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NPROPOL + OH = C2H5CHO + HO2';
k(:,i) = 4.6e-12.*exp(70./T).*0.494;
Gstr{i,1} = 'NPROPOL'; Gstr{i,2} = 'OH'; 
fNPROPOL(i)=fNPROPOL(i)-1; fOH(i)=fOH(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NPROPOL + OH = HYPROPO2';
k(:,i) = 4.6e-12.*exp(70./T).*0.443;
Gstr{i,1} = 'NPROPOL'; Gstr{i,2} = 'OH'; 
fNPROPOL(i)=fNPROPOL(i)-1; fOH(i)=fOH(i)-1; fHYPROPO2(i)=fHYPROPO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOL + OH = CH3COCH3 + HO2';
k(:,i) = 2.6e-12.*exp(200./T).*0.861;
Gstr{i,1} = 'IPROPOL'; Gstr{i,2} = 'OH'; 
fIPROPOL(i)=fIPROPOL(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOL + OH = IPROPOLO2';
k(:,i) = 2.6e-12.*exp(200./T).*0.139;
Gstr{i,1} = 'IPROPOL'; Gstr{i,2} = 'OH'; 
fIPROPOL(i)=fIPROPOL(i)-1; fOH(i)=fOH(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO = IPROPOLO + NO2';
k(:,i) = KRO2NO.*0.991;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO(i)=fNO(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO = PROLNO3';
k(:,i) = KRO2NO.*0.009;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO(i)=fNO(i)-1; fPROLNO3(i)=fPROLNO3(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO = CH3CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-5505./T);
Gstr{i,1} = 'IPROPOLO'; 
fIPROPOLO(i)=fIPROPOLO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO3 = IPROPOLO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO3'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO3(i)=fNO3(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + IPROPOLO2 = IPROPOLO2H';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'IPROPOLO2'; 
fHO2(i)=fHO2(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)-1; fIPROPOLO2H(i)=fIPROPOLO2H(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + RO2 = IPROPOLO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + RO2 = CH3CHOHCHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + RO2 = PROPGLY';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fPROPGLY(i)=fPROPGLY(i)+1; 

i=i+1;
Rnames{i} = 'OH + PROLNO3 = CH3CHOHCHO + NO2';
k(:,i) = 1.71e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PROLNO3'; 
fOH(i)=fOH(i)-1; fPROLNO3(i)=fPROLNO3(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H + OH = IPROPOLO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'IPROPOLO2H'; Gstr{i,2} = 'OH'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fOH(i)=fOH(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H + OH = CH3CHOHCHO + OH';
k(:,i) = 1.83e-11;
Gstr{i,1} = 'IPROPOLO2H'; Gstr{i,2} = 'OH'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H + hv = IPROPOLO + OH';
k(:,i) = J41;
Gstr{i,1} = 'IPROPOLO2H'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO + OH = CH3CHOHCO3';
k(:,i) = 1.7e-11;
Gstr{i,1} = 'CH3CHOHCHO'; Gstr{i,2} = 'OH'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO + hv = CH3CHO + CO + HO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'CH3CHOHCHO'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO + NO3 = CH3CHOHCO3 + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'CH3CHOHCHO'; Gstr{i,2} = 'NO3'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO = CH3CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO2 = IPROPOLPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO2(i)=fNO2(i)-1; fIPROPOLPAN(i)=fIPROPOLPAN(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPAN = CH3CHOHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'IPROPOLPAN'; 
fIPROPOLPAN(i)=fIPROPOLPAN(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO3 = CH3CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO3'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + HO2 = IPROPOLPER';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'HO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fIPROPOLPER(i)=fIPROPOLPER(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + RO2 = CH3CHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'RO2';
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPAN + OH = CH3CHO + CO + NO2';
k(:,i) = 2.34e-12;
Gstr{i,1} = 'IPROPOLPAN'; Gstr{i,2} = 'OH'; 
fIPROPOLPAN(i)=fIPROPOLPAN(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPER + OH = CH3CHOHCO3';
k(:,i) = 9.34e-12;
Gstr{i,1} = 'IPROPOLPER'; Gstr{i,2} = 'OH'; 
fIPROPOLPER(i)=fIPROPOLPER(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPER + hv = CH3CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IPROPOLPER'; 
fIPROPOLPER(i)=fIPROPOLPER(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOL + OH = C3H7CHO + HO2';
k(:,i) = 5.3e-12.*exp(140./T).*0.358;
Gstr{i,1} = 'NBUTOL'; Gstr{i,2} = 'OH'; 
fNBUTOL(i)=fNBUTOL(i)-1; fOH(i)=fOH(i)-1; fC3H7CHO(i)=fC3H7CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOL + OH = NBUTOLAO2';
k(:,i) = 5.3e-12.*exp(140./T).*0.321;
Gstr{i,1} = 'NBUTOL'; Gstr{i,2} = 'OH'; 
fNBUTOL(i)=fNBUTOL(i)-1; fOH(i)=fOH(i)-1; fNBUTOLAO2(i)=fNBUTOLAO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOL + OH = NBUTOLBO2';
k(:,i) = 5.3e-12.*exp(140./T).*0.321;
Gstr{i,1} = 'NBUTOL'; Gstr{i,2} = 'OH'; 
fNBUTOL(i)=fNBUTOL(i)-1; fOH(i)=fOH(i)-1; fNBUTOLBO2(i)=fNBUTOLBO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + NO = NBUTOLAO + NO2';
k(:,i) = KRO2NO.*0.958;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'NO'; 
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fNO(i)=fNO(i)-1; fNBUTOLAO(i)=fNBUTOLAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + NO = NBUTOLANO3';
k(:,i) = KRO2NO.*0.042;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'NO'; 
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fNO(i)=fNO(i)-1; fNBUTOLANO3(i)=fNBUTOLANO3(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO = C2H5CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-6354./T);
Gstr{i,1} = 'NBUTOLAO'; 
fNBUTOLAO(i)=fNBUTOLAO(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + NO3 = NBUTOLAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'NO3'; 
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fNO3(i)=fNO3(i)-1; fNBUTOLAO(i)=fNBUTOLAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NBUTOLAO2 = NBUTOLAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NBUTOLAO2'; 
fHO2(i)=fHO2(i)-1; fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fNBUTOLAOOH(i)=fNBUTOLAOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + RO2 = NBUTOLAO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'RO2';
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fNBUTOLAO(i)=fNBUTOLAO(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + RO2 = MEKCOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'RO2';
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fMEKCOH(i)=fMEKCOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAO2 + RO2 = NBUTOLAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'NBUTOLAO2'; Gstr{i,2} = 'RO2';
fNBUTOLAO2(i)=fNBUTOLAO2(i)-1; fNBUTOLAOH(i)=fNBUTOLAOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLANO3 + OH = MEKCOH + NO2';
k(:,i) = 1.27e-12;
Gstr{i,1} = 'NBUTOLANO3'; Gstr{i,2} = 'OH'; 
fNBUTOLANO3(i)=fNBUTOLANO3(i)-1; fOH(i)=fOH(i)-1; fMEKCOH(i)=fMEKCOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAOOH + hv = NBUTOLAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBUTOLAOOH'; 
fNBUTOLAOOH(i)=fNBUTOLAOOH(i)-1; fNBUTOLAO(i)=fNBUTOLAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAOOH + OH = NBUTOLAO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NBUTOLAOOH'; Gstr{i,2} = 'OH'; 
fNBUTOLAOOH(i)=fNBUTOLAOOH(i)-1; fOH(i)=fOH(i)-1; fNBUTOLAO2(i)=fNBUTOLAO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAOOH + OH = MEKCOH + OH';
k(:,i) = 3.01e-11;
Gstr{i,1} = 'NBUTOLAOOH'; Gstr{i,2} = 'OH'; 
fNBUTOLAOOH(i)=fNBUTOLAOOH(i)-1; fOH(i)=fOH(i)-1; fMEKCOH(i)=fMEKCOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLAOH + OH = HO2 + MEKCOH';
k(:,i) = 1.59e-11;
Gstr{i,1} = 'NBUTOLAOH'; Gstr{i,2} = 'OH'; 
fNBUTOLAOH(i)=fNBUTOLAOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fMEKCOH(i)=fMEKCOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + NO = NBUTOLBO + NO2';
k(:,i) = KRO2NO.*0.917;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'NO'; 
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fNO(i)=fNO(i)-1; fNBUTOLBO(i)=fNBUTOLBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + NO = NBUTOLBNO3';
k(:,i) = KRO2NO.*0.083;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'NO'; 
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fNO(i)=fNO(i)-1; fNBUTOLBNO3(i)=fNBUTOLBNO3(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO = CH3CHO + HOCH2CH2O2';
k(:,i) = 2.70e14.*exp(-7398./T);
Gstr{i,1} = 'NBUTOLBO'; 
fNBUTOLBO(i)=fNBUTOLBO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO = HO2 + MEKAOH';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'NBUTOLBO'; 
fNBUTOLBO(i)=fNBUTOLBO(i)-1; fHO2(i)=fHO2(i)+1; fMEKAOH(i)=fMEKAOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + NO3 = NBUTOLBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'NO3'; 
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fNO3(i)=fNO3(i)-1; fNBUTOLBO(i)=fNBUTOLBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NBUTOLBO2 = NBUTOLBOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NBUTOLBO2'; 
fHO2(i)=fHO2(i)-1; fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fNBUTOLBOOH(i)=fNBUTOLBOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + RO2 = NBUTOLBO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'RO2';
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fNBUTOLBO(i)=fNBUTOLBO(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + RO2 = MEKAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'RO2';
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fMEKAOH(i)=fMEKAOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBO2 + RO2 = HO2C4OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'NBUTOLBO2'; Gstr{i,2} = 'RO2';
fNBUTOLBO2(i)=fNBUTOLBO2(i)-1; fHO2C4OH(i)=fHO2C4OH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBNO3 + hv = NBUTOLBO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NBUTOLBNO3'; 
fNBUTOLBNO3(i)=fNBUTOLBNO3(i)-1; fNBUTOLBO(i)=fNBUTOLBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBNO3 + OH = MEKAOH + NO2';
k(:,i) = 4.51e-12;
Gstr{i,1} = 'NBUTOLBNO3'; Gstr{i,2} = 'OH'; 
fNBUTOLBNO3(i)=fNBUTOLBNO3(i)-1; fOH(i)=fOH(i)-1; fMEKAOH(i)=fMEKAOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBOOH + hv = NBUTOLBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBUTOLBOOH'; 
fNBUTOLBOOH(i)=fNBUTOLBOOH(i)-1; fNBUTOLBO(i)=fNBUTOLBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBOOH + OH = NBUTOLBO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NBUTOLBOOH'; Gstr{i,2} = 'OH'; 
fNBUTOLBOOH(i)=fNBUTOLBOOH(i)-1; fOH(i)=fOH(i)-1; fNBUTOLBO2(i)=fNBUTOLBO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTOLBOOH + OH = MEKAOH + OH';
k(:,i) = 2.58e-11;
Gstr{i,1} = 'NBUTOLBOOH'; Gstr{i,2} = 'OH'; 
fNBUTOLBOOH(i)=fNBUTOLBOOH(i)-1; fOH(i)=fOH(i)-1; fMEKAOH(i)=fMEKAOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ETHGLY + OH = HO2 + HOCH2CHO';
k(:,i) = 1.45e-11;
Gstr{i,1} = 'ETHGLY'; Gstr{i,2} = 'OH'; 
fETHGLY(i)=fETHGLY(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + PROPGLY = CH3CHOHCHO + HO2';
k(:,i) = 2.10e-11.*0.387;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PROPGLY'; 
fOH(i)=fOH(i)-1; fPROPGLY(i)=fPROPGLY(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PROPGLY = ACETOL + HO2';
k(:,i) = 2.10e-11.*0.613;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PROPGLY'; 
fOH(i)=fOH(i)-1; fPROPGLY(i)=fPROPGLY(i)-1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOOH + OH = HO2';
k(:,i) = 4.5e-13;
Gstr{i,1} = 'HCOOH'; Gstr{i,2} = 'OH'; 
fHCOOH(i)=fHCOOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO2H + OH = CH3O2';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'CH3CO2H'; Gstr{i,2} = 'OH'; 
fCH3CO2H(i)=fCH3CO2H(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PROPACID = C2H5O2';
k(:,i) = 1.2e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PROPACID'; 
fOH(i)=fOH(i)-1; fPROPACID(i)=fPROPACID(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'NPROPOL + OH = HO1C3O2';
k(:,i) = 4.6e-12.*exp(70./T).*0.063;
Gstr{i,1} = 'NPROPOL'; Gstr{i,2} = 'OH'; 
fNPROPOL(i)=fNPROPOL(i)-1; fOH(i)=fOH(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO2H + hv = CO + HO2 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'HCOCO2H'; 
fHCOCO2H(i)=fHCOCO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + PHAN = CO + HCHO + NO2';
k(:,i) = 1.12e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PHAN'; 
fOH(i)=fOH(i)-1; fPHAN(i)=fPHAN(i)-1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + HO2 = C2H5O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'HO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3H7CO3 + HO2 = NC3H7O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C3H7CO3'; Gstr{i,2} = 'HO2'; 
fC3H7CO3(i)=fC3H7CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC3H7O2(i)=fNC3H7O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4H9CO3 + HO2 = NC4H9O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C4H9CO3'; Gstr{i,2} = 'HO2'; 
fC4H9CO3(i)=fC4H9CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC4H9O2(i)=fNC4H9O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4CO3 + HO2 = MEKAO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2C4CO3'; Gstr{i,2} = 'HO2'; 
fCO2C4CO3(i)=fCO2C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fMEKAO2(i)=fMEKAO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO3C4CO3 + HO2 = MEKCO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO3C4CO3'; Gstr{i,2} = 'HO2'; 
fCO3C4CO3(i)=fCO3C4CO3(i)-1; fHO2(i)=fHO2(i)-1; fMEKCO2(i)=fMEKCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = CO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2C3CO3 = IPROPOLO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2C3CO3'; 
fHO2(i)=fHO2(i)-1; fHO2C3CO3(i)=fHO2C3CO3(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2C4CO3 = HO2C4O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2C4CO3'; 
fHO2(i)=fHO2(i)-1; fHO2C4CO3(i)=fHO2C4CO3(i)-1; fHO2C4O2(i)=fHO2C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOC2H4CO3 = HOCH2CH2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOC2H4CO3'; 
fHO2(i)=fHO2(i)-1; fHOC2H4CO3(i)=fHOC2H4CO3(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOC3H6CO3 = HO1C3O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOC3H6CO3'; 
fHO2(i)=fHO2(i)-1; fHOC3H6CO3(i)=fHOC3H6CO3(i)-1; fHO1C3O2(i)=fHO1C3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HOCH2CO3 = HCHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HOCH2CO3'; 
fHO2(i)=fHO2(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO3CH2CO3 = HCHO + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3CH2CO3'; 
fHO2(i)=fHO2(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + HO2 = CH3CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'HO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + HO2 = CH3COCH2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'HO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO13C3CO3 + HO2 = HO2 + HOC2H4CHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO13C3CO3'; Gstr{i,2} = 'HO2'; 
fHO13C3CO3(i)=fHO13C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fHOC2H4CHO(i)=fHOC2H4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO3C3CO3 = C2H5CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO3C3CO3'; 
fHO2(i)=fHO2(i)-1; fHO3C3CO3(i)=fHO3C3CO3(i)-1; fC2H5CHO(i)=fC2H5CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO3C4CO3 = HO3C4O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO3C4CO3'; 
fHO2(i)=fHO2(i)-1; fHO3C4CO3(i)=fHO3C4CO3(i)-1; fHO3C4O2(i)=fHO3C4O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO = CO + CO + HO2';
k(:,i) = 7.00D11.*exp(-3160./T);
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO = CO + CO + HO2';
k(:,i) = 5.00e-12.*.21.*M;
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO = HCOCO3';
k(:,i) = 5.00e-12.*.21.*M.*3.2.*exp(-550./T);
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO = CO + OH';
k(:,i) = 5.00e-12.*.21.*M.*3.2.*(1-exp(-550./T));
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

%END OF REACTION LIST


