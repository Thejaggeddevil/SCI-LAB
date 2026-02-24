clc;
clear;
close;
// Read image
K = imread("D:\C Download\download.jpg");
K = im2double(K);
// Create averaging filter
w = ones(7,7) / 49;
// Color image filtering
y_color = imfilter(K, w);
// Convert to grayscale
K_gray = rgb2gray(K);
// Grayscale filtering
y_gray = imfilter(K_gray, w);
// Display images
subplot(2,2,1);
imshow(K);
title("Original Color Image");
subplot(2,2,2);
imshow(y_color);
title("Smoothed Color Image");
subplot(2,2,3);
imshow(K_gray);
title("Original Grayscale Image");
subplot(2,2,4);
imshow(y_gray);
title("Smoothed Grayscale Image");