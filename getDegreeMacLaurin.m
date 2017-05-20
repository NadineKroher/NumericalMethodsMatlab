function [ N ] = getDegreeMacLaurin( x )
% returns the theoretical value of the degree N of a McLaurin polynom,
% necessary to approximate e^(-x) with an absulute error of less than
% 10^(-15)
N = 1;
while x^(N+1)/factorial(N+1) >= 10^(-15)
    N = N+1;
end

