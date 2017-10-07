function holiday_dum = holiday (month_dum,day_dum)
compare = [month_dum day_dum];
holiday_dum = false;
if sum(compare ==  [1 1]) == 2
    holiday_dum = true;
elseif sum(compare ==  [7 4]) == 2
    holiday_dum = true;
elseif sum(compare ==  [12 25]) == 2
    holiday_dum = true;
elseif sum(compare ==  [12 31]) == 2
    holiday_dum = true;
end