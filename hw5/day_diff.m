function dd = day_diff (month1, day1, month2, day2)
month_days = [31 28 31 30 31 30 31 31 30 31 30 31];
dd = -1;
if isscalar(month1.*month2.*day1.*day2) && month1*month2>=1 && month1*month2<=144 && ...
        month1*month2==fix(month1*month2) && day1*day2>=1 && day1*day2 == fix(day1*day2) ...
        && day1<=month_days(month1) && day2<=month_days(month2)
    dd = abs(sum(month_days(1,1:month1-1))+day1-sum(month_days(1,1:month2-1))-day2);
end