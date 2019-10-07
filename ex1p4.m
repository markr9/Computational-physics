function [ J ] = ex1p4( xmin,xmax,ymin,ymax )
%double integral of function
%fn
f=@(x,y)exp(-x.^2/2).*sin(x.^2+y);
%int
J=dblquad(f,-2,2,-1,1);
end

