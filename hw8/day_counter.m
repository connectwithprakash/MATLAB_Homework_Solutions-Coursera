%%Using the built-in function
function no_of_mondays = day_counter(year)
    if  ~(year >=1776) || ~(year <= 2016) || year ~= fix(year) || ~isscalar(year)
   no_of_mondays = 0;
    return
    end
    no_of_mondays = sum(weekday(datetime(year,1:12,1))==2);
end