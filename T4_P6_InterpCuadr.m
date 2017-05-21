clear all; clc;

%% Data points (nodes)
alpha = [0 2 3 5 6 8 9 11 12 14 15];
f_alpha = [10 10 10 10 10 10 10.5 15 50 60 85];
plot(alpha,f_alpha,'kx ');
% plot interpolated curve
xx = 0:0.1:15;
yy = functionP6(xx);
hold on;
plot(xx,yy,'b-')

%% approximate area under curve using quadl
area = quadl(@functionP6,0,15,10^(-4));
disp('area between interpolant and x-axis:')
disp(area)

%% compute derivative in 12.6 and plot tangent
x0 = 12.6;
df_x0 = myDerivative(@functionP6,x0);
tan = df_x0 * (xx-x0) + functionP6(x0);
hold on;
plot(xx,tan,'k-')

%% compute the length of the curve
longitud = quadl(@functionP6b,0,15,10^(-4));
disp('length of the curve:')
disp(longitud)
legend('nodes', 'interpolant', 'tangent in x0 = 12.6')

%% Approximate the integral of functionP6c in [0,5] 
a = 0;
b = 5;
% b = 500; % use this to test a larger integration interval 
tol = 10^(-12);
% integrate using quad, quadl and integral
int_quad = quad(@functionP6c,a,b,tol);
int_quadl = quadl(@functionP6c,a,b,tol);
int_integral = integral(@functionP6c,a,b,'AbsTol',tol);
% true value
prim = cos(b)*atan(b) - cos(a)*atan(a);
% print errors
err_quad = abs(int_quad-prim);
disp('error using QUAD: ');
disp(err_quad);

err_quadl = abs(int_quadl-prim);
disp('error using QUADL: ');
disp(err_quadl);

err_quadl = abs(int_integral-prim);
disp('error using INTEGRAL: ');
disp(err_quadl);