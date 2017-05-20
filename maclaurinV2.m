function [ fx ] = maclaurinV2( x, N )
% Evaluates the McLaurin polynom of degree N at the value x
% (improved recurrence for better numerical stability)
fx = 1;
for k=1:N
    fx = fx + x^k/factorial(k);
end

fx=1/fx;

end