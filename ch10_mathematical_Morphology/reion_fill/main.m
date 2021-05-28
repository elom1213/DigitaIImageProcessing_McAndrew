img = imread("nicework.tif");
mask = ones(3);
img = imdilate(img, mask) & ~img;
subplot(1, 2, 1);
imshow(img);

img = region_fill(img, [74 52], mask);
subplot(1, 2, 2);
imshow(img);