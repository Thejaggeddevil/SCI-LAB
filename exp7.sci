clc;
a = imread("D:\C Download\download (2).jpg");
figure(1);
// Convert to uint8
a = im2uint8(a);
[rows, cols, channel] = size(a);
x = 40;
y = 100;
crop_width  = 300;
crop_height = 200;
x_end = min(x + crop_width - 1, cols);
y_end = min(y + crop_height - 1, rows);
b = a(y:y_end , x:x_end , :);
// Resize
c = imresize(a, 0.5);
// Rotate
d = imrotate(a, 75);
// Red channel (original)
r = a(:,:,1);
// Green channel (cropped)
g = a(:,:,2);
// Blue channel (resized)
b_channel = c(:,:,3);
// ---- Display all in ONE window ----
subplot(3,3,1);
imshow(a);
title("Original Image");
subplot(3,3,2);
imshow(b);
title("Cropped Image");
subplot(3,3,3);
imshow(c);
title("Resized Image");
subplot(3,3,4);
imshow(d);
title("Rotated Image");
subplot(3,3,5);
imshow(r);
title("Red Channel (Original)");
subplot(3,3,6);
imshow(g);
title("Green Channel (Cropped)");
subplot(3,3,7);
imshow(b_channel);
title("Blue Channel (Resized)");