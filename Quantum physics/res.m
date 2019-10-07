m=9.109382e-31; %electron mass [kg]
hbar=1.05457159e-34; %[J.s]
ec=1.6021764e-19; %[C]
V0ev=10; %barrier potential [eV]
V0=V0ev*ec; %[J]
L=1e-9; %barrier width [m]
n=1:3; %integers only
E2=V0+(n*pi*hbar).^2/(L^2*2*m); %[J]
gkk2=sqrt(2*m*(E2-V0))/hbar;
a2=E2.*(E2-V0);
T2=(1+0.25*(V0^2./a2).*sin(gkk2*L).^2).^(-1);
E=E2/ec; %[ev]
E
gkk2
T2