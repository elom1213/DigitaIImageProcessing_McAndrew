function out = region_fill(img, pos, mask)
    current = zeros(size(img));
    last = zeros(size(img));
    last(pos(1), pos(2)) = 1;
    current = imdilate(last, mask) & ~img;
    
    while(any(current(:) ~= last(:)))
        last = current;
        current = imdilate(last, mask) & ~img;
    end
    out = current;
endfunction