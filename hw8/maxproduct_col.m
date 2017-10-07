function [ max_prod,max_prod_mat ] = maxproduct_col( A,no)
[m,n] = size(A);
max_prod_mat = [];
max_prod = 0;
for ii = 1:m
    for jj = 1:n
            if ii+no-1<=m           
                if max_prod < prod(A(ii:ii+no-1,jj))
                    max_prod = prod(A(ii:ii+no-1,jj));
                    max_prod_mat(1:no,1) = ii:ii+no-1;
                    max_prod_mat(1:no,2) = jj;
                end
            end
    end
end
end