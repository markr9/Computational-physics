%Quasiperodicty
%no frquency wins outs
%using Van per Pol equation
%integrate and plot
%parameters (SI units)
%z(1)=v, z(2)=v_dot
esp=1; omeg=1.1; %[s^-1]
F=0.5; %[N]
%initial conditions and time span
z0=[1.9;0]; %(z1,z2)
tspan=[0 100];
%equations
f=@(t,z)[z(2);F*cos(omeg*t)-esp*z(2)*(z(1)^2-1)-z(1)];
%integration
[t,z]=ode45(f,tspan,z0); %t, v
%plot
figure(1)
plot(t,z(:,1));
grid on;
xlabel('time (s)');
ylabel('displacement (m)');
title('Quasiperodicty');
figure(2)
plot(z(:,1),z(:,2));
grid on;
xlabel('v (m)');
ylabel('v dot (m/s)');
title('Quasiperodicty');
