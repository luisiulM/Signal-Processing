function [x,y] = kastigfelt(y0,v0x,v0y,t)

    % Acceleration (Gravity) [m/s]
    g = 9.81;

    % Position
    x = v0x*t;                 % x-direction [m]
    y = y0 + v0y*t - g*t.^2/2; % y-direction [m]
    
    % Time in witch the ball hits the ground
    
    end_time = (v0y + sqrt(v0y.^2 + 2*g*y0))/g
    
    stem(t,y)
    
end