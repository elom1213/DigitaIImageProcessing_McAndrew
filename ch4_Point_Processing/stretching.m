img = imread("pout.tif");
whos img;

imshow(img);
figure(), imhist(img), axis tight;

ina = 100;
inb = 130;
outa = 60;
outb = 190;

imgStretch = double(img);

for col = 1:size(img,1),
    for row = 1:size(img,2),
        color = double(img(col, row));
        # stretch pixels between ina, inb to outa, outb
        if color <= inb && color >= ina,
            imgStretch(col, row) = outa + (color-ina)*(outb-outa)/(inb-ina);
        endif
        if color < ina
            imgStretch(col, row) = color*outa/ina;
        endif
        if color > inb
            imgStretch(col, row) = outb +(color-inb)*(255-outb)/(255-ina);
        endif
    endfor
endfor

imshow(imgStretch/255);