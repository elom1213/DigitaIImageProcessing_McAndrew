function result = interpolate_for_matrix(matrix, final_size)

    has_to_shrink = 0;
    original_hight = size(matrix,1);
    final_hight = final_size(1);
    final_width = final_size(2);

    if(original_hight > final_hight)
        has_to_shrink = 1;
        result = zeros(original_hight, final_width);
    else
        result = zeros(final_hight, final_width);
    endif
    
    for(row = [1:original_hight])
        result(row,:) = interpolate_for_array(matrix(row,:), final_width);
    endfor
    
    for(col = [1:final_width])
        result(1:final_hight,col) = (interpolate_for_array(result(1:original_hight, col)', final_hight))';
    endfor

    if(has_to_shrink)
        result = result(1:final_hight,:);
    endif
    
endfunction
