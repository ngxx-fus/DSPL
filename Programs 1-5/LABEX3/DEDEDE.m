num = [ 0.15 0.5 0.45 ];
den = [ 1 -0.53 0.46];

freq_space = -(6*pi) : (6*pi/400) : 6*pi- (6*pi/400);
H = freqz(num, den, freq_space);

subplot(2,1,1);
plot(freq_space/pi, abs(H));
title("freq spectrum");
ylabel("amp");
xlabel("freq(unit: pi)");

subplot(2,1,2);
plot(freq_space/pi, angle(H));
title("phase spectrum");
ylabel("amp(unit: pi)");
xlabel("freq(unit: pi)");
