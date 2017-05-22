clear all; clc;

% parameters
tol = 10^(-8); % step tolerance
x0 = [0; 0; 0]; % start vector --> change this to see if it affects the results
maxIter = 500; % max. number of iterations allowed

%% Use the Gauss-Newton method to find a minimum squared error solution to a non-linear equation system
[xOpt, ~] = myGaussNewton(@functionP8, @jacobianP8, x0, tol, maxIter);
disp('solution non-linear system:')
disp(xOpt)
err = norm(functionP8(xOpt));
disp('error non-linear system:')
disp(err)

%% Use the Gauss-Newton method to find a minimum squared error solution to linear equation system
[xOpt, ~] = myGaussNewton(@functionP8b, @jacobianP8b, x0, tol, maxIter);
disp('solution linear system:')
disp(xOpt)
err = norm(functionP8b(xOpt));
disp('error linear system:')
disp(err)

%% Use the Gauss-Newton method to adjust a non-linear ax^b function to data points
% plot the data points
year = 1:4;
pas = [13.9 14.45 14.88 15.33];
plot(year,pas,'rx ');
% fit the function 
xOpt = myGaussNewton( @functionP8c, @jacobianP8c, [1,3.5]', 10^(-5), maxIter );
% plot the function
hold on;
plot(year,pas,'rx ');
xx = 1:0.1:5;
phi = xOpt(1).*xx.^xOpt(2);
hold on;
plot(xx,phi);
% compute and print the prediction for x = 5
pred = xOpt(1)*5.^xOpt(2);
disp('Predicted value for x=5.')
disp(pred)