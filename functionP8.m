function [ fx ] = functionP8( x )
% Auxiliary function to demonstrate the use of the Gauss-Newton method to
% solve non-linear equation systems in a minimum squared error sense.

fx = zeros(3,1);
fx(1) = x(1) + x(1)^2 + 2 * x(2) * x(3) - 0.3;
fx(2) = x(3) - x(3)^2 + 3 * x(1) * x(2) + 0.2;
fx(3) = x(2) + x(2)^2 - 2 * x(1) * x(3) - 0.1;

end

