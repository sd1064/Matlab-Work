clear
clc

stones=imread('stones.pgm');
singleStone=imread('singlestone.pgm');
proof=imread('testimage1.pgm');

figure;colormap('gray');image(stones)
figure;colormap('gray');image(singleStone)
figure;colormap('gray');image(proof)

testTiled=[stones stones stones ; stones stones stones ; stones stones stones ]
figure;colormap('gray');image(testTiled)

%I(x,y)=stones
%g(a,b)=single stone

sizeX=size(stones,1);
sizeY=size(stones,2);
for i=1:sizeX
    for j=1:sizeY
        
    end
end

%%
