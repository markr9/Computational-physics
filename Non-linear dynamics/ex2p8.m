%Entrainment
%driveing freq. wins out over the natural freq. of the system
%using Van per Pol equation
%natural peroid =2*pi=6.28s
%forcing peroid =2*pi/1.2=5.24s
%difference is 1.04s
%integrate and plot
%parameters (SI units)
%esp=epsilon, omeg=omega
%z(1)=v, z(2)=v_dot
esp=0.25; omeg=1.2; %[s^-1]
F=3; %[N]
%initial conditions and time span
z0=[2.09;0]; %(z1,z2)
tspan=[0 50];
%equations
f=@(t,z)[z(2);F*cos(omeg*t)-esp*z(2)*(z(1)^2-1)-z(1)];
%integration
[t,z]=ode45(f,tspan,z0); %t, v
%plot
plot(t,z(:,1));
grid on;
xlabel('time (s)');
ylabel('displacement (m)');
title('Entrainment');
