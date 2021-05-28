# a : low freq, a2 : high freq
t = [0:7];
a = [0:5:35];
a2 = [a(1:4) 150:5:165];

for(u = 0:7)
    for(v = 0:7)
        b(v+1) = a(v+1)*cos((2*v+1)*pi*u/16);
        b2(v+1) = a2(v+1)*cos((2*v+1)*pi*u/16);
    endfor
        c(u+1) = sum(b);
        c2(u+1) = sum(b2);
endfor
stem(t, c);
figure();
stem(t, c2);

