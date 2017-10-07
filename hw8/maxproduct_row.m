function [ max_prod, max_prod_mat ] = maxproduct_row(A,no)
[m,n] = size(A);
max_prod_mat = [];
max_prod = 0;
for ii = 1:m
    for jj = 1:n
        if jj+no-1<=n
            if max_prod < prod(A(ii,jj:jj+no-1))
                max_prod = prod(A(ii,jj:jj+no-1));
                max_prod_mat(1:no,1) = ii;
                max_prod_mat(1:no,2) = jj:jj+no-1;
            end
        end
    end
end
end