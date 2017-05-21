clear all; clc;

%% Nodes
% create data points / "samples" --> nodes 2:1:8
x = 2:8;
% x = 2:0.5:8; % use this to try more nodes...
B1 = besselj(2,x);
% plot data points
hold on;
plot(x,B1,'kx ')

%% True function values in 2:0.01:8
% plot second order Bessel function in x = [2:0.01:8]  
xx = 2:0.01:8;
B = besselj(2,xx);
plot(xx,B,'b');

%% Polynomial interpolation
% compute polynomial interpolant based on nodes 2:1:8 
P = polyfit(x,B1,length(x)-1);
BInterp = polyval(P,xx);
% plot polynomial interpolant
hold on;
plot(xx,BInterp,'r');
% compute the maximum error between the curves
err = max(abs(B - BInterp));
disp('max. error (using polynomial interpolation)');
disp(err)

%% Spline interpolation with "random" endslopes
% interpolate using splines with "random" endslopes
BSplineRES = spline(x,[0.0009 B1 0.5588] ,xx);
% plot this
hold on;
plot(xx,BSplineRES,'k');
% print max. absolute error
err = max(abs(B-BSplineRES));
disp('max. error (using splines with random endslopes)');
disp(err)

%% Spline interpolation with true endslopes
% interpolate using splines with true endslopes
h = 10^(-5);
y2 = (besselj(2,2+h/2)-besselj(2,2-h/2))/h;
y8 = (besselj(2,8+h/2)-besselj(2,8-h/2))/h;
BSplineTES = spline(x,[y2 B1 y8] ,xx);
% plot this
hold on;
plot(xx,BSplineTES,'g');
% print max. absolute error
err = max(abs(B-BSplineTES));
disp('max. error (using splines with true endslopes)');
disp(err)

%% Spline interpolation with true not-a-knot
% interpolate using splines with not-a-knot
BSplineNAK = spline(x,B1,xx);
% plot this
hold on;
plot(xx,BSplineNAK,'y');
% print max. absolute error
err = max(abs(B-BSplineNAK));
disp('max. error (using splines with true endslopes)');
disp(err)

legend('Nodes','true function','polynomial interp.','spline interp. random slopes','spline interp. true slopes','spline interp. not-a-knot');
