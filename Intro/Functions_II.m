clear all

%
%   Ball thrown with air resistance
%

% a)

[x,y] = kastigfelt(0,10,45,0:0.5:10);

%%
% b)
clear all

k = 0.1;
m = 0.5;
g = 9.81;

delta_t = 0.0001;
t = 0:delta_t:10;

y1(1) = 0;
x1(1) = 0;
vy1(1) = 45;
vx1(1) = 10;

for i = 1:length(t)-1
    
    ay1(i) = -g - vy1(i)*k/m;
    ax1(i) = -vx1(i)*k/m;
    vy1(i+1) = vy1(i) + ay1(i)*delta_t;
    vx1(i+1) = vx1(i) + ax1(i)*delta_t;
    y1(i+1) = y1(i) + vy1(i)*delta_t + ay1(i)*delta_t.^2/2;
    x1(i+1) = x1(i) + vx1(i)*delta_t + ax1(i)*delta_t.^2/2;
    
end

y2(1) = 0;
x2(1) = 0;
vy2(1) = 45;
vx2(1) = 10;

for i = 1:length(t)-1
    
    ay2(i) = -g - vy2(i)*k.^2/m;
    ax2(i) = -vx2(i)*k.^2/m;
    vy2(i+1) = vy2(i) + ay2(i)*delta_t;
    vx2(i+1) = vx2(i) + ax2(i)*delta_t;
    y2(i+1) = y2(i) + vy2(i)*delta_t + ay2(i)*delta_t.^2/2;
    x2(i+1) = x2(i) + vx2(i)*delta_t + ax2(i)*delta_t.^2/2;
    
end

y3(1) = 0;
x3(1) = 0;
vy3(1) = 45;
vx3(1) = 10;

for i = 1:length(t)-1
    
    ay3(i) = -g;
    ax3(i) = 0;
    vy3(i+1) = vy3(i) + ay3(i)*delta_t;
    vx3(i+1) = vx3(i) + ax3(i)*delta_t;
    y3(i+1) = y3(i) + vy3(i)*delta_t + ay3(i)*delta_t.^2/2;
    x3(i+1) = x3(i) + vx3(i)*delta_t + ax3(i)*delta_t.^2/2;
    
end

plot(x1, y1)
hold on

plot(x2, y2, 'r')
plot(x3, y3, 'g')

%%

%
%             Numerical derivation as a function
%

clear all

t = 0:0.1:10;

y = @(t) sin(t);

[dy] = numderiv(t,y);

plot(t, dy)

%%

%
%            Double derivation of cosine-function
%

clear all

t1 = 0:0.0001:10;

T = 2;

x = @(t) cos(2*pi*t/T);

[dx] = numderiv(t1,x(t1));

[dx2] = numderiv(t1(1:length(dx)),dx);

plot(t1(1:length(dx2)),dx2)
hold on
plot(t1(1:length(dx)),dx)
plot(t1,x(t1))

%%

%
%             Double derivation function
%

clear all

delta_t1 = 0.0001;
t1 = 0:delta_t1:10;

T = 2;

x = @(t) cos(2*pi*t/T);

[dx2] = numderiv2(t1, delta_t1, x(t1));

plot(t1(1:length(dx2)), dx2)