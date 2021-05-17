# p214 remove salt and pepper rgb noise
img = imread("twins.tif");
imno = imnoise(img, "salt & pepper", 0.3);

imshow(imno);

r = imno(:,:,1);
g = imno(:,:,2);
b = imno(:,:,3);

r = medfilt2(r);
g = medfilt2(g);
b = medfilt2(b);

imno(:,:,1) = r;
imno(:,:,2) = g;
imno(:,:,3) = b;

figure(), imshow(imno);
