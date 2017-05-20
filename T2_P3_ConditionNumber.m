clear all; clc;
% Demonstrate the difference between absolute and residual error in linear
% equation systems

% Compute and display the condition number of the hilbert matrix for n =
% 1:15
numCond = zeros(15,1);
for i = 1 : 15
    H = myHilbert(i); % alternatively use hilb(i)
    numCond(i) = cond(H);
end
disp('Condition number for increasing matrix size:')
disp(numCond)
% NOTE: The larger the matrix, the higher the condition number 

% For n = 5, 10, 15 :
% Resolve Hx=w, where w is composed of the sum over columns of H and 
% compute the absolute and residual error. The true solution for x is a 
% vector of ones. 
absError = zeros(3,1);
resError = zeros(3,1);
for i = 1 : 3
    n = i*5;
    H = myHilbert(n);
    w = sum(H);
    x = H\w';
    xTrue = ones(n,1);
    absError(i) = norm(x - ones(n,1));
    resError(i) = norm(H*x - w');
end
disp('Absolute for increasing matrix size:')
disp(absError)
disp('Residual for increasing matrix size:')
disp(resError)

% NOTE: The residual error is always low, since it does not consider
% pertubations in H!