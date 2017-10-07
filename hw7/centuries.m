function char_vect = centuries (year)
roman_no_vect = {'I' 'II' 'III' 'IV' 'V' 'VI' 'VII' 'VIII' 'IX' 'X' 'XI' 'XII' 'XIII' 'XIV' 'XV' 'XVI' 'XVII' 'XVIII' 'XIX' 'XX' 'XXI' ...
    'XXII' 'XXIII' 'XXIV' 'XXV' 'XXVI' 'XXVII' 'XXVIII' 'XXIX' 'XXX'};
if sum(year>3000) || ~isscalar(year) || year<=0 || ~(year == fix(year))
    char_vect = '';
else
    char_vect = roman_no_vect{fix((year-1)/100)+1};
end
end