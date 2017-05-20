clear all; clc;
% Use Archimedes' method to determine the value of pi and plot the relative
% error
numIter = 30; 
y = zeros(numIter,1);
errRel = zeros(numIter,1);
y(1) = 2;
errRel(1) = abs(pi-2)/2;
for k = 1 : numIter-1
    y(k+1) = 2^(k+1) * sqrt(0.5*(1-sqrt(1-(y(k)/2^k)^2)));
    errRel(k+1) = abs(y(k+1)-pi)/pi;
end

subplot(2,1,1)
plot(errRel,'rx-')
xlabel('iteration #')
ylabel('relative error')
title('relative error using original recurrence')

% NOTE: The plot shows that the relative error increases after 25
% iterations due to numerical cancelation --> see improved recurrence below

% Use Archimedes' method in an improved recurrence to determine the value 
% of pi and plot the relative error

numIter = 30;
y = zeros(numIter,1);
errRel = zeros(numIter,1);
y(1) = 2;
errRel(1) = abs(pi-2)/2;
for k = 1 : numIter-1
    y(k+1) = y(k) * sqrt(2/(1+sqrt(1-(y(k)/2^k)^2)));
    errRel(k+1) = abs(y(k+1)-pi)/pi;
end

subplot(2,1,2)
plot(errRel,'rx-','MarkerSize',5)
xlabel('iteration #')
ylabel('relative error')
title('relative error using improved recurrence')