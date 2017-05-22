function [ fx ] = functionP8b( x )
% Auxiliary function to demonstrate the use of the Gauss-Newton method to
% solve linear equation systems in a minimum squared error sense.
fx = zeros(3,1);
fx(1) = x(1) + x(2) + x(3) - 1;
fx(2) = x(1) - x(2) - 2*x(3);
fx(3) = -x(1) + 3*x(2) + x(3);

end

