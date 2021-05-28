img = imread("ic.tif");
pwf = [-1 0 1;-1 0 1;-1 0 1];

img1 = filter2(pwf, img);
img2 = filter2(pwf', img);

img3 = sqrt(img1.^2+img2.^2);
img3 = im2bw(img3/255, 0.8);
subplot(1, 2, 1);
imshow(img3);

img = edge(img, "prewitt");
subplot(1, 2, 2);
imshow(img);