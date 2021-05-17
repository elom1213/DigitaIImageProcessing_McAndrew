function result = normalize(img);

minPix = min(img(:));
maxPix = max(img(:));

result = (img - minPix)/(maxPix - minPix);

endfunction
