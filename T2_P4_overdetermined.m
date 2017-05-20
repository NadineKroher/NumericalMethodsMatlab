% Fitting of a polynomial vs. a trigonometric function to data (formulation as
% an overdetermined equation system
Rc = zeros(4,1); % quality of the fitting
x = [0, pi/4, pi/2, 3*pi/4, pi, 5*pi/4, 3*pi/2, 7*pi/4, 2*pi]';
y = [-6, 2, 5,-1, -2, 1,3,-5,-6]';

% polynomial, N = 1
[c,A] = fitPoly(x,y,1);
yy = A*c;
Rc(1) = (norm(yy-mean(y))/norm(y-mean(y)))^2;
subplot(2,2,1)
plot(x,y,'rx-')
hold on;
plot(x,yy,'kx-')
title('Polynomial, N=1')

% polynomial, N = 3
[c,A] = fitPoly(x,y,3);
yy = A*c;
Rc(2) = (norm(yy-mean(y))/norm(y-mean(y)))^2;
subplot(2,2,2)
plot(x,y,'rx-')
hold on;
plot(x,yy,'kx-')
title('Polynomial, N=3')

% polynomial, N = 5
[c,A] = fitPoly(x,y,5);
yy = A*c;
Rc(3) = (norm(yy-mean(y))/norm(y-mean(y)))^2;
subplot(2,2,3)
plot(x,y,'rx-')
hold on;
plot(x,yy,'kx-')
title('Polynomial, N=5')

% trigonometric functions
[c,A] = fitTrig(x,y);
yy = A*c;
Rc(4) = (norm(yy-mean(y))/norm(y-mean(y)))^2;
subplot(2,2,4)
plot(x,y,'rx-')
hold on;
plot(x,yy,'kx-')
title('Trigonometric')

disp('+++ Quality of the fitting +++')
disp('Polynomial, N=1:')
disp(Rc(1))
disp('Polynomial, N=3:')
disp(Rc(2))
disp('Polynomial, N=5:')
disp(Rc(3))
disp('Trigonometric:')
disp(Rc(4))