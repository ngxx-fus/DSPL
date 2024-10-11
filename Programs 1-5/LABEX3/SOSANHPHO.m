% lật tín hiệu
clc; clear;
x = [1, -3, -4, 10, 2, 5, 9, 10];

disp(x);
X = x;
N = length(X);
for i=1:floor(N/2)
    temp = X(1+i);
    X(1+i) = X(N+1-i);
    X(N+1-i) = temp;
end
x_fliped = X;
disp(x_fliped);

xfft = fft(x,N);
disp(xfft');
x_flipedfft = fft(x_fliped, N);
disp(x_fliped');