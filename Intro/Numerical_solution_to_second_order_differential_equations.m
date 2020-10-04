%
%           Simple harmonic oscillator
%

% a)

clear all

m = 2; % kg
k = 8; % N/m
v0 = 0; % m/s
x0 = 0; % m

omega2 = k/m; % 1/s^2

delta_t = 0.0001; % sec
t = 0:delta_t:10; % sec

x(1) = 0.1; % m
v(1) = 0; % m/s
a(1) = -omega2 * (x(1)-x0); % m/s^2

for i = 1:length(t)-1
    
    a(i) = -omega2 * (x(i)-x0); % m/s^2
    v(i+1) = v(i) + a(i)*delta_t; % m/s
    x(i+1) = x(i) + v(i)*delta_t; % m
    
end

plot(t,x)

%%

clear all

% b)

m = 1; % kg
k = 16; % N/m
v0 = 0; % m/s
x0 = 0; % m

omega2 = k/m; % 1/s^2

delta_t = 0.0001; % sec
t = 0:delta_t:10; % sec

x = oscillator(t, delta_t, x0, v0, omega2);

plot(t,x)

%%

%
%                       Block with surface friction
%

m = 1; % kg
k = 16; % N/m
v0 = 0; % m/s
x0 = 0; % m

mu1 = 0.01;
mu2 = 0.02;
mu3 = 0.05;

omega2 = k/m; % 1/s^2

delta_t = 0.000001; % sec
t = 0:delta_t:10; % sec

x1 = oscillator(t, delta_t, x0, v0, omega2, mu1);
x2 = oscillator(t, delta_t, x0, v0, omega2, mu2);
x3 = oscillator(t, delta_t, x0, v0, omega2, mu3);

plot(t, x1)
hold on
plot(t, x2)
plot(t, x3)
legend('mu = 0.01', 'mu = 0.02', 'mu = 0.05')

%%

%
%                    Functions as input
%

