function p = poly_val (c0,c,x)
if isempty(c)
    p = c0;
elseif isscalar(c)
    p = c0+c*x;
else
    [m,n] = size(c);
    if m>n
        p = c0 + sum(c.*((x*ones(m,n)).^((1:m)')));
    else
        p = c0 + sum(c.*((x*ones(m,n)).^(1:n)));
    end
end