% scaling process

cman = imread("cameraman.tif");
cmand = double(cman);
cmanlogical = cman > 100;

whos cman cmand cmanlogical;

%imshow(cman);

subplot(2, 2, 1);
imshow(cmand/255);
subplot(2, 2, 2);
imshow(cmand/512);     % create dark image
subplot(2, 2, 3);
imshow(cmand/128);     % create bright image
subplot(2, 2, 4);
imshow(cmanlogical);   % create binary image
