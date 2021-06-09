clear;
clc;

filePath = "C:\Users\Michael Nghe\Documents\GitHub\MNghe.github.io\Matlab Projs\Lossless Compression\Images";
fileName = "Original.jpg";
fileFullName = fullfile(filePath, fileName);
array = im2double(imread(fileFullName));

array_red = array;
array_green = array;
array_blue = array;

array_red(:, :, 1) = 0;
array_green(:, :, 2) = 0;
array_blue(:, :, 3) = 0;

figure;
[ha, pos] = tight_subplot(2, 2,[.01 0], 0.03);

axes(ha(1));
imshow(array);

axes(ha(2));
imshow(array_red)

axes(ha(3));
imshow(array_green)

axes(ha(4));
imshow(array_blue)
