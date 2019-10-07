%energy of pendulum intially
%initial conditions in SI units
g =9.81;
m = 1;
L = 6;
b = 0.2;
omega0 = sqrt(g/L);
x1=pi/3;
x2=0;
%energy
T = (1/2)*m*L^2*x2^2; %kenitic
V = m*g*L*(1 - cos(x1)); %potential
E = T + V; %total energy
fprintf('Energy is %f J\n',E)
