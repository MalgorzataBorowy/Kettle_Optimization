clear;clc;close all;

global ro alfa_1 alfa_2 lambda T_ext T_init efficiency cp U I

% Parameters
alfa_1 = 5000;  %[W/m2K]
alfa_2 = 50;    %[W/m2K]
lambda = 16;    %[W/mK]
T_ext = 25 ;    %[degC]
T_ext = T_ext+273.15;   %[K]
T_init = 20;    %[degC]
T_init = T_init+273.15; %[K]
efficiency = 0.85;
cp = 4220;      %[J/kgK]
ro = 958.38;    %[kg/m3]
U = 230;        %[V]
I = 22;         %[A]

% % Design variables
% h = 0.2;    %[m]
% D = 0.25;    %[m]
% alfa = 70;  %[deg]
% w = 0.001;  %[m]

% %Geometry calc
% [H,d,L,l] = geom_parameters(h,D,alfa);  %[m]
% V = volume(D,d,H,h);    % Volume in [m3]
% S = surface_area(D,d,L,l);  % [m2]
% m = mass(V);    % [kg]

%Initial param 
% time_range=[0 500];


% t_100C = time_100C([h,D,alfa,w]);
% [c ceq] = constraints([h,D,alfa,w]);

