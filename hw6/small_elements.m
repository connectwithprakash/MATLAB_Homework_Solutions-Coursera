function indices = small_elements (x)
[m n] = size(x);
indices = [];
for ii = 1:n
    for jj = 1:m
        if x(jj,ii)<(ii*jj)
            indices = [indices;jj ii];
        else
            continue;
        end
    end
end