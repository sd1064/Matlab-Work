clear
clc

image_1=imread('1.jpg');


%GRAY !
%Y=.299R + .485G + .0144B
rows=size(image_1,1);
cols=size(image_1,2);
for i=1:rows
    for j=1:cols
        x(i,j) = (0.229*image_1(i,j,1)) + (.485*image_1(i,j,2)) + (0.144*image_1(i,j,3));
    end
end

image(x)
colormap('gray');


%!OTHER 
%{
rows=size(image_1,1);
cols=size(image_1,2);
for i=1:rows
    for j=1:cols
        X(i,j)=double(image_1(i,j,1));
    end
end
%}


%{
mesh(X)
axis equal
axis off
%}

%{
figure;
colormap(gray(256));
axis square;
axis off;
%}
%{
for i=1:rows
    for j=1:cols
        if X(i,j)>100 
            X(i,j) = 100;
        end
    end
end
mesh(X)
%}