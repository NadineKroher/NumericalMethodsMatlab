function [ yy ] = functionP6b( xx )

% Auxiliary function to compute the length of functionP6
dfx = myDerivative(@functionP6,xx);
yy = sqrt(1+abs(dfx).^2);

end

