cman = imread("cameraman.tif");

for i = 1:5 % 2^1 to 2*5
    img = imresize(imresize(cman, 1/(2^i)), 2^i);
    figure(), imshow(img);
    
    disp(size(img));
end

for i = 1:5
    img = imresize(cman, 1/(2^i));
    figure(), imshow(img);
    
    disp(size(img));
    % not resize agian and size will shrink step by step
    % 128*128   64*64   32*32   16*16   8*8
end
