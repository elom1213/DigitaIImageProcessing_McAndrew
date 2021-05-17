img = double(imread("newborn.tif"));

hpf = [1 -2 1;-2 4 -2;1 -2 1];
lpf = fspecial("average", [5 5]);

img_hpf = filter2(hpf, img);
img_hpf = normalize(img_hpf);
figure();
imshow(img_hpf);
#imshow(mat2gray(img_hpf));

img_lpf = filter2(lpf, img);
img_lpf = normalize(img_lpf);
figure();
imshow(img_lpf);
#imshow(mat2gray(img_lpf));
