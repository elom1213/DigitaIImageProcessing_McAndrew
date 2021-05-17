function result = get_weight_linear(distance)

    if(distance <= 0)
        result = 1 + distance;
    elseif(distance > 0)
        result = 1 - distance;
    endif
    
endfunction
