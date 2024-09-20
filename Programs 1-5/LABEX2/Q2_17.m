n = 0:1:100;

x = 3*cos(pi*n/97);
x_Zero_Padding = [x 0];
x_1Sample_Delay= [0 x];

n = 0:1:101;
y = n .* x_Zero_Padding + x_1Sample_Delay;

D = 10;

xd = [ zeros(1, D) x ];
xd_Zero_Padding = [xd 0];
xd_1Sample_Delay= [0 xd];
yd = (0:1:101+D) .* xd_Zero_Padding + xd_1Sample_Delay;

delta = y - yd(1+D:1:length(n)+D);

stem(n,delta);