%                          Plot the cosine function
clear all

t1 = linspace(0,10,250);
w1 = pi;
w2 = 2*pi/3;

x1 = @(t,w) cos(w*t);

plot(t1, x1(t1,w1), ':o')
hold on
plot(t1, x1(t1,w2), '-.r*')

title('Cosime Function');
xlabel('Time Axis');
ylabel('Function Axis');
legend('w0 = pi','w0 = 2*pi/3');

%                 Numerical derivation uising Eulers method
%%
m = 2; %kg
k = 8; %N/m
y0 = 0.5; %m

delta_t = 1;

t = 0:delta_t:10;

for i = 1:length(t)
    
    dx(i) = (x1(i+1) - x1(i))/delta_t;
    
end

disp(dx)