imagem = imread('C:\Users\ariel\Pictures\Saved Pictures\4chan\dark\1541736761685.jpg');

for i=1:1:5
    figure, imshow(imgaussfilt(imagem,i));
end