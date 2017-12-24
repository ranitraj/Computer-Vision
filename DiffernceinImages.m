car = imread('car.jpg');
water = imread('water.jpg');

pkg load image;

abs_diff = imabsdiff(car,water);
imshow(abs_diff);