clear all; clc

% demonstration of numerical smearing
x = [0.001, 0.01, 20, 25];
N = zeros(length(x),1);
app = zeros(length(x),1);
err = zeros(length(x),1);

disp('+++ ORIGINAL RECURRENCE +++')
for i = 1 : length(x)
    N(i) = getDegreeMacLaurin(x(i)); % compute the degree necessary to approximate e^(-x) with an absolute error smaller than 10^(-5)
    app(i) = maclaurin(x(i),N(i)); % approximate e^(-x) using the MacLaurin polinom
    err(i) = abs(app(i)-exp(-x(i)))/exp(-x(i)); % compute the absolute error
    disp(['rel. error for x=' num2str(x(i)) ':  ' num2str(err(i))])
end
% NOTE: Extremely large errors for values far away from zero --> numerical smearing

% approximate e^(-20) with varying degree N and plot the results 
x = 20;
NN = 1 : 100;
app = zeros(length(NN),1);
for i = 1 : length(NN)
    app(i) = maclaurin(x,NN(i));
end
subplot(2,1,1)
bar(NN,app)
xlabel('degree')
ylabel('approximation of e^{(-20)}')
title('original recurrence')
% NOTE: The method does not seem to converge (due to smearing), altering
% sign

% repeat the same process with the improved recurrence
disp('+++ IMPROVED RECURRENCE +++')
x = [0.001, 0.01, 20, 25];
for i = 1 : length(x)
    N(i) = getDegreeMacLaurin(x(i)); % compute the degree necessary to approximate e^(-x) with an absolute error smaller than 10^(-5)
    app(i) = maclaurinV2(x(i),N(i)); % approximate e^(-x) using the MacLaurin polinom
    err(i) = abs(app(i)-exp(-x(i)))/exp(-x(i)); % compute the absolute error
    disp(['rel. error for x=' num2str(x(i)) ':  ' num2str(err(i))])
end

x = 20;
NN = 1 : 100;
app = zeros(length(NN),1);
for i = 1 : length(NN)
    app(i) = maclaurinV2(x,NN(i));
end
subplot(2,1,2);
bar(NN,app)
xlabel('degree')
ylabel('approximation of e^{(-20)}')
title('improved recurrence')