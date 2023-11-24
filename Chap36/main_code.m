%% telephoto lens

%{
f1 = t_12*f/(f+t_12-k*f)

f2 = (f1-t_12)*(k*f-t)/(f1-k*f)

%}
clear all
clc
%example 

f = 10;
k = 0.8;

t_12 = 3;

f1 = t_12*f/(f+t_12-k*f);

f2 = (f1-t_12)*(k*f-t_12)/(f1-k*f);


phi_1 = 1/f1;
phi_2 = 1/f2;

%% each of these achromats will be contact achromats
%% the front crown is equi-convex, the rear crown is equi-concave
v_a = 58.977;
v_b = 37.039;
n_a = 1.5182;
n_b = 1.6129;




phi_11 = v_a/(v_a-v_b)*phi_1;
phi_12 = -v_b/(v_a-v_b)*phi_1;

phi_21 = v_a/(v_a-v_b)*phi_2;
phi_22 = -v_b/(v_a-v_b)*phi_2;


C11 = phi_11/2/(n_a-1);
R11 = 1/C11;
R12 = -R11;
R13 = R12;
R14 = 1/(1/R13 - phi_12/(n_b-1));


C21 = phi_21/2/(n_a-1);
R21 = 1/C21;
R22 = -R21;
R23 = R22;
R24 = 1/(1/R23 - phi_22/(n_b-1));


