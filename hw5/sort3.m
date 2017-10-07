function [o1,o2,o3] = sort3(vector3_dum)
if vector3_dum(1) <= vector3_dum(2) && vector3_dum(1) <= vector3_dum(3)
    if vector3_dum(2) <= vector3_dum(3)
    sorted3_dum = [vector3_dum(1),vector3_dum(2),vector3_dum(3)];
    else
        sorted3_dum = [vector3_dum(1),vector3_dum(3),vector3_dum(2)];
    end
elseif vector3_dum(1) >= vector3_dum(2) && vector3_dum(1) >= vector3_dum(3)
    if vector3_dum(2) >= vector3_dum(3)
    sorted3_dum(1:3) = [vector3_dum(3),vector3_dum(2),vector3_dum(1)];
    else
        sorted3_dum(1:3) = [vector3_dum(2),vector3_dum(3),vector3_dum(1)];
    end
elseif vector3_dum(2)>vector3_dum(1) && vector3_dum(2)>vector3_dum(3)
    sorted3_dum(1:3) = [vector3_dum(3),vector3_dum(1),vector3_dum(2)];
else
    sorted3_dum(1:3) = [vector3_dum(2),vector3_dum(1),vector3_dum(3)];
end
o1= sorted3_dum(1); o2= sorted3_dum(2); o3= sorted3_dum(3);
end
