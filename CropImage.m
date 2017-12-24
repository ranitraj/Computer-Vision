#Crop an Image

#Read and display image
im = imread('car.jpg');
imshow(im);

#Display size of Image to help with cropping
disp(size(im));
#cropping using Slicing of rows and columns
imcrop = im(100:260,200:300);
imshow(imcrop);