function sum_vect_dum = triangle_wave (n_dum)
jj = 0;
sum_vect_dum = ones(1,1001);
for t = 0:4*pi/1000:4*pi
    jj = jj+1;
    sum_dum = 0;
    for k = 0:n_dum
        sum_dum = sum_dum+((-1)^k*sin((2*k+1)*t))/((2*k+1)^2);
    end
    sum_vect_dum(1,jj) = sum_dum;
end