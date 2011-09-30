Y = imread('Landscape.jpg');
X = imread('HiggsBoson.jpg');
tempX = rgb2gray(X);
tempY = rgb2gray(Y);
a = imresize(Y, 0.1);
b = imresize(X, 0.1);

figure, imshow(X), title('Group Picture');
figure, imshow(Y), title('Landscape');
figure, imshow(a), title('Scaled down 90%');
figure, imshow(b), title('Scaled down 90%');

%Group Picture
figure
subplot(2,2,3), imshow(X), title('Original');
subplot(2,2,4), imshow(tempX), title('Gray Scale');
subplot(2,2,1:2), imhist(tempX), title('Histogram');

%Landscape Image 
figure
subplot(2,2,3), imshow(Y), title('Original');
subplot(2,2,4), imshow(tempY), title('Gray Scale');
subplot(2,2,1:2), imhist(tempY), title('Histogram');

%Group Picture
[maxValue maxLocation] = max(tempX(:))
[maxRow maxCol] = ind2sub(size(tempX), maxLocation) 
[minValue minLocation] = min(tempX(:))
[minRow minCol] = ind2sub(size(tempX), minLocation)

%Landscape Image 
[maxValue maxLocation] = max(tempY(:))
[maxRow maxCol] = ind2sub(size(tempY), maxLocation) 
[minValue minLocation] = min(tempY(:))
[minRow minCol] = ind2sub(size(tempY), minLocation)

whos