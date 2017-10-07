function c = huge_add (a,b)
digit = ['0' '1' '2' '3' '4' '5' '6' '7' '8' '9'];
if ~ischar(a) || ~ischar(b) || ~(sum(sum(a(:)==digit))==length(a)) || ~(sum(sum(b(:)==digit))==length(b))
    c = -1;
    return
end
la = length(a);
lb = length(b);
l = max(la,lb);
carry = 0;
c(1:l)='0';
a = [48*ones(1,l-la),a];
b = [48*ones(1,l-lb),b];
for ii = l:-1:1
    d = carry+a(ii)-48+b(ii)-48;
    carry = fix(d/10);
    c(ii) = 48+rem(d,10);
end
if carry > 0
    c = [carry+48 c];
end
end
    