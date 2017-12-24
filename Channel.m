im = imread('rgb.jpg');
#Selcting ONLY the red channel from the image
imred = im(:,:,1);   # 1st : means all rows in the image are selected and the 2nd : means all columns are selected. And as Ocatve has indexing from 1, so red channel is labelled as 1
#Selcting ONLY the green channel from the image
imgreen = im(:,:,2);
#Selcting ONLY the blue channel from the image
imblue = im(:,:,3);
#drawing a line in red
line([1,1024],[256,256],'color','r');
#Show image
imshow(im)
#plot the 256th row and all columns
plot(imgreen(256,:));