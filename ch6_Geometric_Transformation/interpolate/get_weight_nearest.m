function result = get_weight_nearest(distance)

    if(distance <= 0.5 && distance > -0.5)
        result = 1;
    else
        result = 0;
    endif
    
endfunction
