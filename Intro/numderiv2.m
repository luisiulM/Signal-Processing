function [ dx2 ] = numderiv2( t, delta_t, x )
% Double numerically derive of an arbitrary function by using Euler's method.

    dx2 = zeros(length(x)-1,1);
    
    for i = 1:length(t)-2
        
        dx2(i) = (x(i+2) - 2*x(i+1) + x(i)) / delta_t.^2;
    
    end
    
end
