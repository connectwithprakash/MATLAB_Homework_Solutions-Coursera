function S = sum3and5muls (n)
T = [0:3:n];
F = [0:5:n];
P = [0:15:n];
S = (sum(T)+sum(F)-sum(P));
end
