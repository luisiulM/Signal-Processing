clear all

I = imread('galaxy2.jpg');
I2 = imread('Me.JPG');

figure(1)
imshow(I)

%for h = 1:3168
    %for w = 1:4752
        %if I2(h,w,3) <= 150 && I2(h,w,2) < 40 && I2(h,w,1) < 40
            %I2(h,w,3) = 0;
            %I2(h,w,2) = 0;
            %I2(h,w,1) = 250;
        %end
    %end
%end

J = rgb2gray(I);

for h = 1:500
    for w = 1:800
        if I(h,w,3) <= 152 && I(h,w,2) < 152 && I(h,w,1) < 152
            I(h,w,3) = 250;
            I(h,w,2) = 250;
            I(h,w,1) = 250;
            
        else
            I(h,w,3) = 0;
            I(h,w,2) = 0;
            I(h,w,1) = 0;
            
        end
    end
end

figure(2)
imshow(I)