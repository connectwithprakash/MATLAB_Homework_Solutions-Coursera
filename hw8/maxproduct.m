function [ max_prod_element_mat ] = maxproduct( A,no)

[max_prod_row,max_prod_mat_row]= maxproduct_row(A,no);
[max_prod_col,max_prod_mat_col]= maxproduct_col(A,no);
[max_prod_diag,max_prod_mat_diag]= maxproduct_diag(A,no);
[max_prod_rdiag,max_prod_mat_rdiag]= maxproduct_rdiag(A,no);

max_prod_vect = [max_prod_row,max_prod_col,...
    max_prod_diag,max_prod_rdiag];
max_prod_mat_cell = {max_prod_mat_row,max_prod_mat_col,...
    max_prod_mat_diag,max_prod_mat_rdiag,};

[max_prod,index] = max(max_prod_vect);
max_prod_element_mat = max_prod_mat_cell{index};

end

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
end

function [ max_prod, max_prod_mat ] = maxproduct_rdiag(A,no)
[m,n] = size(A);
max_prod = 0;
this_prod = 0;
max_prod_mat = [];
this_prod_mat = [];

for ii = 1:m
    for jj = 1:n
        if ii+no-1<=m && jj-no+1>=1
            this_prod = 1;
            for kk = 0:no-1
                this_prod = this_prod*A(ii+kk,jj-kk);
                this_prod_mat(kk+1,1) = ii+kk;
                this_prod_mat(kk+1,2) = jj-kk;
            end
        end
        if max_prod<this_prod
            max_prod = this_prod;
            max_prod_mat = this_prod_mat;
        end
    end
end       
end