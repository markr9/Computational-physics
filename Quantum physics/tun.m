%transmittance
%parameters
V0ev=10; %barrier potential [eV]
L=1e-9; %barrier width [m]
m=9.109382e-31; %electron mass [kg]
hbar=1.05457159e-34; %[J.s]
ec=1.6021764e-19; %[C]
Eev=8:0.001:9.99; %electron energy [eV] range:8-14eV
E=Eev*ec; %[J]
V0=V0ev*ec; %[J]
%equations
gkk1=sqrt(2*m*(V0-E))/hbar; %gkk=kappa
a1=E.*(V0-E);
T1=(1+0.25*(V0^2./a1).*sinh(gkk1*L).^2).^(-1);
%plot
figure(1)
semilogy(Eev,T1)
grid on
hold on
%equations2
Eev2=10.001:0.01:14; %electron energy [eV] range:8-14eV
E2=Eev2*ec; %[J]
gkk2=sqrt(2*m*(E2-V0))/hbar;
a2=E2.*(E2-V0);
T2=(1+0.25*(V0^2./a2).*sin(gkk2*L).^2).^(-1);
%plot2
semilogy(Eev2,T2)
xlabel('Electron energy (eV)')
ylabel('Transmittance')
title('Transmittance for V0=10eV, L=1nm')
hold off
figure(2)
plot(Eev,T1)
hold on
grid on
plot(Eev2,T2)
hold off