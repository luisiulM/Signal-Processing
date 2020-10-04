clear all

home = 0;
hit = 0;
mean = 70; % m
std = 20; % m
strike = rand(100,1);

N = length(strike);

for i = 1:N-1
    
    if strike(i) >= 0.5
    
        leng = randn * std + mean;
        
        hit = hit+1;
    
        if leng >= 100
            home = home+1;
        
        end
    end
end


Probability = home/hit

