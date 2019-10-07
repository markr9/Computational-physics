%inputs
a=1e-9; %in nm
b=a;
c=a;
l=2; m=1; n=1;
h_bar=1.055e-34; %in J/s
z=0.5e-9; %in nm
me=9.11e-31; %in kg
%fns
[x,y]=meshgrid(0e-9:0.01e-9:1e-9,0e-9:0.01e-9:1e-9); %x,y range and grid
d=sin((l*pi*x)/a); %x var
e=sin((m*pi*y)/b); %y var
f=sqrt(8/(a*b*c))*sin((n*pi*z)/c); %consts
wfn=f*(d.*e); %z var
%plot
meshc(x,y,wfn);
%lables
xlabel('x (m)')
ylabel('y (m)')
zlabel('psi')
title('Wavefunction at z=0.5nm')
%energy
E=(h_bar^2*pi*pi)/(2*me)*(l^2/a^2+m^2/b^2+n^2/c^2); %in J
ev=1.602e-19; %in eV
E2=E/ev; %J to eV conversion
fprintf('The energy is %e J and %f eV\n',E,E2)