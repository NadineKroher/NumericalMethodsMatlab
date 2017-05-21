function [ y ] = functionP6c( x )
% function used to demonstrate the use of quad, quadl and integral

y = cos(x)./(1+x.^2)-sin(x).*atan(x);

end

