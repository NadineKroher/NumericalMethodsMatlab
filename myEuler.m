function [ T, Y ] = myEuler( f, t0, tf, y0, h)

% MYEULER uses Euler's method to solve a system of differntial equations
% evaluated by f. Starting at time instant t0 with initial condition, 
% x0, a solution is approximated at time tf moving in time deltas h.
% T contians the evaluation times and rows of Y contain the corresponding 
% estimates for y(t).

T = t0 : h : tf;
Y = zeros(length(T),length(y0));
Y(1,:) = y0';

for i = 2 : length(T)
    Y(i,:) = Y(i-1,:)+f(T(i-1),Y(i-1,:))'*h;
end

end

