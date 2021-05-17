function result = make_inversed_array(array, size)

    X = rref([1 1 1;length(array) 1 size]);
    a = 1/X(1,3);
    
    result = [1:a:length(array)];

    precision_of_units = 4;
    num_shift = 10^precision_of_units;
    result = (round(result.*num_shift))./num_shift;
    
endfunction
