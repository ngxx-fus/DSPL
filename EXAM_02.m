% Khảo sát tính bất biến của hệ thống có phương trình 
%sai phân y(n) = (n-1)*x(n)
% Hiển thị 100 mẫu đầu tiên
% Trễ D = 20 mẫu
% Vẽ x xd trong cùng một hình
% Vẽ y yd d trong cùng một hình

n = 0:(10/100):10-(10/100);
D = 20;
x = cos(2*pi*0.02*n) + cos(2*pi*0.1*n);
y = ((n - 1) .^ 2) .* x;


nd = 0:(10/100):10 + (D-1)*(10/100);
xd = [ zeros(1,D) x];
yd = ((nd - 1) .^ 2) .* xd;

Delta = y - yd(1+D:100+D);
BATBIEN = 1;

for i = 1:100
    if abs(Delta(i)) > 0.00001
        BATBIEN = 0;
        break;
    end
end
if BATBIEN == 1
    disp("He thong da cho co tinh bat bien!");
else
    disp("He thong da cho KHONG co tinh bat bien!");
end

subplot(2, 2, 1);
stem(n, x);
title("x")
axis([0 10 -3 3]);

subplot(2, 2, 2);
stem(nd, xd);
title("xd")
axis([0 12 -3 3]);

subplot(2, 3, 4);
stem(n, y, "r-");
title("y")

subplot(2, 3, 5);
stem(nd, yd, "g-");
title("yd")

subplot(2, 3, 6);
stem(n, Delta, "g-");
title("Delta")
