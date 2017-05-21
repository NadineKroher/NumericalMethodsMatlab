function [ H ] = myHessian( f,x )
% returns the Hessian matrix of function f in point x (two vairables)

h = 10^(-5);
fxx = (f([x(1)+h x(2)])-2*f(x)+ f([x(1)-h x(2)]))/(h^2);
fyy = (f([x(1) x(2)+h]) - 2*f(x) + f([x(1) x(2)-h]))/(h^2);

fxy = (((f([x(1)+h x(2)+h])-f([x(1)-h x(2)+h]))/(2*h))-((f([x(1)+h x(2)-h])-f([x(1)-h x(2)-h]))/(2*h)))/(2*h);
fyx = fxy;

H = [fxx fxy; fyx fyy];

end

