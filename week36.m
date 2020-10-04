clear all

fc = 3/2;
fdelta = 1/2;

t1 = linspace(0,2,1000);

x = 2*sin(2*pi*fdelta*t1).*sin(2*pi*fc*t1);

plot(t1, x)