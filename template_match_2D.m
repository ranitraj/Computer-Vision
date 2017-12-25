#Template Matching using Cross Correlation

pkg load image;

function [yIndex, xIndex] = template_match_2D(template, im);
  c =normxcorr2(template, im); #normaliszed Cross Correlation
  
  [yRaw xRaw] = find(c == max(c(:))); 
  #intially,if we find max(c) then the returned O/P is row and column wise maximum.
  #So, we use max(c(:)) where the : returns the max value in the entire image.
  #find is a predefined function which returns the max value corresponding to 'c' and returns the 2D raw matrix values to xRaw and yRaw.
  
  yIndex = yRaw - size(template, 1)+1;  #indexing WRT template along y-dimension i.e 1
  xIndex = xRaw - size(template, 2)+1;  #indexing WRT template along x-dimension i.e 2
endfunction
 
#Testing
tablet = imread('tablet.png');
imshow(tablet);
 
glyph = tablet(75:165, 150:185); #Cropping the Image
imshow(glyph);
 
[y x] = template_match_2D(glyph, tablet);
disp([y,x]);

#Draw a bounding Reactangle around the region
colormap('gray'), imagesc(tablet);
hold on;
rectangle('Position', [x,y,35,95]);
hold off;