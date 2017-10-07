function no_of_letter = number2letters (n)
ones_string = {'','one','two','three','four','five','six','seven','eight','nine'};
ten2_19_string = {'ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'};
tens_string = {'','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety'};
n_to_string = [];
huns = fix(n/100);
tens = fix(rem(n,100)/10);
ones = rem(n,10);
no_of_letter = 0;
%Calculation
if huns>0
    n_to_string = [n_to_string,ones_string{huns+1}];
    no_of_letter = 7;
end
if tens==0
    n_to_string = [n_to_string,ones_string{ones+1}];
    no_of_letter = no_of_letter+length(n_to_string);
elseif tens==1
    n_to_string = [n_to_string,ten2_19_string{ones+1}];
    no_of_letter = no_of_letter+length(n_to_string);
else
    n_to_string = [n_to_string,tens_string{tens},ones_string{ones+1}];
    no_of_letter = no_of_letter+length(n_to_string);
end
end