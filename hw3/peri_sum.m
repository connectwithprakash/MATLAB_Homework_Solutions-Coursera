function Sum = peri_sum (A)
Sum = sum(A(1,1:end-1))+sum(A(1:end-1,end))+sum(A(end,2:end))+sum(A(2:end,1));
end