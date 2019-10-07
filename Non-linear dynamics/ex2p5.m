%Rayleigh's equation
%ingetraion and plot
%parmaters
%z(1)=x, z(2)=y
gke=6; %change to value
%eqatuions
f=@(t,z)[z(2);-z(1)+gke*z(2)*(1-z(2)^2)];
%time span and initial conditions
tspan=[0 100];
z0=[0;4]; %z(1),z(2) initial condtions, change to value
%integration
[t,z]=ode45(f,tspan,z0);
%plot
figure(1); %change to figure
plot(z(:,1),z(:,2)); %x=x, y=y
grid on;
xlabel('x (m)');
ylabel('y (m/s)');
title('Rayleighs equtaion');
figure(2)
plot(t,z(:,1))
grid on
hold on
plot(t,z(:,2),'r')
hold off
