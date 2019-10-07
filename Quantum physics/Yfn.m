%l=2, m=0 spherical harmonic
theta=0:pi/50:2*pi;
Y20=(5/(16*pi))^(1/2)*(3*cos(theta).^2-1);
figure(1)
plot(theta,Y20)
grid on
xlabel('theta (Rad)')
ylabel('Y20')
title('Spherical harmonic l=2, m=0')
figure(5)
polar(theta,Y20)
grid on
xlabel('theta (Rad) [angle]')
ylabel('Y20 [distance from centre]')
title('Spherical harmonic l=2, m=0')

