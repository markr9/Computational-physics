x = -1:0.01:1;
p1 = x;
p2 = (3/2)*x.^2 - (1/2);
p3 = (5/2)*x.^3 - (3/2)*x;
p4 = (35/8)*x.^4 - (15/4)*x.^2 +(3/8);
plot(x,p1,'r:',x,p2,'g--',x,p3,'b-',x,p4,'m-');
xlabel('x');
ylabel('Pn');
title('Legendre Polynomials');
legend('\it n = 1','\it n = 2','\it n = 3','\it n = 4',...
'Location', 'Southeast');