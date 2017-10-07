function [e,k] = approximate_e (delta)
e = 1;
factorial = 1;
k = 0;
while exp(1)-e>= delta
    k = k+1;
    factorial = factorial*k;
    e = e+(1/factorial);
end
