% a) This is a HPF since it cuts off low frequencies while retaining high
% frequencies.
clear all

n = 0:1:1;
w = 0:0.01:pi;

h = [1/2 -1/2];
H = @(w) 1/2 - 1/2*exp(-i*w);

subplot(1, 2, 1)
stem(n, h(n+1));
title('Impluse response')
ylabel('response')
xlabel('n')

subplot(1, 2, 2)
plot(w, H(w))
title('Frequency response')
ylabel('response')
xlabel('frequency')

%%

% b) This is a LPF since it cuts off high frequencies, while retaining low
% frequencies.
clear all

n = 0:1:1;
w = 0:0.01:pi;

h = [1/2 1/2];
H = @(w) 1/2 + 1/2*exp(-i*w);

subplot(1, 2, 1)
stem(n, h(n+1));
title('Impluse response')
ylabel('response')
xlabel('n')

subplot(1, 2, 2)
plot(w, H(w))
title('Frequency response')
ylabel('response')
xlabel('frequency')

%%

% c) w0 helps regulate the frequency, so that a decired frequency can be
% removed. This signal can be called BSF since it retains high and low
% frequecies while removing does in the middle.
clear all

n = 0:1:2;
w = 0:0.01:pi;
w0 = [pi/4 pi/2 3*pi/4];

h1 = [1/2 -cos(pi/4) 1/2];
h2 = [1/2 -cos(pi/2) 1/2];
h3 = [1/2 -cos(3*pi/4) 1/2];
H = @(w,w0) 1/2 - cos(w0)*exp(-i*w) + 1/2*exp(-i*w*2);

subplot(1, 2, 1)
stem(n, h1(n+1))
hold on
stem(n, h2(n+1))
stem(n, h3(n+1))
legend('w0 = pi/4', 'w0 = pi/2', 'w0 = 3*pi/4')
title('Impluse response')
ylabel('response')
xlabel('n')

subplot(1, 2, 2)
plot(w, H(w,w0(1)))
hold on
plot(w, H(w,w0(2)))
plot(w, H(w,w0(3)))
legend('w0 = pi/4', 'w0 = pi/2', 'w0 = 3*pi/4')
title('Frequency response')
ylabel('response')
xlabel('frequency')

%%

% d)
clear all

n1 = -20:1:20;

w1 = pi/8;
w2 = 7*pi/8;

x = @(n) cos(w1*n) + cos(w2*n);

stem(n1, x(n1))
title('x = cos(w1*n) + cos(w2*n)')
ylabel('response')
xlabel('n')

%%

% e)
clear all

w1 = pi/8;
w2 = 7*pi/8;
w3 = 1/2*(w1 + w2);
w0 = [w1 w2 w3];

n = -20:1:20;
x = @(n0) cos(w1*n0) + cos(w2*n0); % input

y1 = 1/2*(x(n+1) - x(n));
y2 = 1/2*(x(n+1) + x(n));
y3 = @(w) 1/2*x(n+2) - cos(w)*x(n+1) + 1/2*x(n);

subplot(2,3,1)
stem(n, y1)

subplot(2,3,2)
stem(n, y2)

subplot(2,3,3)
stem(n, y3(w0(1)))

subplot(2,3,4)
stem(n, y3(w0(2)))

subplot(2,3,5)
stem(n, y3(w0(3)))