% Bit Plane

cmand = double(imread("cameraman.tif"));

figure();
for i = 1:8
    cman = mod(floor(cmand/(2^(i-1))), 2);
    subplot(2, 4, i);
    imshow(cman);
end

