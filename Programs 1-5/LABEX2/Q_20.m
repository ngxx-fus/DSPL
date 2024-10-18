den = [1    0.75 -0.46 -0.62];
num = [0.9 -0.45  0.35 +0.002];
n = 0:1:44;
subplot(3,1, 1);
plot(n,  impz(num, den, n));







subplot(3,1, 2);
x = [1 zeros(1, length(n)-1)];
plot(n, filter(num, den, x));















subplot(3,1, 3);
x = [ones(1, 45)];
plot(n, filter(num, den, x));