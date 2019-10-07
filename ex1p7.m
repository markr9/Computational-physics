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
figure(1);
plot(t,z(:,1),'r',t,z(:,2),'b');
grid on;
xlabel('t');
ylabel('theta (r) and thetadot (b)');
title('angular position and speed for simple NL pendulum');