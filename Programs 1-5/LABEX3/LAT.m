% lật tín hiệu
clc; clear;
x_odd = [1, -3, -4, 10, 2, 5, 9];
x_even = [1, -3, -4, 10, 2, 5, 9, 7];


disp(x_odd)
X = x_odd;
N = length(X);
for i=1:floor(N/2)
    temp = X(1+i);
    X(1+i) = X(N+1-i);
    X(N+1-i) = temp;
end
% neg: left 
% pos: right
disp(X);
X = circshift(X, -3);
disp(X);


disp(x_even)
X = x_even;
N = length(X);
for i=1:floor(N/2)
    temp = X(1+i);
    X(1+i) = X(N+1-i);
    X(N+1-i) = temp;
end
disp(X);
X = circshift(X, -3);
disp(X);