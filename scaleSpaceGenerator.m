function scalespace = scaleSpaceGenerator(path_to_image)
    %the ideal is that we have 4 octaves composed, each one of them, by 5 images. So we have them a scalespace of 20 blurred and resized images!
    %the way we can to put all them in a single structure is in a structure
    %(lol).
  
    
    imagem = imread(path_to_image);     %reads the corresponding image.
    
    for i=1:1:5                         %here i store the images 5 of the octaves.
        scalespace.first(i) = imagem
    end
end