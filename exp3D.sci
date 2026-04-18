img = imread("D:\C Download\images (2).jpg");
// Convert to HSV
hsv_img = rgb2hsv(img);
figure;
subplot(1,2,1);
imshow(img);
xlabel("Original RGB Image");
subplot(1,2,2);
imshow(hsv_img);
xlabel("HSV Image");