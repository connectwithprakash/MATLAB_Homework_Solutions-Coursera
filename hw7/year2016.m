function out = year2016 (m)
months = {'January','February','March','April','May','June','July','August','September','October','November','December'};
month_day_nums = ([0 31,29,31,30,31,30,31,31,30,31,30,31]);
days = {'Sun','Mon','Tue','Wed','Thu','Fri','Sat'};
if isscalar(m) && m>=1 && m<=12 && m==fix(m)
    for ii=month_day_nums(m+1):-1:1
        out(ii).month = months{m};
        out(ii).date = ii;
        out(ii).day = days{rem(sum(month_day_nums(1:m))+ii+4,7)+1};
    end
else
    out = [];
end
end