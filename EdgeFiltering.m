#Edge FIltering

pkg load image;

#Load Image
im = imread('nature.jpg');
imshow(im);

#Gaussian Filtering
noise_filter = 21;
noise_sigma = 3;
filter = fspecial('gaussian',noise_filter,noise_sigma);

#Apply Edge filtering

#Clip Filter
clip_filter = imfilter(im,filter,0);
imshow(clip_filter);

#Wrap Around
wrap_around = imfilter(im,filter,'circular');
imshow(wrap_around);

#Copy Edge
copy_edge = imfilter(im,filter,'replicate');
imshow(copy_edge);

#Reflect Across Edge
reflect_edge = imfilter(im,filter,'symmetric');
imshow(reflect_edge);