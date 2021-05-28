function result = make_skel(img, mask)

    result = zeros(size(img));
    erode = img;
    while(any(erode(:)))
        opend = imopen(erode, mask);
        result |= erode & ~opend;
        erode = imerode(erode, mask);
    endwhile
    
endfunction