function [ dy ] = functionP9( t,y )
% Auxiliary function which implements a simple system of differential equations to
% demonstrate the use various numerical methods to solve ODEs.

dy = zeros(2,1);
dy(1) = y(1);
dy(2) = -y(2);

end

