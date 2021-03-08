cman = imread("cameraman.tif");

figure();
for i = 1:7
    n = 2^i;
    img = uint8(floor(double(cman)/n) * n);
    % ignore 1 to nth most significant bits from 1 byte pixel
    subplot(2, 4, i);
    imshow(img);
end