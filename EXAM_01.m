% time interval
clf;
n_start = 0;
n_stop  = 100;
samples = 2000;
n_step = ( n_stop - n_start ) / ( samples);
n = n_start : n_step : n_stop - n_step;

% signal
a = 0.004*pi;
b = 0.4*pi;
c = - pi / 2;
A = 2;
arg = a * n .* n + b * n + c;
x = A * cos(arg);

% display
y_min = -3;
y_max =  3;
x_min = n_start;
x_max = n_stop;
plot(n, x, 'r-');
xlabel("Time interval");
ylabel("Amplitude");
grid("on");
axis([x_min x_max y_min y_max]);
