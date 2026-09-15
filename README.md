### The provided folders contain: 

### 1. CIMS data exports from 1-iodopentane photooxidation experiments, and 

### 2. Files to run our Enhanced Model in MATLAB.



#### 1\. The Experiment_CIMS_exports folder contains zipped-subfolders for the 5 experiments, each containing 4 .csv files exported from Tofware v4.0.3 running in Igor Pro v9.0.5.1:



##### all\_amus\_HR.csv 
contains the full peak list assigned to the ions detected with NH<sub>4</sub><sup>+</sup> CIMS, as well as their detected m/Q. Unassigned peaks were due to high uncertainties for Tofware-suggested formulae. All experiments were exported from the same peak list for convenient comparisons of ion signals between conditions.



##### all\_tseries.csv 
contains the timestamps for each CIMS measurement logged in the remaining data files. Our 1 Hz CIMS data were 10 s averaged prior to processing and export for efficiency. 1 Hz data is available upon request.



##### all\_Mx\_data\_HR.csv 
contains raw ion signals (cps) for each species in our peak list. The first row of each column contains the peak name and exact mass (consistent with all\_amus\_HR.csv). Their ion signals (cps) at each timestamp propagate down each column.



##### all\_UD\_DatM.csv 
contains CIMS user data to log instrument voltages and valve positions throughout the experiments: "LVSB2\_VOCUS\_Back monitor \[V]" logs the current voltage reading at the back of the CIMS ion-molecule reactor and "LVSB3\_Skimmer monitor \[V]" logs the current voltage reading at the following skimmer region of the instrument. Voltages in these regions are ramped up/down at various points throughout the experiments to enable collision induced dissociation (CID) sensitivity estimations of our detected analytes. "GSU\_VALVE\_PR1 monitor \[]" logs the current position of the CIMS zero air valve and "GSU\_VALVE\_PR3 monitor \[]" logs the current position of the CIMS calibrant gas valve (either 0 for off, or 1 for on). The zero air and calibrant gas valves were turned on before and after each experiment to calibrate for instrument sensitivity.





#### 2\. The MATLAB\_F0AM\_files folder contains .m, .csv, and .txt files to be added to the Framework for 0-Dimensional Atmospheric Modeling (F0AM) in MATLAB for Enhanced Model runs.



##### MCM\_PEAO2\_HO2C5OOH.m 
contains the Master Chemical Mechanism v3.3.1 (MCM) exported chemistry for PEAO2 and HO2C5OOH. The file was generated using the provided FAC2F0AM.m function within F0AM on an MCM exported .fac file for PEAO2 and HO2C5OOH.



##### Halogens\_Sherwen2016.m 
contains a submechanism for halogen reactions adapted from a GEOS-Chem mechanism provided by Sherwen et al. 2016.



##### Appended\_pathways.m 
contains species and reactions manually added to supplement the provided MCM chemistry: including RI photolysis, atomic iodine recombination, RO<sub>2</sub> + IO, RO<sub>2</sub> H-migrations, and downstream reactions of missing hydroperoxides. There are also further instructions, in lines 6-24 of the code, to initiate RI photolysis in the model; these instructions are also provided below when describing Cross\_Section\_scaled\_isopropiodide.txt.



##### UVA-340 QLabs.csv 
is a manufacturer-provided light spectrum for the 340 nm lights used on our chamber for this study.



##### Cross\_Section\_scaled\_isopropiodide.txt 
contains absorption cross section measurements for isopropyl iodide (accessed at www.uv-vis-spectral-atlas-mainz.org/uvvis/ per www.doi.org/10.5194/essd-5-365-2013), which have been scaled by a factor of 0.4. Due to the lack of available absorption cross section data for 1-iodopentane at 340 nm, we found this scaled-down isopropyl iodide data provided the best model-measurement agreement to our observed product yields. In order to initiate RI photolysis in the Enhanced Model, the following lines of code must be cut+pasted into J\_BottomUp.m, which can be located within F0AM-Master > Chem > Photolysis:



```

i=i+1;

Jnames{i} = 'JRI'; %RI -> RO2 + I

CS{i} = 'Cross_Section_scaled_isopropiodide.txt'; 

QY{i} = 1;

```



##### Enhanced\_Model\_PEAO2\_2026.m 
is used to run the Enhanced Model within the F0AM environment in MATLAB. All of the previously mentioned file names have been defined within this script so that it will run upon adding the files to the F0AM-Master workspace and defining JRI as described above.

