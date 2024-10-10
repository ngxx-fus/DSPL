% Program P3_10
% Linear Convolution via Circular Convolution
g1 = [1 2 3 4];g2 = [2 2 0 1 1];
% Mục tiêu là làm cho hai cái chuỗi nó bằng nhau
ylin = cconv(g1, g2, 5);
disp('Linear convolution via circular convolution = ');
disp(ylin);
