clc;
i = imread("D:\C Download\download (1).jpg");
if size(i,"c") == 3 then
    i = rgb2gray(i);
end
figure(1);
subplot(2,3,1);
imshow(i);
title("Original Image");
se = ones(3,3);
b = imerode(i,se);
subplot(2,3,2);
imshow(b);
title("Eroded Image");
c = imdilate(i,se);
subplot(2,3,3);
imshow(c);
title("Dilated Image");
be = ones(9,9);
s1 = imopen(i,be);
subplot(2,3,4);
imshow(s1);
title("Opened Image");
ce = ones(11,11);
s2 = imclose(i,ce);
subplot(2,3,5);
imshow(s2);
title("Closed Image");
title("Closed Image");