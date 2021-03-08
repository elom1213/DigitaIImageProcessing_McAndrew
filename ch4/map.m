# xlowbd : x's lowerbound
# xuppbd : x's upperbound
# ylowbd : y's lowerbound
# yuppbd : y's upperbound
function result = map(source, xlowbd, xuppbd, ylowbd, yuppbd)
    result = ylowbd + (source - xlowbd)*(yuppbd-ylowbd)/(xuppbd-xlowbd);
endfunction
