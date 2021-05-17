img = imread("pout.tif");
whos img;

subplot(2,2,1), imshow(img);
subplot(2,2,2), imhist(img), axis tight;

ina = 100;
inb = 130;
outa = 60;
outb = 190;

imgStretch = double(img);

for col = 1:size(img,1),
    for row = 1:size(img,2),
        color = double(img(col, row));
        # stretch pixels between ina, inb to outa, outb
        if (color <= inb && color >= ina)
            imgStretch(col, row) = map(color, ina, inb, outa, outb);
        elseif (color < ina)
            imgStretch(col, row) = map(color, 0, ina, 0, outa);
        elseif (color > inb)
            imgStretch(col, row) = map(color, inb, 255, outb, 255);
        endif
    endfor
endfor

subplot(2,2,3), imshow(imgStretch/255);
subplot(2,2,4), imhist(uint8(imgStretch)), axis tight;

# same processing using imadjust
# imgadj = imadjust(img, [ina/255 inb/255], [outa/255 outb/255]);
# imshow(imgadj);