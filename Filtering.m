#Remove Noise with a Gaussian Filter

#Load an Image
im = imread('saturn.jpg');
imshow(im);

#Load Image Package
pkg load image;

#Add noise
noise_sigma = 25;
noise = randn(size(im)).*noise_sigma;
noisy_image = im + noise;
imshow(noisy_image);

#Gaussian Filter
filter_size = 21;
filter_sigma = 2;
filter = fspecial('gaussian',filter_size,filter_sigma);

#plot surface
surf(filter);

#Show plotted Surface as an Image
imagesc(filter);

#Apply Gaussian Filter to the Noisy Image
smoothed = imfilter(noisy_image,filter);
imshow(smoothed);