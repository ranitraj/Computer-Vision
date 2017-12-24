#Median Filtering

#Load Package
pkg load image;

#Load image
im = imread('saturn.jpg')
imshow(im);

#Add Salt and Pepper Noise
noisy_img = imnoise(im, 'salt & pepper',0.4); #imnoise function adds the desired type of noise
imshow(noisy_img);

#Apply Median Filtering
median_filter = medfilt2(noisy_img); #medfill2 is used instead of imfilter because median filter is non-linear
imshow(median_filter);