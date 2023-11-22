%% written by hudazhi
%% axial intensity and depth of focus

%{
axial intensity
I(0) = I0*sinc(k*W/2)^2
k = 2*pi/lambda
K*W = (pi/lambda)*(a^2/f^2)*delta
a = D/2
So,
delta = 8*(F_number)^2*Wd 
%}
% example
F_number = 5;
lambda = 0.6328;
Wd = 1*lambda;

delta = 8*(F_number)^2*Wd;
% first zeros on either side
Ddelta = 2*delta;

%{
Lord Rayleigh: the quarter wave rule of thumb 
diffractive depth of focus

%}


lambda = 0.6328;
W = lambda/4;
I0 = 1;

I = I0*(sin(pi/lambda*W)/(pi/lambda*W))^2;

%%32.2.4
%{ 
Resolution:
Rayleigh criterion
rA = 1.22*lambda*F_number

%}

%example
F_number = 10;
lambda = 0.55; %unit: um

rA = 1.22*lambda*F_number; %unit: um

R = 1/(rA*0.001); %unit: lp/mm

