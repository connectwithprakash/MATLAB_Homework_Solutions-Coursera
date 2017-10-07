function total_fare_dum = fare (distance_dum, age_dum)
total_fare_dum = 2;
if distance_dum > 1 && distance_dum<10
    total_fare_dum = total_fare_dum + 0.25*round(distance_dum-1);
elseif distance_dum>10
    total_fare_dum = total_fare_dum + 0.25*9 +0.1*(round(distance_dum)-10);
end
if age_dum<=18 || age_dum>=60
    total_fare_dum = total_fare_dum*0.80;
end