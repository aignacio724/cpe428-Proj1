x = imread('bacteria.bmp');

figure
subplot(221), imshow(x), title('Original');
subplot(222), imshow(x < 150), title('Threshold 150');
subplot(223), imshow(x < 110), title('Threshold 110');
subplot(224), imshow(x < 102), title('Threshold 102');

y = x < 102;
figure, imshow(y);
m = bwboundaries(y);
text(16,16,strcat('\color{red}Objects Found:',num2str(length(m))))

hold on

for j = 1:length(m)
boundary = m{j};
plot(boundary(:,2), boundary(:,1), 'r', 'LineWidth', 0.2)
end

s = regionprops(y, 'Centroid');
for k = 1:numel(s)
    c = s(k).Centroid;
    text(c(1), c(2), sprintf('%d', k), ...
        'HorizontalAlignment', 'center', ...
        'VerticalAlignment', 'middle');
end
hold off

disp('Number of bacteria in image')
num = length(m)

z = zeros(1,num);
B = bwlabel(y, 8);
for k = 1:numel(B)
    if B(k) > 0
        z(B(k)) = z(B(k))+1;
    end
end

%A
disp('Area of each Bacteria')
z
disp('Area of all Bacteria')
sum(z)



%hold on
whos
