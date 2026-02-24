clc;
clear;
close;
figure();
// Read images
a = imread("D:\C Download\pexels-nicole-avagliano-1132392-2236713.jpg");
b = imread("D:\C Download\pexels-quang-nguyen-vinh-222549-2563129.jpg");
// Check size
size(a)
size(b)
// Resize b manually according to a
[ra, ca, ka] = size(a);
b = imresize(b, [ra ca]);
// Convert to double
a = double(a);
b = double(b);
// Average blend
c = (a + b) / 2;
// Convert back
c = uint8(c);
// Display
subplot(1,3,1);
imshow(uint8(a));
title("Original Image");
subplot(1,3,2);
imshow(uint8(b));
title("Second Image");
subplot(1,3,3);
imshow(c);
title("Combined Image");