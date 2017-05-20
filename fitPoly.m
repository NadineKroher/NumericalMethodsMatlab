function [ c, A ] = fitPoly( x, y, N )
% fit a polynomial of degree N to the data specified in x and y
% c --> coefficients of the polynomial
% A --> matrix representing the overdetermined equation system
A = zeros(length(x),N+1);
for i = 0 : N
    A(:,i+1) = (x.^i)';
end
c = A\y;

end

