%intensity ratio vs w
a=10; %units of wavelength
w=2:0.01:20;
y=besselj(1,w); %J0(x)
Irat=((2*y)./w).^2; %I/I0
%plot
plot(w,Irat)
grid on
xlabel('w')
ylabel('I/I0')
title('Normalised intensity distribution varying with w')