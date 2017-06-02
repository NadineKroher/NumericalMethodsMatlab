clear all; %clc;

% parameters
t0 = 0.0;
tf = 1.0;
y0 = [1;1];

% solve the system of ODEs in functionP9 and compute execution time and
% error for different step sizes h
h = [0.1, 0.01, 0.001];
yTrue = [exp(1.0),exp(-1.0)];
error = zeros(size(h));
times = zeros(size(h));
for i = 1 : length(h)
    tic
    % *** Uncomment one of the four options below
    % 1.) Euler's method
    % [t,yApprox] = myEuler(@functionP9,t0,tf,y0,h(i));
    % 2.) Euler's midpoint method
    % [t,yApprox] = myEulerMidPoint(@functionP9,t0,tf,y0,h(i));
    % 3.) Runge-Kutta method
    [t,yApprox] = myRungeKutta(@functionP9,t0,tf,y0,h(i));
    % ******************
    times(i) = toc;
    error(i) = norm(yTrue-yApprox(end,:));
end
% print h, error and computation times
format long
disp('   [ h - error - comp. time]');
disp([h', error', times'])
% plot the error over h
subplot(3,1,1);
plot(h,error,'bo-')
% compute and print the convergence rate
% plot the log error over log h
loglog(h,error,'bo-')
% convergence rate p: shrink h by 2, error will shrink by 2^p 
p = polyfit(log(h),log(error),1);
format short
disp('rate of convergence:')
disp(p(1))

 % 4.) Matlab ode45 command
myOptions = odeset;
myOptions.RelTol = 10^(-6);
[t,yApprox] = ode45(@functionP9,[t0 tf],y0,myOptions);
disp('error using ODE45:')
disp(norm(yApprox(end,:)-yTrue));