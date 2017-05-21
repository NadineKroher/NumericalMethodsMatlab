function [yy] = functionP6(xx)
% returns the approximated value in xx using not-a-knot splines with nodes
% (alpha,f_alpha)
alpha = [0 2 3 5 6 8 9 11 12 14 15];
f_alpha = [10 10 10 10 10 10 10.5 15 50 60 85];
yy = spline(alpha,f_alpha,xx);

end