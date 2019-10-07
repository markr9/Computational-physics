%fn
t=0:0.1:20;
x=sin(t);
y=cos(t);
z=t;
%plot
plot3(x,y,z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Circular helix');