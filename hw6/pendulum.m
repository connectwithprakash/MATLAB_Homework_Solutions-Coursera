function T =  pendulum(L,a0)
theta = a0;
del_t = 1.e-6;
T = 0;
omega = 0;
if L>0
    while theta>0       
         alpha = -9.8*sin(theta)/L;
         omega = omega+alpha*del_t;
         theta = omega *del_t+theta;
         T = T+del_t;
    end
    T = T*4;
end
end
    