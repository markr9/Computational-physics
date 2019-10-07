%plot Fresnel integrals against each other
%range -4 to 4
w=-4:0.01:4; %range
C=mfun('FresnelC',w);
S=mfun('FresnelS',w);
%plot
figure(1)
plot(C,S)
xlabel('C(w)')
ylabel('S(w)')
title('Cornu spiral')
grid on