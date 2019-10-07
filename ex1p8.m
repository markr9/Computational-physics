%projectile motion
%input
g=9.81; %m/s^2
%initial
x0=0; y0=0;
v0=1; %m/s
vx0=v0/sqrt(2); vy0=v0/sqrt(2); %initial velocities
a0=[0,vx0];
b0=[0,vy0];
theta=pi/4;
%values
tf=((2*vy0)*1/9.81); %flight time
d=vx0*tf; %distance travelled
t=[0 tf]; %time span
%equations
f=@(t,a)[a(2);0];
h=@(t,b)[b(2);-g];
%integration
[t,a]=ode45(f,t,a0);
[t,b]=ode45(h,t,b0);
%plot
plot(a(:,1),b(:,1),'b')
xlabel('distance x (m)')
ylabel('distance y (m)')
title('Trajectory of a projectile')
fprintf('Flight time %f s, distance travelled %f m\n',tf,d)
%equation (to check) graph does match equation
%x=0:0.01:d;
%p=tan(theta); q=(g)/(2*v0^2*cos(theta)*cos(theta));
%y=x.*p-q*x.^2;
%hold on
%plot(x,y,'r')