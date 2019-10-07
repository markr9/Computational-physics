%mean (expectation value) of the radial probability
syms r1 r2 r3 r4 %[a0]
Z=1; %H atom
%radial wavefunctions
m1=int(r1.*r1.^2.*abs(2*(Z)^(3/2)*exp(-(Z*r1))).^2,r1,0,inf); %n=1, l=0
m2=int(r2.*r2.^2.*abs(2*(Z/2)^(3/2)*(1-(Z*r2)/(2)).*exp(-(Z*r2)/2)).^2,r2,0,inf); %n=2, l=0
m3=int(r3.*r3.^2.*abs(2/sqrt(3)*(Z/(2))^(3/2)*((Z*r3)/(2)).*exp(-(Z*r3)/2)).^2,r3,0,inf); %n=2, l=1
m4=int(r4.*r4.^2.*abs(2*(Z/(3))^(3/2)*(1-(2*Z*r4)/(3)+2/3*((Z*r4)/(3)).^2).*exp(-(Z*r4)/3)).^2,r4,0,inf); %n=3, l=0
vpa(m1,4)
vpa(m2,4)
vpa(m3,4)
vpa(m4,4)
%result in units of a0