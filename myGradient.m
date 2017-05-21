function [ g ] = myGradient( f,x )
% returns in g the gradient of a function f in two variables in point x
% using the centred difference
h = 10^(-5);
fx = (f([x(1)+h x(2)])-f([x(1)-h x(2)]))/(2*h);
fy = (f([x(1) x(2)+h])-f([x(1) x(2)-h]))/(2*h);

g = [fx fy];
end

