function [E,N] = cyclotron(V)
B = 1.6;
m = 3.344e-27;
q = 1.603e-19;
s = m*V/q/B^2;
r = sqrt(s);
N = 0;
x =- r/2; 
while x>=-0.5
    x = x+(-1)^N*2*r;
    N = N+1;
    r = sqrt(r^2 + 2*s);
end
E = V*N*1e-6;
end
    