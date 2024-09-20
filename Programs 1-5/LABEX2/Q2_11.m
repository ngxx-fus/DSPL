% Consider the system: y[n] = x[n]x[n-1]
% Determine linear property of the given system.
%clf;
n = 0:1:100;

x_A = 4*cos(pi*n/28);
x_A_Zero_Padding = [x_A 0];
x_A_1Sample_Delay = [0 x_A];
y_A = x_A_Zero_Padding .* x_A_1Sample_Delay;


x_B = 3*sin(pi*n/97);
x_B_Zero_Padding = [x_B 0];
x_B_1S2ample_Delay = [0 x_B];
y_B = x_B_Zero_Padding .* x_B_1Sample_Delay;

a = 2;
b=  7;

x = a .* x_A + b .* x_B;
x_Zero_Padding = [x 0];
x_1Sample_Delay= [0 x];
y = x_Zero_Padding .* x_1Sample_Delay;

disp(sum(y - (a * y_A + b * y_B)));

n = 0:1:100 + 1;

subplot(3, 1, 1);
stem(n, y);

subplot(3, 1, 2);
stem(n, (a * y_A + b * y_B));

subplot(3, 1, 3);
stem(n, y - (a * y_A + b * y_B));