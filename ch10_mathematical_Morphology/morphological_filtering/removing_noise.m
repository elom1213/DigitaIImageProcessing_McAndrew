img = imread("circles.tif");

x = rand(size(img));
noise1 = find(x <= 0.05);
noise2 = find(x >= 0.95);
img(noise1) = 1;
img(noise2) = 0;

subplot(1, 3, 1);
imshow(img);

sq = ones(3);
cross = [0 1 0;1 1 1;0 1 0];

img1 = imclose(imopen(img, sq), sq);
subplot(1, 3, 2);
imshow(img1);

img2 = imclose(imopen(img, cross), cross);
subplot(1, 3, 3);
imshow(img2);
