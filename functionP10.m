function [ dz ] = functionP10( t,z )
% Auxiliary function implementing a system of differential equations to
% demonstrate the use of ode45
dz = zeros(4,1);
dz(1) = z(2);
dz(2) = -2*z(1)+z(3);
dz(3) = z(4);
dz(4) = z(1)-2*z(3);

end

