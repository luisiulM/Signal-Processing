function [ x ] = oscillator( t, delta_t, x0, v0, omega2, mu )
% Simple harmonic oscillator
%   Calculates the position of a block in a given time period

    g = 9.81;

    x(1) = 0.1; % m
    v(1) = v0; % m/s
    a(1) = -omega2 * (x(1)-x0); % m/s^2

    for i = 1:length(t)-1
    
        a(i) = -omega2*(x(i)-x0) - mu*g*sign(v(i)); % m/s^2
        v(i+1) = v(i) + a(i)*delta_t; % m/s
        x(i+1) = x(i) + v(i)*delta_t; % m
    
    end
end

