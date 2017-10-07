function [ns,np]= fence (lng,seg)
ns = ceil(lng/seg);
np = ns+1;
end