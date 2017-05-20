function [ c, A ] = fitTrig( x, y )
% fit a set of trigonometric functions to the data specified in x and y
% c --> coefficients of the function terms
% A --> matrix representing the overdetermined equation system
A = zeros(length(x),4);
A(:,1) = sin(x);
A(:,2) = cos(x);
A(:,3) = sin(2.*x);
A(:,4) = cos(2.*x);
c = A\y;

end

