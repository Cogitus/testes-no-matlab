imagem = imread('C:\Users\ariel\Pictures\Saved Pictures\4chan\dark\1541736761685.jpg');

%arrayimagem corresponds to the matrix-array that carries all the
%procedural blurred images.

for i=1:1:6
    cellArrayImagem{i} = imgaussfilt(imagem,i);
end

montage(cellArrayImagem);

% the following syntax can be used to create multiple figure windows
% that in the future will contain their corresponding images:
%             
%             figure, imshow(image);
%             
%             
%             NOTE: figure is a function by itself!