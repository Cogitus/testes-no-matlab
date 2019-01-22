%function that serves to compare with two images are equal or not
function result = areEqualImages(image1, image2)
    result = all(all(all(image1 == image2)));   %if image1 = image2 then result will return 1, else 0.
end