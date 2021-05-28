img = imread("ic.tif");
lf = fspecial("laplacian", 0);
log = fspecial("log", 13, 2);
img1 = filter2(lf, img);
# laplacian filter makes a lot of noise
#img2 = edge(img, "zerocross", 0.1, lf);
img2 = edge(img, "zerocross", 0.1, log);

subplot(1, 2, 1);
imshow(mat2gray(img1));

subplot(1,2,2);
imshow(img2);