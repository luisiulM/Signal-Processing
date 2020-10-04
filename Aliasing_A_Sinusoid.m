clear all

% a)

%phase = 0; 
%f0 = 300; % Hz
%fs = 8000; % Hz

%t1 = linspace(0,0.01,500);
%n1 = 0:1:fs/f0;

%xt = @(t) sin(2*pi*f0*t + phase);
%xn = @(n) sin(2*pi*(f0/fs)*n + phase);

%stem(n1,xn(n1))

% b)

phase = 0;


f = [100, 225, 300, 350]; % Hz
fs = 8000; % Hz
T0 = 0.01; % sec

n1 = 0:1:T0*f(1);
n2 = 0:1:T0*f(2);
n3 = 0:1:T0*f(3);
n4 = 0:1:T0*f(4);

xn = @(n,f0) sin(2*pi*(f0/fs)*n + phase);

subplot(2,2,1)
stem(n1,xn(n1,f(1)))
title('frequency 100 Hz')

subplot(2,2,2)
stem(n2,xn(n2,f(2)))
title('frequency 225 Hz')

subplot(2,2,3)
stem(n3,xn(n3,f(3)))
title('frequency 300 Hz')

subplot(2,2,4)
stem(n4,xn(n4,f(4)))
title('frequency 350 Hz')

% c)

%phase = 0;

%f = 7525:125:7900; % Hz
%fs = 8000; % Hz
%T0 = 0.01; % sec

%n1 = 0:1:T0*f(1);
%n2 = 0:1:T0*f(2);
%n3 = 0:1:T0*f(3);
%n4 = 0:1:T0*f(4);

%xn = @(n,f0) sin(2*pi*(f0/fs)*n + phase);

%subplot(2,2,1)
%stem(n1,xn(n1,f(1)))
%title('frequency 7525 Hz')

%subplot(2,2,2)
%stem(n2,xn(n2,f(2)))
%title('frequency 7650 Hz')

%subplot(2,2,3)
%stem(n3,xn(n3,f(3)))
%title('frequency 7775 Hz')

%subplot(2,2,4)
%stem(n4,xn(n4,f(4)))
%title('frequency 7900 Hz')

% d)

%phase = 0;

%f = 32100:125:32475; % Hz
%fs = 8000; % Hz
%T0 = 0.01; % sec

%n1 = 0:1:T0*f(1);
%n2 = 0:1:T0*f(2);
%n3 = 0:1:T0*f(3);
%n4 = 0:1:T0*f(4);

%xn = @(n,f0) sin(2*pi*(f0/fs)*n + phase);

%subplot(2,2,1)
%stem(n1,xn(n1,f(1)))
%title('frequency 7525 Hz')

%subplot(2,2,2)
%stem(n2,xn(n2,f(2)))
%title('frequency 7650 Hz')

%subplot(2,2,3)
%stem(n3,xn(n3,f(3)))
%title('frequency 7775 Hz')

%subplot(2,2,4)
%stem(n4,xn(n4,f(4)))
%title('frequency 7900 Hz')