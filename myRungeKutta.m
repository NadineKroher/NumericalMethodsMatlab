function [ T, Y ] = myRungeKutta( f, t0, tf, y0, h)

T = t0 : h : tf;
Y = zeros(length(T),length(y0));
Y(1,:) = y0';

for i = 2 : length(T)
    k1 = f(T(i-1),Y(i-1,:))';
    k2 = f(T(i-1)+0.5*h,Y(i-1,:)+0.5*h*k1)';
    k3 = f(T(i-1)+0.5*h,Y(i-1,:)+0.5*h*k2)';
    k4 = f(T(i),Y(i-1,:)+h*k3)';
    Y(i,:) = Y(i-1,:) + h/6 * (k1 + 2*k2 + 2*k3 + k4); 
end

end

