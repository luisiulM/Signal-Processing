clear all

m = 2; % kg
k = 8; % N/m
y0 = 0.5; % m
g = 9.81; % m/s^2
dt1 = 0.000001; % sec
dt2 = 0.1; %sec

t1 = 0:dt1:10;
t2 = 0:dt2:10;

y1(1) = 0.3;
v1(1) = 0;
a1(1) = -k/m * (y1(1) - y0) - g;

for i = 1:length(t1)-1
    
    y1(i+1) = y1(i) + v1(i) * dt1;
    v1(i+1) = v1(i) + a1(i) * dt1;
    a1(i+1) = -k/m * (y1(i) - y0) - g;
    
end

y2(1) = 0.3;
v2(1) = 0;
a2(1) = -k/m * (y2(1) - y0) - g;

for i = 1:length(t2)-1
    
    y2(i+1) = y2(i) + v2(i) * dt2;
    v2(i+1) = v2(i) + a2(i) * dt2;
    a2(i+1) = -k/m * (y2(i) - y0) - g;
    
end

subplot(1,2,1)
plot(t1,y1)
xlabel('Tid')
ylabel('y(t)')
title('y(t) med dt = 0.000001 sec')

subplot(1,2,2)
plot(t2,y2)
xlabel('Tid')
ylabel('y(t)')
title('y(t) med dt = 0.1 sec')

