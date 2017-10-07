function [ max_prod, max_prod_mat ] = maxproduct_diag(A,no)
[m,n] = size(A);
max_prod = 0;
this_prod = 0;
max_prod_mat = [];
this_prod_mat = [];

for ii = 1:m
    for jj = 1:n
        if ii+no-1<=m && jj+no-1<=n
            this_prod = 1;
            for kk = 0:no-1
                this_prod = this_prod*A(ii+kk,jj+kk);
                this_prod_mat(kk+1,1) = ii+kk;
                this_prod_mat(kk+1,2) = jj+kk;
            end
        end
        if max_prod<this_prod
            max_prod = this_prod;
            max_prod_mat = this_prod_mat;
        end
    end
end