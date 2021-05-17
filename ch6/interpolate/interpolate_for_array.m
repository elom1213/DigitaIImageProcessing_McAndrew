function result = interpolate_for_array(array, scale)

    inversed_x = make_inversed_array(array, scale);
        
     for(i = [1:length(inversed_x)])
        
        neighbor_left = floor(inversed_x(i));
        neighbor_right = ceil(inversed_x(i));
        distance = inversed_x(i) - neighbor_left;
        
        result(i) = get_weight_linear(-distance)*array(neighbor_left) + get_weight_linear(1-distance)*array(neighbor_right);
        
    endfor
        
endfunction
