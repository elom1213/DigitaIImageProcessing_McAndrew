img = imread("newborn.tif");

%D = [ 0 56;84 28 ];
%D = repmat(D, 128, 128);

% level will gives quantized tone from 0 to level
level = 7;
scale = 255/level;
%img = double(img);

D = [ 0 scale*3/4;scale-1 scale*1/4 ];
D = repmat(D, 128, 128);

imgQuant = floor(img/scale); % 0 <= imgQuant <= level
imgDither = imgQuant + ((img - scale*imgQuant)>D);

subplot(1,2,1),imshow(uint8(imgQuant*scale));
subplot(1,2,2),imshow(uint8(imgDither*scale));