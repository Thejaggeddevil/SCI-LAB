clc; 
 
z = imread("D:\C Download\images (3).jpg");
subplot(1,2,1); 
imshow(z); 
title("Orignal image"); 
 
a = double(z); 
 
[m,n] = size(a); 
 
w = [1 1 1 ; 1 1 1 ; 1 1 1]; 
 
b = zeros(m,n); 
 
for i = 2 : m-1 
    for j = 2 : n-1 
 
        b(i,j) = w(1)*a(i-1,j+1) + w(2)*a(i,j+1) + w(3)*a(i+1,j+1) ... 
               + w(4)*a(i-1,j)   + w(5)*a(i,j)   + w(6)*a(i+1,j) ... 
               + w(7)*a(i-1,j-1) + w(8)*a(i,j-1) + w(9)*a(i+1,j-1); 
 
    end 
end 
 
c = int8(b); 
subplot(1,2,2); 
imshow(c); 
title("Frequency Domain image");
