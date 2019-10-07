%draw circle radius r
%input
r=input('Enter the radius of the circle: ');
%angles
theta=0:2*pi/90:2*pi;
%x and y
x=r*cos(theta);
y=r*sin(theta);
%plot graph
plot(x,y)
axis('equal');
%title+lables
xlabel('x')
ylabel('y')
title('Circle of radius r')
%cross
hold on;
plot(0,0,'+');
hold off;