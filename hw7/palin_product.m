function n = palin_product(dig,lim)
high_lim = 10^dig-1;
low_lim = 10^(dig-1);
num = zeros(1,90);
for ii = high_lim:-1:low_lim
    r = (ii*(high_lim:-1:low_lim));
    s = flip(str2num(flip(num2str(r.*(r<lim)))));
    num(1,ii) = max(r.*(r==s));
end
n = max(num);
end