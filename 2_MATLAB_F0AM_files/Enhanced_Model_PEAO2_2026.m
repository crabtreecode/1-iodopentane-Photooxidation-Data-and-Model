% Enhanced_Model_PEAO2_2026.m
% Structured after ExampleSetup_Chamber.m


% ///////////////////////////////
% NOTE: BEFORE RUNNING, define "JRI" within J_BottomUp.m  
% (as described in Appended_pathways.m)
% ///////////////////////////////

clear
close all
clc

% METEOROLOGY
Met = {...
%   names       values          
    'P'         1013                       ; %Pressure, mbar
    'T'         300                        ; %Temperature, K
    'RH'        5                         ; %Relative Humidity, percent
    'LFlux'     'UVA-340 QLabs.csv',       ; %Text file for radiation spectrum
    'jcorr'     'J4'                       ; %scale to J4 which is NO2 photolysis rate
    'J4'        [0.004 0.0019 0.0027 0.0027 0.004]'; % measured JNO2 
    'kdil'      3.5/255/60                  ; % dilution rate; X LPM into a Y L chamber (X/Y/60)
    };

% CHEMICAL CONCENTRATIONS
InitConc = {...
%   names       conc(ppb)                HoldMe
    'C5H11I'    [20 40 200 1000 2000]'                   0;
    };

% no OH source needed since we directly generate the alkyl radical by
% photolyzing the iodide
iconc = string(InitConc{1,2}); % helpful for labeling any generated plots

% CHEMISTRY
ChemFiles = {...
    'MCMv331_K(Met)';
    'MCMv331_J(Met,1)'; %Jmethod flag of 1 specifies using "BottomUp" J-value method.
    %'MCMv331_AllRxns';
    'MCM_PEAO2_HO2C5OOH'; % Exported PEAO2 and HO2C5OOH MCM file
    'Halogens_Sherwen2016'; % MCM Halogens Submechanism
    'Appended_pathways'; % Currently missing from MCM
    };


% DILUTION CONCENTRATIONS
BkgdConc = {...
%   names           values
    'DEFAULT'       0;   %0 for all zeros, 1 to use InitConc
    };

% OPTIONS
%{
"Verbose" can be set from 0-3; this just affects the level of detail printed to the command
  window regarding model progress.
"EndPointsOnly" is set to 0 because we want output to include all concentrations along each model step.
"LinkSteps" is set to 0 because each step is fully independent.
"IntTime" is the integration time for each step. Here, we're modeling 2 hour photolysis in our chamber
"SavePath" will store the output in the default "Runs" folder under the base F0AM directory
"GoParallel" can be utilized since each step is independent (assuming you have the parallel computing toolbox)
%}

ModelOptions.Verbose       = 1;
ModelOptions.EndPointsOnly = 0;
ModelOptions.LinkSteps     = 0;
ModelOptions.IntTime       = 3600*2; % 2 hours
ModelOptions.SavePath      = 'EnhancedModelOutput.mat';
ModelOptions.GoParallel    = 0;

% MODEL RUN
% Now we call the model.
% Output will be saved in the "SavePath" above and will also be written to the structure S.
% Let's also throw away the inputs (don't worry, they are saved in the output structure).

S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions);
% clear Met InitConc ChemFiles BkgdConc ModelOptions

% "SplitRun" will make three new structures, S1, S2 and S3, corresponding to each of the
% three steps with different initial NO2 (0.1, 1 and 10 ppbv).
SplitRun(S,'step')

SS = {S1;S2;S3;S4;S5};

%% dilution correction
close all
dil_curve = cell(1,numel(SS));
for ii = 1:numel(SS)
    dil_curve{ii} = exp(-SS{ii}.Time*Met{14});
    fields = fieldnames(SS{ii}.Conc);
    for jj = 1:numel(fields)
        SS{ii}.Conc.(fields{jj}) = SS{ii}.Conc.(fields{jj})./dil_curve{ii};
    end
end

% can still plot the original (no dil cor) outputs by calling S1, S2, etc.
% but calling SS{1,1}, SS{2,1}, SS{3,1}, etc. will be dilution corrected
