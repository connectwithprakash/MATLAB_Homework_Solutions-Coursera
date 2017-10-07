function hs = halfsum (A)
[m,n]=size(A);
hs = 0;
if m>n
    p = 1;
    for ii = m:-1:m-n+1
        for jj = n:-1:p
            hs = hs + A(ii,jj);
        end
        p = p+1;
    end
else
    p = m-1;
    for ii = 1:1:m-1
        for jj = 1:1:p
            A(ii,jj)=0;
        end
        p = p-1;
    end
    hs = sum(sum(A));
end
    

