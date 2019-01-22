imagem = imread('C:\Users\ariel\Pictures\Saved Pictures\4chan\dark\1541736761685.jpg');

arrayimagem = [];

for i=1:1:5
    arrayimagem(i) = imgaussfilt(imagem,i);
end


% the following syntax can be used to create multiple figure windows
% that in the future will contain their corresponding images:
%             
%             figure, imshow(image);
%             
%             
%             NOTE: figure is a function by itself!