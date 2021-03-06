function [c, ceq] = constraints (x) %constraints for optimization toolbox

h = x(1);
D = x(2);
alfa = x(3);
w = x(4);

%Geometry calc
[H,d,L,l] = geom_parameters(h,D,alfa);  %[m]
V = volume(D,d,H,h)-0.001;    % min volume in [m3] 0.001
S = surface_area(D,d,L,l);  % [m2]
alfa_constr=alfa-90;
w_constr=w-0.005
m = mass(V);    % [kg]


c = [-S -V -d -w -alfa alfa_constr w_constr];
ceq = [];

end