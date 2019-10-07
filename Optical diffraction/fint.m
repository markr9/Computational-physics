%plot Fresnel integrals
%range -4 to 4
w=-4:0.01:4; %range
C=mfun('FresnelC',w);
S=mfun('FresnelS',w);
%plot
figure(1)
plot(w,C)
xlabel('w')
ylabel('C(w)')
title('C(w) Fresnel integral')
grid on
figure(2)
plot(w,S)
xlabel('w')
ylabel('S(w)')
title('S(w) Fresnel integral')
grid on