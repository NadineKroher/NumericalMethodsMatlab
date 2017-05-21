function [ df ] = myDerivative( func, x0 )
% approximates the derivative of function FUNC in x0 (first order centered
% difference)

h = 10^(-5);
df = (func(x0+h/2)-func(x0-h/2))./(h);

end

