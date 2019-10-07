%Van der Pol equation
%integrate and plot
%parmaters
%x(1)=v, x(2)=v_dot
%epsilon=esp takes value below
%equations
f=@(t,x,esp)[x(2);-esp*(x(1)^2-1)*x(2)-x(1)];
%initial condtions
x0=[0.5;0]; %initial x, x_dot
x01=[0;3];
tspan=[0 100];
%integration
esp=1;
[t1,x1]=ode45(f,tspan,x0,[],esp);
[t3,x3]=ode45(f,tspan,x01,[],esp);
esp=5;
[t2,x2]=ode45(f,tspan,x0,[],esp);
[t4,x4]=ode45(f,tspan,x01,[],esp);
%plot
figure(1);
plot(x1(:,1),x1(:,2)); %position then velocity
grid on;
xlabel('x (m)');
ylabel('x_dot (m/s)');
title('Van der Pol equations');
figure(2);
plot(x3(:,1),x3(:,2)); %position then velocity
grid on;
xlabel('x (m)');
ylabel('x_dot (m/s)');
title('Van der Pol equations');
figure(3);
plot(x2(:,1),x2(:,2)); %position then velocity
grid on;
xlabel('x (m)');
ylabel('x_dot (m/s)');
title('Van der Pol equations');
figure(4);
plot(x4(:,1),x4(:,2)); %position then velocity
grid on;
xlabel('x (m)');
ylabel('x_dot (m/s)');
title('Van der Pol equations');
figure(5)
plot(t1,x1(:,1));
grid on
hold on
plot(t1,x1(:,2));
hold off
figure (6);
plot(t3,x3(:,2));
grid on
hold on
plot(t3,x3(:,2));
hold off
figure(7)
plot(t2,x2(:,1));
grid on
hold on
plot(t2,x2(:,2));
hold off
figure (8);
plot(t4,x4(:,1));
grid on
hold on
plot(t4,x4(:,2));
hold off
fprintf('Figure 1 is (0.5,0) initial and esp=1;\n Figure 2 is (0,3) initial and esp=1; \n Figure 3 is (0.5,0) initial and esp=5; \n Figure 4 is (0,3) initial and esp=5\n')