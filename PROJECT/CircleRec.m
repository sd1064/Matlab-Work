rgb = imread('circle.jpg');
gray = rgb2gray(rgb);
imshow(gray);
[centers, radii] = imfindcircles(rgb,[20 25], 'ObjectPolarity','dark', ...
          'Sensitivity',0.92,'Method','twostage');
h = viscircles(centers,radii);