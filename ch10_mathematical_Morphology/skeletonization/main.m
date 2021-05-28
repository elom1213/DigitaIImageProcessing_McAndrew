img = imread("nicework.tif");
mask = ones(3);
img = make_skel(img, mask);
imshow(img);
