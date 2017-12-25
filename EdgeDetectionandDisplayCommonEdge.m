%Finding edges and display common edge pixels

pkg load image;

%Load and display Images
frizzy = imread('frizzy.png');
froomer = imread('froomer.png');
imshow(frizzy);
imshow(froomer);

%Finding Edges
frizzy_gray = rgb2gray(frizzy);
froomer_gray = rgb2gray(froomer);
frizzy_canny = edge(frizzy_gray,'canny');
froomer_canny = edge(froomer_gray,'canny');

%Display common edge pixels
imshow(frizzy_canny & froomer_canny);
