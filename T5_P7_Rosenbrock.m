clear all; clc;

%% Draw the Rosenbrock function in x-y plane
[X,Y] = meshgrid(-2:0.1:2, -1:0.1:3);
F = zeros(size(X));
for i = 1 : size(X,1)
    for j = 1 : size(X,2)
        F(i,j) = rosenbrock([X(i,j),Y(i,j)]);
    end
end

surf(X,Y,F)
%contour(X,Y,F) % use this for a contour plot

%% Find the minimum using fminsearch
format long
x0 = [1.9,2];
myOpts = optimset;
optimset.TolX = 10^(-8);
disp('estimated minimum (fminsearch):')
disp(fminsearch(@rosenbrock,x0,myOpts));

%% Find the minimum using Newton's method
format long
tol = 10^(-8);
[xmin, numIter] = myNewton(@rosenbrock,x0,tol);
disp('estimated minimum (Newton):')
disp(xmin);
disp('number of iterations needed:')
disp(numIter)