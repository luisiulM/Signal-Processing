function [dx] = numderiv(t,x)
% Numerically derive of an arbitrary function by using Euler's method.
    
    dx = zeros(length(x) -1,1);
    
    for i = 1:length(t)-1
        
        dx(i) = (x(i+1) - x(i))./(t(i+1) - t(i));
    
    end

end

