function mbd = spherical_mirror_aberr(fn,D)
f = fn*D;
x = (0:0.01:D/2);
theta = asind(x./2./f);
d = 2*f*tand(2*theta).*(secd(theta)-1);
mbd  = 8*0.01/D^2*sum(x.*d);
end