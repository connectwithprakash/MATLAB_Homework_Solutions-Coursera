function [p,i] = max_product (v,n)
len = numel(v);
p_vect_dum = zeros(1,len-n+1);
if n>len
    p = 0;
    i = -1;
else
    for ii = 1:len-n+1
        p_vect_dum(ii)=prod(v(ii:ii+n-1));
    end
    [p,i] = max(p_vect_dum);
end
   