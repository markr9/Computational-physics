% Fraunhofer diffraction by a rectangular aperture
I0 = 1; %normalized intensity
a=[10,30,20,30,20,10]; %slit width (units of a wavelength)
k =2*pi; %wave number in units of one wavelength
theta=[0.1004, -0.0335, -0.05, 0, -0.0715, 0.1435]; %angular range
beta=0.5*k.*a.*sin(theta); %beta value
t1=sin(beta);
t2=tan(beta);
t1 %min point=0
t2 %max point t2=beta
beta