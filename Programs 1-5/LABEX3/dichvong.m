clc;
disp("g(n)=")
g = [1, 2, 3, 4, 5, 6];
disp(g);

disp("g(n+1)=")
disp( circshift(g, -1) );

disp("g(n-2)=");
disp( circshift(g, 2) );
