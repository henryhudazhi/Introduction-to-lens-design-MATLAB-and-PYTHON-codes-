%% written by hudazhi

%% Petzval lens
%{
33.2
KEY FEATURE: each element bends the marginal ray the same amount. In
addition, the marginal ray height at phi_2 is half that at phi_1, 
i.e. y2 = 1/2*y1
phi_1 = 1/2*phi, f1 = 2*f;
f2 = f;
BFL = 1/2*f
%}



%% best image plane criteria
%{
Minimum Blur (MB) delta_MB = 8(F_number)^2*[-3/2*W040]
Image Compactness (IC) delta_IC = 8(F_number)^2*[-4/3*W040]
Strehl (S) delta_S = 8(F_number)^2*[-W040]
1st Peak (P1) via axial intensity plots
Best Visual (BV) delta_BV = 8(F_number)^2*[-0.531*W040] (empirical)

Plane P1 always has the highest peak intensity among the various criterion.
BV retains its Airy-like form throughout, but its peak intensity is always
lower than P1. The geometric criteria IC and MB are out of the ball game
from the very beginning.
%}

lambda = 0.6328;
W040 = [0.5, 1, 2, 3]*lambda;
F_number = [18.72, 15.74, 13.24, 11.96];

delta_MB = 8*(F_number).^2.*(-3/2*W040);
delta_IC = 8*(F_number).^2.*(-4/3*W040);
delta_S = 8*(F_number).^2.*(-W040);

