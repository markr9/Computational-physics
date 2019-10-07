%stark effect
%works out ands plots the stark effect for a H atom n=2 levels
%range
y=0; %y=0 plane
X=-6:0.01:6;
Z=-6:0.01:6;
%wavefunctions
[x,z]=meshgrid(X,Z); %meshgrid setup
u1=1/sqrt(8*pi)*(1-sqrt(x.^2+y^2+z.^2)/2).*exp(-sqrt(x.^2+y^2+z.^2)/2); %n=2;l,m=0
u2=1/sqrt(8*pi)*(z/2).*exp(-sqrt(x.^2+y^2+z.^2)/2); %n=2,l=1,m=0
%eignfunctions
v1=1/sqrt(2)*(u1-u2);
pv1=abs(v1).^2;
v2=1/sqrt(2)*(u1+u2);
pv2=abs(v2).^2;
%plot
figure(1)
meshc(x,z,pv1)
xlabel('x (a0)')
ylabel('z (a0)')
zlabel('abs(v1)^2')
axis([-6 6 -6 6 0 0.02])
title('Stark effect for v1 in y=0 plane')
colorbar
figure(2)
contour(x,z,pv1,500)
xlabel('x (a0)')
ylabel('z (a0)')
title('Stark effect for v1 in y=0 plane')
colorbar
grid on
figure(3)
meshc(x,z,pv2)
xlabel('x (a0)')
ylabel('z (a0)')
zlabel('abs(v2)^2')
axis([-6 6 -6 6 0 0.02])
title('Stark effect for v2 in y=0 plane')
colorbar
figure(4)
contour(x,z,pv2,50)
xlabel('x (a0)')
ylabel('z (a0)')
title('Stark effect for v2 in y=0 plane')
colorbar
grid on