clear all

%    Exercise 7
%   a)

%Ts = 0.01;
%Duration = 0.3;
%tt = 0:Ts:Duration;

%F0 = 394;

%n = 0:1:Duration/Ts;

%xx =9*cos(2*pi*F0*tt + pi/2);

%stem(n,xx)

%   b)

%Ts = 0.01;
%Duration = 0.3;
%F0 = 394;
%Wo = 2*pi*F0*Ts;
%n = 0:1:Duration/Ts;

%xx =9*cos(Wo*n + pi/2);

%stem(n,xx)

%   c)

% 

%%    Exercise 8
%    a)

ampl = 1/4;
freq = [375, -375, 325, -325];



stem(freq(1), ampl)
hold on
stem(freq(2), ampl)
stem(freq(3), ampl)
stem(freq(4), ampl)
ylabel('Complex amplitude')
xlabel('Frequencies')

