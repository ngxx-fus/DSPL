%Hàm này được định nghĩa một cách thủ công
%Thực hiện tính chập bằng bằng cách sử dụng vòng tròn
function y = Circonv(x1,x2)
L1 = length(x1); L2 = length(x2);
if L1 ~= L2, error('Sequences of unequal lengths'), end
y = zeros(1,L1);
x2tr = [x2(1) x2(L2:-1:2)];
for k = 1:L1
	sh = circshift(x2tr,1-k);
	h = x1.*sh;
	y(k) = sum(h);
end
