%codigo para investigar regiões de cores e trabalhar em cima das mesmas
santuario = imread('C:\Users\ariel\Pictures\Saved Pictures\4chan\dark\1541736761685.jpg');

[l,c,cores] = size(santuario);

for i=1:1:l
    for j=1:1:c
        if santuario(i,j,1)>=200 & santuario(i,j,1)<=255
            santuario(i,j,1) = 0;
            santuario(i,j,2) = 0;
            santuario(i,j,3) = 255;
        end
    end
end

imshow(santuario);