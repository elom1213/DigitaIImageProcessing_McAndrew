imsize = 80;
masksize = imsize/8;
img1 = zeros(size);

img1(1+imsize/4:3*imsize/4,1+imsize/4:3*imsize/4) = 1;
mask = strel("disk", masksize,0);
img2 = imopen(img, mask);
subplot(1,2,1);
imshow(img1);
subplot(1,2,2);
imshow(img2);