function orms = odd_rms(nn)
Mat1(1,1:nn) = [1:2:2*nn].^2;
orms = sqrt(sum(sum(Mat1))/nn);
end
