a = imread("D:\C Download\pexels-souvenirpixels-1519088.jpg")
figure(1);
imshow(a);
xlabel("Original Image");
b = rgb2gray(a);
figure(2);
imshow(b);
c=imadd(b,100);
figure(3);
imshow(a);
xlabel("Final Output")
subplot(3,2,1)
imshow(a);
subplot(3,2,2)
imshow(b)
subplot(3,2,4)
imshow(c)
