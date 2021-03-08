function result = Diffusion(filename)
    img = imread(filename);
    width = size(img,1);
    height = size(img,2);
    median = 127;
    
    tmp = zeros(height+2, width+2);
    tmp(2:height+1, 2:width+1) = img;
    result = uint8(zeros(height, width));
    
    for col = 2:height+1,
        for row = 2:width+1,
            if tmp(col, row) < median
                result(col-1, row-1) = 0;
                err = tmp(col, row);
            else
                result(col-1, row-1) = 255;
                err = tmp(col, row) - 255;
            endif
                % unpdate tmp tatrix
                tmp(col, row+1) = tmp(col, row+1) + err*(7/16);
                tmp(col-1, row-1) = tmp(col-1, row-1) + err*(3/16);
                tmp(col-1, row) = tmp(col-1, row) + err*(5/16);
                tmp(col+1, row+1) = tmp(col+1, row+1) + err*(1/16);
        endfor
    endfor
    
    whos img tmp result
    imshow(result);
endfunction 