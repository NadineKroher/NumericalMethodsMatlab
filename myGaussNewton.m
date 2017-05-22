function [ beta, iter ] = myGaussNewton( F, J, beta0, tol, maxIter )
% Implements the Gauss-Newton method to find the parameters in beta which
% minimize the error in the equation system implemented in function F with
% Jacobian matrix implemented in function J, starting at beta0 with step
% tolerance tol in a maximum of maxIter iterations. Iter is the number of
% used iterations.

err = Inf;
iter = 0;
beta = beta0;
while (err > tol) && (iter < maxIter)
    d = -J(beta)\F(beta);
    beta = beta + d;
    err = norm(F(beta));
    iter = iter + 1;
end

end

