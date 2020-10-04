clear all

y(1) = 3;

delta_t = 0.00001;

t = 0:delta_t:10;
f = @(t,y) 3*t-y+2;


for i = 1:length(t)-1

    k1(i) = f(t(i),y(i));
    k2(i) = f(t(i) + delta_t/2, y(i) + k1(i)*delta_t/2);
    k3(i) = f(t(i) + delta_t/2, y(i) + k2(i)*delta_t/2);
    k4(i) = f(t(i) + delta_t, y(i) + k3(i)*delta_t);
    
    y(i+1) = y(i) + (k1(i) + 2*k2(i) + 2*k3(i) +k4(i))*delta_t/6;
    
end

plot(t,y)