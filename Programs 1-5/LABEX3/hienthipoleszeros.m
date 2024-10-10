clc;clear;clf;
% y(n)=-0.3y(n-3)+0.7y(n-2)+0.9x(n)+0.2x(n-1)
num = [0.9 0.2];
den = [1 0 0 -0.7 0.3];

figure(1);
disp("Ham truyen (transfer function):")
freq_space = 0:4*pi/100:4*pi-4*pi/100;
plot(freq_space, freqz(num, den, freq_space));

% tf2zpk : transfer function -> z + p + k
[Zeros, Poles, k] = tf2zpk(num, den);
LP = length(Poles);
LZ = length(Zeros);

disp("Cac diem KHONG (zeros):");
disp(Poles);
disp("Cac diem CUC (pole):");
disp(Poles);

figure(2);
zplane(Zeros, Poles);

ONDINH_NHANQUA=true;
ONDINH_BIEN=true;

for i=1:LP
    if abs(Poles(i)) >= 1
        ONDINH_NHANQUA = false;
    end
    if abs(Poles(i)) ~= 1
        ONDINH_BIEN = false;
    end
end

for i=1:LZ
    if abs(Zeros(i)) ~= 1
        ONDINH_BIEN = false;
    end
end

if ONDINH_NHANQUA
    disp("He thong da cho:")
    disp("    Dong thoi ON DINH & NHAN QUA!")
end

if ONDINH_BIEN
    disp("He thong da cho:")
    disp("    On dinh BIEN!")
end