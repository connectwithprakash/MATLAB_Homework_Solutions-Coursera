function out = exp_average (in,b)
persistent b_per;
persistent out_per;
if nargin<2
    if isempty(b_per) 
        b_per = 0.1;
    end
    if isempty(out_per)
        out_per = in;
    else
        out_per = b_per*in+(1-b_per)*out_per;
    end
else
    b_per = b;
    out_per = in;
end
out = out_per;