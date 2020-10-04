%y = 3 + 2*sqrt(-1);

%real(y)     %real
%imag(y)     %imaginary
%abs(y)      %modulus
%angle(y)    %argument
%conj(y)     %conjugate

%/////////////////// 5b

%phi = pi/5;

%A = exp(sqrt(-1)*phi);

%angle(A)

%////////////////// 5c

t1 = linspace(0,5,1000);

y1 = @(t) 15*t - t.^2*sqrt(-1);
y2 = @(t) 20*t + 2*t.^2*sqrt(-1);

%plot(real(y1(t1)),real(y2(t1)))
%plot(imag(y1(t1)),imag(y2(t1)))

vector1 = [y1(0) y1(4)];
vector2 = [y2(0) y2(6)];
vector3 = vector1 + vector2;

%plot(vector1)
%xlabel('Real Axis')
%ylabel('Imaginary Axis')
%hold on

%plot(vector2, 'r')
%plot(vector3, 'g')
%legend y1(4)

%///////////////////////// 5d

t2 = linspace(0, 3/5, 1000);

s = @(t) 5*exp(sqrt(-1)*pi/3)*exp(sqrt(-1)*10*pi*t);

plot(t2, imag(s(t2)))
