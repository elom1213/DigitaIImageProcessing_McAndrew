cman = imread("cameraman.tif");

for i = 1:7
    n = 2^i;
    img = uint8(floor(double(cman)/n) * n);
    % ignore 1 to nth bits from 1 byte pixel
    figure(), imshow(img);
end