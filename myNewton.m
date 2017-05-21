function [ xmin, numIter ] = myNewton( f, x0, tol )

% uses Newton's method to find the minimum xmin of function f, starting at
% x0, with a step tolerance tol; numIter are the number of iterations
% needed

numIter = 0;
delta = tol+1;

while delta > tol
    H = myHessian(f,x0);
    g = myGradient(f,x0);
    d = -H\g';
    x0 = x0 + d';
    delta = norm(d);
    numIter = numIter + 1;
end
xmin = x0;
end

