%peak of planck fn
syms a
y=solve('a=3*exp(a)-3',a);
z=vpa(y,12)
%hv/kT=a