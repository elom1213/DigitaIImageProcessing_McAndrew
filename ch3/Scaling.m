% scaling process

cman = imread("cameraman.tif");
cmand = double(cman);
cmanlogical = cman > 100;

whos cman cmand cmanlogical;

imshow(cman);

figure(), imshow(cmand/255);
figure(), imshow(cmand/512);     % create dark image
figure(), imshow(cmand/128);     % create bright image
figure(), imshow(cmanlogical);   % create binary image
