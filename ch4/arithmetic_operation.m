# p74
img1 = imread("blocks.tif");
figure(), imshow(img1);

img2 = immultiply(img1, 0.5); # img2 = img1/2
figure(), imshow(img2);

img3 = immultiply(img1, 2); #img3 = img1 * 2
figure(), imshow(img3);

img4 = imadd(immultiply(img1, 0.5), 128); #img3 = img1 /2 + 128
figure(), imshow(img4);