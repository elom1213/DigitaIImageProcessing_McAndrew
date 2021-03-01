img = imread("newborn.tif");

D1 = [ 0 128;192 64 ];
D2 = [ 0 128 32 160;192 64 224 96;48 176 16 144;240 112 208 80 ];

D1 = repmat(D1, 128, 128);
D2 = repmat(D2, 64, 64);

imgDither1 = img>D1;
imgDither2 = img>D2;

figure(); imshow(imgDither1);
figure(); imshow(imgDither2);