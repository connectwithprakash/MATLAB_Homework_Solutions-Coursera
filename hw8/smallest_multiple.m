function out = smallest_multiple(n) 
    out = uint64(1);
    for ii = 2:n
        out = lcm(out,ii);
        if out == intmax('uint64')
            out = uint64(0);
            return;
        end
    end