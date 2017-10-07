function cell_vect = logipack(logical_matrix)
[m,n] = size(logical_matrix);
cell_vect = cell(1,n);
for ii = 1:m
    if sum(logical_matrix(ii,:))~=0
        cell_vect{ii} = find(logical_matrix(ii,:));
    end
end
end