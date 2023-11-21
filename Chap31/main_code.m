%% written by hudazhi
%{
Strehl ratio
Definition:
the ration of the central intensity in the aberrated pattern to the central
intensity in the unaberrated pattern.

S = Iab/Iunab

assuming uniform pupil irradiance:
S = exp[-(k*sigma)^2]
k = 2*pi/lambda, sigma^2 is the wavefront variance.

approximated:
Sa = 1 - (k*sigma)^2
%}




%%31.2.2 wavefront variance  
%{
sigma^2 = Var{W} = <W^2> - <W>^2
%}

% example: defocus and spherical aberration 
%{ 
W = Wd*rou^2 + W040*rou^4
sigma^2 = 1/12*(Wd+W040)^2 + 1/180*W040^2 
Minimum: Wd = W040, sigma^2 = 1/180*W040^2 
        sigma = 0.0745W040

31.4 asymmetric aberrations
COMA: sigma^2 = 0.125*W131^2
ASTI: sigma^2 = 0.0625*W222^2

%}


% example
lambda = 0.55;
sigma = linspace(0.01,0.12,12);

k = 2*pi/lambda;
S = exp(-(k*sigma).^2);
Sa = 1 - (k*sigma).^2;


%% 31.5 homework
% 1) COMA 
lambda = 0.55;
sigma = sqrt(0.125)*lambda;
S = exp(-(k*sigma).^2);



% 1) ASTI
lambda = 0.55;
sigma = sqrt(0.0625)*lambda;
S = exp(-(k*sigma).^2);






