function [ Jx ] = jacobianP8c( x )
% Implements the Jacobian matrix of the equation system implemented in
% functionP8c.

Jx = zeros(4,2);

Jx(1,1) = 1^x(2);
Jx(2,1) = 2^x(2);
Jx(3,1) = 3^x(2);
Jx(4,1) = 4^x(2);

Jx(1,2) = x(1)*log(1)*1^x(2);
Jx(2,2) = x(1)*log(2)*2^x(2);
Jx(3,2) = x(1)*log(3)*3^x(2);
Jx(4,2) = x(1)*log(4)*4^x(2);

end

