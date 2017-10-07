function P = zero_stat (M)
[m,n] = size(M);
P = 100-(sum(sum(M))/m/n*100);
end