function img = make_img()

img = ones(9,9)*10;

img(1:5,1) = 20;
img(1:4,2) = 20;
img(1:3,3) = 20;
img(2,4:8) = 20;
img(2:6,8) = 20;
img(6:5) = 20;
img(8,1:4) = 20;
img(8,8:9) = 20;
img(9,1) = 20;
img(9,4) = 20;
img(9,7) = 20;
img(9,9) = 20;

end