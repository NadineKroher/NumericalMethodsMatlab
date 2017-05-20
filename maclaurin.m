function [ fx ] = maclaurin( x, N )
% Evaluates the McLaurin polynom of degree N at the value x

fx = 1;
for i = 1 : N
    fx = fx + (-1)^i * x^i/factorial(i);
end

end

