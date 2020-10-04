clear all

%                         Exercise 1

x = @(t,w) 3*cos(w*t-pi/4);

w0 = pi/5;

t1 = linspace(-10, 20, 1000);

plot(t1, x(t1,w0))
xlabel('Time');
ylabel('x(t,w)');

%%                       Exercise 3 

%(a)

x = @(O) cos(O);

O1 = linspace(0, 6*pi, 1000);

plot(O1, x(O1))
xlabel('O');
ylabel('x(O)');

%% (b)

x = @(t) cos(0.2*pi*t);

t1 =linspace(0, 30, 100);

plot(t1, x(t1))
xlabel('Time');
ylabel('x(t)');

%% (c)

x = @(t, T) cos(2*pi*t/T);

T0 = 2*pi;

t1 = linspace(0, 6*pi, 1000);

plot(t1, x(t1, T0))
xlabel('T period');
ylabel('x(t, T))');

%% (d)

x = @(t, T) cos(2*pi*t/T + pi/2);

T0 = 2*pi;

t1 = linspace(0, 6*pi, 1000);

plot(t1, x(t1, T0))
xlabel('T period');
ylabel('x(t, T))');