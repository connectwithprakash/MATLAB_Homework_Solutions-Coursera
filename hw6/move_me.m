function w = move_me(v,a)
if nargin<2
    w = [v(v~=0) v(v==0)];
else
    w = [v(v~=a) v(v==a)];
end
end
