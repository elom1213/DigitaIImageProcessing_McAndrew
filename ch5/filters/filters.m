# p128
img = imread("blocks.tif");

R = [0 0 1;0 1 0;1 0 0];

f1 = [-1 -1 0;-1 0 1;0 1 1];
f2 = f1*R;
f3 = [-1 -1 -1;2 2 2; -1 -1 -1];
f4 = f3';
f5 = [-1 -1 -1;-1 8 -1; -1 -1 -1];
f6 = [1 1 1;1 1 1;1 1 1];

imgf = filter2(f5, img);
imgf = (imgf - min(imgf(:)))/(max(imgf(:)) - min(imgf(:)));

imshow(imgf);