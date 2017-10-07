function logical_mat = logiunpack(cell_vect)
cell_element_no = length(cell_vect);
logical_mat = false(cell_element_no);
for ii = 1: cell_element_no
    for jj = 1:length(cell_vect{ii})
        logical_mat(ii,cell_vect{ii}(jj)) = true;
    end
end