function masked_image = hsv_mask(image)
    %image = imread(image_adress);
    
    hsv_image = image;
    hsv_image = rgb2hsv(image);
    hsv_hue = hsv_image(:,:,1);
    
    maskpb = hsv_hue(:,:) >= 0 & hsv_hue(:,:) <= 180;
    
    hsv_image(:,:,1) = maskpb & image(:,:,1);
    
    masked_image = hsv2rgb(hsv_image);
    
    figure, imshow([image, masked_image]);
end