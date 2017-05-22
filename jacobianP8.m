function [ Jx ] = jacobianP8( x )
% Implements the Jacobian matrix of the equation system implemented in
% functionP8.

Jx = zeros(3,3);

Jx(1,1) = 1 + 2*x(1);
Jx(1,2) = 2 * x(3);
Jx(1,3) = 2 * x(2);
Jx(2,1) = 3 * x(2);
Jx(2,2) = 3 * x(1);
Jx(2,3) = 1 - 2 * x(3);
Jx(3,1) = -2 * x(3);
Jx(3,2) = 1 + 2 * x(2);
Jx(3,3) = -2 * x(1);

end

