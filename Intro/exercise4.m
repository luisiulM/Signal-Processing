phase = -0.4*pi;

phase2 = -0.2*pi;

phase3 = pi;

x = @(t,w) 10*cos(2*pi*(15)*t + w);

t1 = linspace(0,10,50);

%plot(t1,x(t1,phase))
%plot(t1,x(t1,phase2), 'r')
%plot(t1,x(t1,phase3), 'g')

t2 = linspace(0, 1, 100);

x1 = @(t) 5*cos(2*pi*(100)*t + pi/3);
x2 = @(t) 4*cos(2*pi*(100)*t - pi/4);

%plot(t2, x1(t2))
%hold on
%plot(t2, x2(t2), 'r')

y1 = @(b) x1(b) + x2(b);
y2 = @(b) x1(b) - x2(b);
y3 = @(b) x1(b) .* x2(b);

subplot(1,3,1)
plot(t2, y1(t2))
title('gtegf')

subplot(1,3,2)
plot(t2, y2(t2))

subplot(1,3,3)
plot(t2, y3(t2))