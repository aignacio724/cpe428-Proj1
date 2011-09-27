Y = imread('Landscape.jpg');
X = imread('HiggsBoson.jpg');
tempX = rgb2gray(X);
tempY = rgb2gray(Y);
a = imresize(Y, 0.01);
b = imresize(X, 0.01);

figure, imshow(X), title('Group Picture');
figure, imshow(Y), title('Landscape');
figure, imshow(a), title('Scaled down 99%');
figure, imshow(b), title('Scaled down 99%');

figure
subplot(2,2,3), imshow(X), title('Original');
subplot(2,2,4), imshow(tempX), title('Gray Scale');
subplot(2,2,1:2), imhist(tempX), title('Histogram');


figure
subplot(2,2,3), imshow(Y), title('Original');
subplot(2,2,4), imshow(tempY), title('Gray Scale');
subplot(2,2,1:2), imhist(tempY), title('Histogram');

max(tempX)
min(tempX)
max(tempY)
min(tempY)
who