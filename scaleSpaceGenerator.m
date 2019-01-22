function scalespace = scaleSpaceGenerator(path_to_image)
    %the ideal is that we have 4 octaves composed, each one of them, by 5 images. So we have them a scalespace of 20 blurred and resized images!
    %the way we can to put all them in a single structure is in a structure
    %(lol).
  
    
    image = imread(path_to_image);     %reads the corresponding image.
    sub_image{1} = image;                 %this is a copy of image that we use to half the scale.
    
    for i=1:1:4                        %four are the number of octaves
        for j=1:1:5                    %here i store the images 5 of the corresponding octaves.
            scalespace{i,j} = imgaussfilt(sub_image{i}, (2^(i)) * (sqrt(2)^(j-2)) );       %applying the gaussian blur
        end
        
        if i>=2
            sub_image{i} = imresize(sub_image{i-1}, 0.5);       %creating the half sized images from the previous ones.
        end
        
    end
    
    clear sub_image;                   %deleting the used image to clear the unused memory.
    
end