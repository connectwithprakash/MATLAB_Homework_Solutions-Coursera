function class_name =  integerize (A)
max_term = max(A(:));
min_term = min(A(:));
if min_term >= intmin('int8') && max_term <= intmax('int8')
    class_name = 'int8';
elseif min_term >= intmin('int16') && max_term <= intmax('int16')
    class_name = 'int16';
elseif min_term >= intmin('int32') && max_term <= intmax('int32')
    class_name = 'int32';
elseif min_term >= intmin('int64') && max_term <= intmax('int64')
    class_name = 'int64';
else
    class_name = 'NONE';
end