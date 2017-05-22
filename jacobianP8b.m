function [ Jx ] = jacobianP8b( x )
% Implements the Jacobian matrix of the equation system implemented in
% functionP8b.

Jx = zeros(3,3);

Jx(1,1) = 1;
Jx(1,2) = 1;
Jx(1,3) = 1;
Jx(2,1) = 1;
Jx(2,2) = -1;
Jx(2,3) = -2;
Jx(3,1) = -1;
Jx(3,2) = 3;
Jx(3,3) = 1;

end

