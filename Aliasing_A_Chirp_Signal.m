clear all

psi = 0;
f1 = 4000; % Hz
fs = 8000; % sample/sec
mu = 600000; % Hz/s
T = 0.05; % sec

t = 0:0.0001:T;

f = mu*t + f1;

n = 0:1:T*f;

x = cos(pi*mu*(1/fs).^2*n.^2 + 2*pi*(f1/fs)*n + psi);

subplot(1,2,1)
stem(n,x)

subplot(1,2,2)
plot(n,x)