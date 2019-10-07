%Inverted pendulum
%ingetraion and plot
%paraters
%z(1)=theta, z(2)=teta_dot
l=1; %[m]
A=0.1; %[m]
g=9.81; %[m/s^2]
b=0.1;
i=1;
c=[5,10,15,20];
while i<=4;
    %eqatuions
    a=A/l;
    om0=sqrt(g/l);
    om=om0*c(i);
    f=@(t,z)[z(2);-2*b*z(2)-(a*om^2*cos(om*t)-om0^2)*sin(z(1))];
    %time span and initial conditions
    tspan=[0 20];
    z0=[0.1;0]; %z1,z2
    %integration
    [t,z]=ode45(f,tspan,z0);
    %plot
    figure(i);
    plot(t,z(:,1)); %x=time, y=angular posistion
    grid on;
    xlabel('time /s');
    ylabel('angular posistion /rad');
    title('Oscillations of the inverted pendulum');
    i=i+1;
end
fprintf('Figure 1 is omega=5*omega0, Figure 2 is omega=10*omega0, Figure 3 is omega=15*omega0, Figure 4 is omega=20*omega0\n');
