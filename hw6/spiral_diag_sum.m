function sum_dum = spiral_diag_sum (n)
p = 1; c = 2;
sum_dum = 1;
if n>1
    for ii = 1:1:((n+1)/2)-1
        for jj = 1:1:4
        p = p + c;
        sum_dum = sum_dum+p;
        end
        c = c +2;
    end
end