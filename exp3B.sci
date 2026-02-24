clc;
clear;
close;

// ===============================
// 1. Read Images
// ===============================
a = imread("D:\C Download\images.jpg");
b = imread("D:\C Download\pexels-quang-nguyen-vinh-222549-2563129.jpg");

// ===============================
// 2. Resize using crop (same size)
// ===============================
[ra, ca, ka] = size(a);
b = imresize(b, [ra ca]); 

// ===============================
// 3. Convert to double for math operations
// ===============================
ad = double(a);
bd = double(b);

// ===============================
// 4. Create MASK (Detect object region)
// Here: background assumed green dominant
// Object pixels = where green is NOT dominant
// ===============================

R = ad(:,:,1);
G = ad(:,:,2);
B = ad(:,:,3);

// Logical mask
mask = (G < R) | (G < B);

// ===============================
// 5. Start with original image1
// ===============================
c = ad;   // work in double

// ===============================
// 6. Selective Blending
// Only inside mask → average a and b
// Outside mask → keep original a
// ===============================

for k = 1:3
    tempA = ad(:,:,k);
    tempB = bd(:,:,k);
    
    blended = (tempA + tempB) / 2;   // average
    
    // Apply blending only where mask is true
    tempA(mask) = blended(mask);
    
    c(:,:,k) = tempA;
end

// Convert back to uint8
c = uint8(c);

// ===============================
// 7. Display Results
// ===============================
figure();

subplot(1,3,1);
imshow(a);
title("First Image (Original)");

subplot(1,3,2);
imshow(b);
title("Second Image");

subplot(1,3,3);
imshow(c);
title("Selective Blended Region");