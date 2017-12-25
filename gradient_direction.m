%Gradient Direction
pkg load image;

%Function to find and return pixels that fall within the desired mag and angle range
function result = gradient_direction(gmag, gdir, min_mag, angle_low, angle_high)
  result = gmag >= min_mag & gdir >= angle_low & gdir <= angle_high;
end

%Load and convert image to double type, range [0, 1] for convenience
im = double(imread('octagon.png')) / 255.; 
imshow(im); % assumes [0, 1] range for double images

% Compute x, y gradients
[gx gy] = imgradientxy(im, 'sobel'); % Here, gx and gy are not normalized
imshow((gx/4) + 8)  %Normalized along x, [-4,4] is range in sobel, add 4 -> range is [0,8],to keep it within Range [0,1] we divide by 8.

% Obtain gradient magnitude and direction
[gmag gdir] = imgradient(gx, gy);
imshow(gmag / (4 * sqrt(2))); % mag = sqrt(gx^2 + gy^2), so [0, (4 * sqrt(2))]
imshow((gdir + 180.0) / 360.0); % angle in degrees [-180, 180]

% Find pixels with desired gradient direction
my_grad = gradient_direction(gmag, gdir, 1, 30, 60); % 45 +/- 15
imshow(my_grad);