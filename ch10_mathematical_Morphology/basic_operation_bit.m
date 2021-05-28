A = zeros(8,24);
A(2:5,4:7) = 1;
A(4:7, 2:5) = 1;
A(2:7,10:15) = 1;
A(4:5,12:13) = 0;
A(3:7,18:20) = 1;
A(2:5,22:23) = 1;
A(2,17) = 1;

mask = [0 1 0;1 1 1;0 1 0];

A_erosin = imerode(A, mask)
A_dilate = imdilate(A, mask)
A_open = imopen(A, mask)
A_close = imclose(A, mask)

