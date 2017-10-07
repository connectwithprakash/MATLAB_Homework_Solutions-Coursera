function [Sinvalue,Avg] = sindeg (deg)
[m,n] = size(deg);
rad = deg*pi./180;
Sinvalue = sin(rad);
Avg = sum(sum(Sinvalue))./m./n;
end