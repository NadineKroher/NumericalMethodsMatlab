function [H] = myHilbert(n)
% returns in H a hilbert matrix of size n (same as matlab command "hilb")

H = zeros(n);
for i = 1 : n
    for j = 1 : n
        H(i,j) = 1/(i+j-1);
    end
end

end