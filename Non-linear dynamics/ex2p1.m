% Simple nonlinear pendulum (damped)
% parameters (SI units)
l=6; %[m]
g=9.81; %[m/s^2]
omega2=g/l; %[s^-1]
m=1; %[kg]
b=0.2; %[kg/s]
% equations
f=@(t,z)[z(2);(-b*l*z(2)-m*g*sin(z(1)))/(m*l)];
%time span and initial conditions
tspan=[0 25]; %[s]
z0=[1; 0]; %initial theta and theta_dot
%integration
[t,z]=ode45(f,tspan,z0);
%plot
figure(1);
plot(t,z(:,1),'r',t,z(:,2),'b'); %position then velocity
grid on;
xlabel('t');
ylabel('theta (r) and thetadot (b)');
title('Angular position and speed for a damped pendulum');