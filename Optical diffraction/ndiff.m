% multi slit diffraction
%parameters
h=18e-6;%apature width
b=h/6; %slit width
N=[5 10]; %slits
I0=1; %central I normlisation
gkl=[650e-9 550e-9]; %wavlength (lambda)
k1=(2*pi)/gkl(1); %wave #
k2=(2*pi)/gkl(2);
theta=-pi/20:0.0001:pi/20;
%equations
alpha1=1/2.*k1*h.*sin(theta);
beta1=1/2.*k1*b.*sin(theta);
alpha2=1/2.*k2*h.*sin(theta);
beta2=1/2.*k2*b.*sin(theta);
I1=I0*(sin(beta1)./beta1).^2.*(sin(N(1).*alpha1)./sin(alpha1)).^2;
I2=I0*(sin(beta1)./beta1).^2.*(sin(N(2).*alpha1)./sin(alpha1)).^2;
I3=I0*(sin(beta2)./beta2).^2.*(sin(N(1).*alpha2)./sin(alpha2)).^2;
I4=I0*(sin(beta2)./beta2).^2.*(sin(N(2).*alpha2)./sin(alpha2)).^2;
%plot
figure(1)
plot(theta,I1,'r')
hold on
plot(theta,I3,'g')
grid on
xlabel('theta (rad)')
ylabel('Intensity (W/m^2)')
title('Multi slit diffraction for N=5')
hold off
figure(2)
plot(theta,I2,'r')
hold on
plot(theta,I4,'g')
grid on
xlabel('theta (rad)')
ylabel('Intensity (W/m^2)')
title('Multi slit diffraction for N=10')
hold off