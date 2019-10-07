% Simple nonlinear pendulum
% parameters (SI units)
L = 1; %[m]
g = 9.81; %[m/s^2]
omega2 = g/L; %[s^-1]
% equations
f = @(t,z)[z(2); - omega2*sin(z(1))];
% time span and initial conditions
tspan = [0 10];
z0 = [1; 0];
% integration
[t,z] = ode45(f,tspan,z0);
% plot
figure(2);
plot(t,z(:,1),'r',t,z(:,2),'b');
grid on;
xlabel('t');
ylabel('theta (r) and thetadot (b)');
% Simple nonlinear pendulum
% parameters (SI units)
l=6; %[m]
g=9.81; %[m/s^2]
omega2=g/l; %[s^-1]
m=1; %[kg]
b=0.2; %[]
% equations
f=@(t,z)[z(2); (-b*l*z(2)-m*g*sin(z(1)))/(m*l)];
%time span and initial conditions
tspan=[0 20]; %[s]
z0=[1; 0]; %intial theta and theta_dot
%integration
[t,z]=ode45(f,tspan,z0);
%plot
figure(1);
plot(t,z(:,1),'r',t,z(:,2),'b'); %postion then velocity
grid on