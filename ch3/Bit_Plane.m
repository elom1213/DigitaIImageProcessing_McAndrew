% Bit Plane

cmand = double(imread("cameraman.tif"));

for i = 1:8
    cman = mod(floor(cmand/(2^(i-1))), 2);
    figure(), imshow(cman);
end

%cman0 = mod(floor(cmand/2^0), 2);
%cman1 = mod(floor(cmand/2^1), 2);
%cman2 = mod(floor(cmand/2^2), 2);
%cman3 = mod(floor(cmand/2^3), 2);
%cman4 = mod(floor(cmand/2^4), 2);
%cman5 = mod(floor(cmand/2^5), 2);
%cman6 = mod(floor(cmand/2^6), 2);
%cman7 = mod(floor(cmand/2^7), 2);

%figure(), imshow(cman0);
%figure(), imshow(cman1);
%figure(), imshow(cman2);