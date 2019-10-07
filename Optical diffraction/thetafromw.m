% w values
w= [3.83 7.01 10.18 5.14 8.44];
% use formula to find theta (w=ka*sin(theta))
k=2*pi;
a=10; %in wavelengths
theta=asin(w./(k.*a))