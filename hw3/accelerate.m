function amag = accelerate (F1,F2,m)
F = F1+F2;
amag = sqrt(sum(F(1:end,1).^2))./m;
end
