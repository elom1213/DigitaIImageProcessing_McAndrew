function result = pwlt(img, a, b)
# piecwise linear transformation

    isChanged = 0;
    result = zeros(size(img));
    siz = length(a);
    
    if(siz ~= length(b))
        error("length of first and second vector are not equal");
    endif
    
    if(~isa(img, "double"))
        isChanged = 1;
        img = im2double(img);
    endif
    
    for(i = 1:(siz-1))
        pix = find(img >= a(i) & img < a(i+1));
        result(pix) = map(img(pix), a(i), a(i+1), b(i), b(i+1));
    endfor
    
    pix = find(img == a(siz));
    result(pix) = b(siz);
    
    if(isChanged == 1)
        result = uint8(result*255);
    endif

endfunction
