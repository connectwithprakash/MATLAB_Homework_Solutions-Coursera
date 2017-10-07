function digit_no = digit_counter (file_name)
digit = '0123456789';
digit_no =0;
fid = fopen(file_name,'r');
if fid<0
    digit_no =-1;
    return;
end
string = fread(fid,inf,'char=>char');
for ii = 1:length(string)
    if sum(string(ii) ==  digit)
        digit_no = digit_no+1;
    end
end
fclose(fid);
end
