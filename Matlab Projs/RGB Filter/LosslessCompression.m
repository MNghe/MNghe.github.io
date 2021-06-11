clear;
clc;

filePath = "C:\Users\Michael Nghe\Documents\GitHub\MNghe.github.io\Matlab Projs\Lossless Compression\Images";
fileName = "Original.jpg";
fileFullName = fullfile(filePath, fileName);
array = im2double(imread(fileFullName));

% figure;
% image(array);
figure;
imshow(array);

D = dctmtx(size(array, 1));
dct = D.*array.*D';
figure;
imshow(dct);

