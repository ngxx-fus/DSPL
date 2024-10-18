clc; clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1); clf;

num = [0.45 0.5 0.25];
den = [1 -0.53 0.46];
freq_space = -5*pi : 5*pi/350 : 5*pi - 5*pi/350;
H = freqz(num, den, freq_space);

subplot(2,1,1);
plot(freq_space/pi, abs(H));
title("pho bien do");
ylabel("amp");
xlabel("freq (unit: pi)");
grid("on");

subplot(2,1,2);
plot(freq_space/pi, angle(H)/pi);
title("pho pha");
ylabel("arg (unit: pi)");
xlabel("freq (unit: pi)");
grid("on");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2); clf;

freq_space = -2*pi : 2*pi/26 : 2*pi - 2*pi/26;
n = (0:52-1);
h = impz(num, den, n)';

h = exp(1i* (0.5 * pi) .* n) .* h;

H = freqz(h, 1, freq_space);

subplot(2,1,1);
plot(freq_space/pi, abs(H));
title("pho bien do");
ylabel("amp");
xlabel("freq (unit: pi)");
grid("on");

subplot(2,1,2);
plot(freq_space/pi, angle(H)/pi);
title("pho pha");
ylabel("arg (unit: pi)");
xlabel("freq (unit: pi)");
grid("on");









