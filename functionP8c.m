function [ fx ] = functionP8c( x )
% Auxiliary function to demonstrate the use of the Gauss-Newton method to
% adjust a non-linear function to data points

fx = zeros(4,1);
% functions are fitting residuos for each data point
fx(1) = x(1)*1^x(2)-13.9; 
fx(2) = x(1)*2^x(2)-14.45;
fx(3) = x(1)*3^x(2)-14.88;
fx(4) = x(1)*4^x(2)-15.33;

end
