x = -3:0.1:3; y = -2:0.1:2;
[X,Y] = meshgrid(x,y);
Z = (X.^2 - 2*X).*exp(-X.^2 - Y.^2 -X.*Y);
mesh(X,Y,Z);
xlabel('X'); ylabel('Y'); zlabel('Z');
title('\it{plot3 example}');