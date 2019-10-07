%hydrogen (H) radial wavefunction
%plot in units of a0
%parameters
r1=0:0.01:8; %[a01]
r2=0:0.01:20;
r3=0:0.01:20;
r4=0:0.01:25;
Z=1; %proton number
%a0=5.2917721092e-11;
%n=1, l=0
R10=2*(Z)^(3/2)*exp(-(Z*r1)); %wave fn
P1=r1.^2.*abs(R10).^2; %prob dist
figure(1)
plot(r1,R10,'b',r1,P1,'r')
title('n=1,l=0 Radial wavefunction and Probability distribution')
xlabel('Radius (a0)')
ylabel('Radial wavefunction (b), Probability distribution (r)')
grid on
%n=2, l=0
R20=2*(Z/2)^(3/2)*(1-(Z*r2)/(2)).*exp(-(Z*r2)/2); %wave fn
P2=r2.^2.*abs(R20).^2; %prob dist
figure(2)
plot(r2,R20,'b',r2,P2,'r')
title('n=2,l=0 Radial wavefunction and Probability distribution')
xlabel('Radius (a0)')
ylabel('Radial wavefunction (b), Probability distribution (r)')
grid on
%n=2, l=1
R21=2/sqrt(3)*(Z/(2))^(3/2)*((Z*r3)/(2)).*exp(-(Z*r3)/2); %wave fn
P3=r3.^2.*abs(R21).^2; %prob dist
figure(3)
plot(r3,R21,'b',r3,P3,'r')
title('n=2,l=1 Radial wavefunction and Probability distribution')
xlabel('Radius (a0)')
grid on
ylabel('Radial wavefunction (b), Probability distribution (r)')
hold on
plot(6.8,[0:0.01:0.2])
%n=3, l=0
R30=2*(Z/(3))^(3/2)*(1-(2*Z*r4)/(3)+2/3*((Z*r4)/(3)).^2).*exp(-(Z*r4)/3); %wave fn
P4=r4.^2.*abs(R30).^2; %prob dist
figure(4)
plot(r4,R30,'b',r4,P4,'r')
title('n=3,l=0 Radial wavefunction and Probability distribution')
xlabel('Radius (a0)')
grid on
ylabel('Radial wavefunction (b), Probability distribution (r)')
