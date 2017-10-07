%%Bisection Method of Finding Root
function x_mid = find_zero (f,x1,x2)
x_mid = (x1+x2)/2.0;
while abs(f(x_mid))>1e-10
    y = f(x_mid);
    if y*f(x1)>0.0
        x1=x_mid;
    else
        x2=x_mid;
    end
    x_mid = (x1+x2)/2.0;
end