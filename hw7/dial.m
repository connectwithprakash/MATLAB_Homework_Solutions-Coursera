function uint64_dummy =  dial (char)
char_dummy = ['0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'];
num_dummy = [0,1,2,3,4,5,6,7,8,9,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,7,8,8,8,9,9,9,9];
l = length(char);
uint64_dummy = 0;
for ii = 1:l
    if sum(char(ii) == char_dummy)==0
        uint64_dummy = uint64(0);
        return
    end
    uint64_dummy = uint64_dummy + 10^(l-ii)*(sum(num_dummy.*(char(ii)==char_dummy)));
end
uint64_dummy = uint64((uint64_dummy));
end