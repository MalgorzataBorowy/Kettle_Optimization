function t_100C = time_100C(x)

h = x(1);
D = x(2);
alfa = x(3);
w = x(4);

global T_init

%Geometry calc
[H,d,L,l] = geom_parameters(h,D,alfa);  %[m]
V = volume(D,d,H,h);    % Volume in [m3]
S = surface_area(D,d,L,l);  % [m2]
m = mass(V);    % [kg]


%Solving diff eq
[t1 T1] = ode45('energy_balance',[0 500], T_init,[],m,S,w);
T1 = T1-273.15;
figure;
plot(t1,T1);
grid on;
close all;

[min_val ind] = min(abs(T1-100));
t_100C = t1(ind)    % boiling time in seconds [s]
T1(ind);
V_L = V*1000;    % Volume in liters
V

end