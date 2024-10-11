% lật tín hiệu
clc; clear;
x = [1 3 -2 4];
%    ^
%    t=0
time_space = -(length(x)-1):1:(length(x)-1);

x_padding = [zeros(1, length(x)-1) x];
x_fliped  = flip(x_padding);

figure(1);

subplot(2,1,1);
plot(time_space, x_padding);grid;

subplot(2,1,2);
plot(time_space, x_fliped);grid;

% so sánh phổ pha

freq_space = -4*pi : (4*pi/100) : 4*pi-(4*pi/100);

h1 = freqz(x_padding, 1, freq_space);
h2 = freqz(x_fliped, 1, freq_space);

figure(2);

subplot(2,1,1);
plot(freq_space/pi, angle(h1));grid;

subplot(2,1,2);
plot(freq_space/pi, angle(h2));grid;

figure(3);

subplot(2,1,1);
plot(freq_space/pi, abs(h1));grid;

subplot(2,1,2);
plot(freq_space/pi, abs(h2));grid;
