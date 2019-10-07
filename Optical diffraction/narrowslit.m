% Fraunhofer diffraction by a rectangular aperture
I0 = 1; %normalized intensity
a = [10 20 30]; %slit width (units of a wavelength
k =2*pi; %wave number in units of one wavelength
theta = -pi/18:0.001:pi/18; %angular range
beta=0.5*k*a(1)*sin(theta); %beta value
I=I0*(sin(beta)./beta).*(sin(beta)./beta); %intensity at angle
%plot
figure(1);
plot(theta,I,'r');
hold on
grid on
%repeat for each a
beta=0.5*k*a(2)*sin(theta); %beta value
I=I0*(sin(beta)./beta).*(sin(beta)./beta); %intensity at angle
plot(theta,I,'b');
beta=0.5*k*a(3)*sin(theta); %beta value
I=I0*(sin(beta)./beta).*(sin(beta)./beta); %intensity at angle
plot(theta,I,'g');
xlabel('theta (rad)');
ylabel('Intensity (normalised)');
title('Diffraction pattern of a narrow slit at 3 widths')
hold off
%test (re-do) ntest
theta2=input('theta value: ');
x=input('Which a? 1=a=10, 2=a=20, 3=a=30: ');
beta2=0.5*k*a(x)*sin(theta2); %beta value
I2=I0*(sin(beta2)./beta2).*(sin(beta2)./beta2); %intensity at angle
fprintf('I = %f\n',I2)