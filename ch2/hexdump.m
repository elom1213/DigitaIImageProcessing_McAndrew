function hexdump(filename, n)
    fd = fopen(filename, 'r');
    if fd == -1
        error("file open error");
    endif
    fdec = fread(fd, 16*n, 'uchar');
    idx = find(fdec >= 32 & fdec <= 126);
    fhex = dec2hex(fdec);
    
    hex = repmat(' ', 16*n, 3);
    hex(:, 1:2) = fhex;
    
    text = repmat('.', 16, n);
    text(idx) = char(fdec(idx));
    
    [reshape(hex', 48, n)' repmat(' ', n, 2) reshape(text, 16, n)']
endfunction