function count = circular_primes (n)
flag = 1;
count = 0;
num = 1;
while num<n
    if isprime(num)
        for ii = 1:length(num2str(num))-1
            if ~isprime(str2num(circshift(num2str(num),ii)))
                flag = 0;
            end
            if flag == 0
                break;
            end
        end
        if flag == 1
            count = count+1;
        end
    end
    num = num+1;
    flag = 1;
end
        