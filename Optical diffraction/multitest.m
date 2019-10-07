%location of tall maxima at alpha=m*pi
%alpha=0.5*k*h*sin(theta)
m=[0 1 2 3 4];
alpha=m*pi;
k=(2*pi)/550e-9;
h=18e-6;
theta=asin((2*alpha)/(k*h));
theta