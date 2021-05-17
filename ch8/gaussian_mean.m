# p220 removing gaussian nois
img = imread("blocks.tif");
s = size(img);

imga = zeros(s(1), s(2), 10);
for(i = 1:50)
    imga(:,:,i) = imnoise(img, "gaussian");
endfor

imshow(uint8(imga(:,:,1)));
figure(); imshow(uint8(mean(imga,3)));
