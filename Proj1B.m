x = imread('bacteria.bmp');

figure
subplot(221), imshow(x), title('Original');
subplot(222), imshow(x < 150), title('Threshold 150');
subplot(223), imshow(x < 110), title('Threshold 110');
subplot(224), imshow(x < 102), title('Threshold 102');

y = x < 102;
figure, imshow(y);

z = bwboundaries(y);
figure, imshow(y);
text(16,16,strcat('\color{red}Objects Found:',num2str(length(z))))

hold on

for k = 1:length(z)
boundary = z{k};
plot(boundary(:,2), boundary(:,1), 'r', 'LineWidth', 0.2)
end
bwarea(y)
whos
