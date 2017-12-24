% #Load Image 1
im1 = imread('car.jpg');
imshow(im1);

#Load Image 2
im2 = imread('water.jpg');
imshow(im2);

#display size of image 1 and 2
disp(size(im1));
disp(size(im2));

#Addition of 2 image (It is done by combining say, a box of area 20pixels from image 1 with the same box of image 2 and so on.So size of both images must be same. And in the end result both images overlap
car = imread('car.jpg');
water = imread('water.jpg');

sum = car + water;
imshow(sum);

# In the resulting image, the intensity is doubled(as, intensity of both images are combined)
#Thus, we divide the images by 2 to find the average intensity.
average = car/2 + water/2;
imshow(average);