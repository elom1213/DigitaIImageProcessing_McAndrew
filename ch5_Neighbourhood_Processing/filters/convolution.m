img = make_img();
img

p = [0 0 1;0 1 0;1 0 0];
a = [-1 -1 0; -1 0 1;0 1 1];
b = [0 -1 -1;1 0 -1;1 1 0];
c = [-1 -1 -1; 2 2 2;-1 -1 -1];

a = p*a*p;

result_a = filter2(a,img)
result_b = filter2(b',img)
result_c = filter2(c,img)