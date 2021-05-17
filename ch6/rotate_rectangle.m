SIZE = 10*8;
rec = zeros(SIZE);
rec(SIZE/8:(SIZE*7/8)-1, SIZE/8:(SIZE*7/8)-1) = ones(SIZE*6/8)*256;

x = imrotate(rec, 30, 'nearest');
y = imrotate(rec, 45, 'nearest');
imshow(mat2gray(x));
figure();
imshow(mat2gray(y));

z = imrotate(rec, 30, 'bilinear');
w = imrotate(rec, 45, 'bilinear');
figure();
imshow(mat2gray(z));
figure();
imshow(mat2gray(w));