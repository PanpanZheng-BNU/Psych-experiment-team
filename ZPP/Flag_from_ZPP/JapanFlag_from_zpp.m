clear;clc

hFigure = figure(3);
set(hFigure,'position',[100 50 600 400])
hAxex = axes('parent',hFigure)
set(hAxex,'units','pixels','position',[1 1 600 400])%%or characters

imgMatrix = ones(6400,9600,3);%3为RGB   %注意宽是列，高是行；
imgMatrix(:,:,1)=1;
imgMatrix(:,:,2)=1;
imgMatrix(:,:,3)=1;
for i=2880:6720
    j=floor(sqrt((1920)^2-(i-4800)^2))+3200;
    j2=-floor(sqrt((1920)^2-(i-4800)^2))+3200;
imgMatrix(j2:j,i,1)=0.7765;
imgMatrix(j2:j,i,2)=0.0471;
imgMatrix(j2:j,i,3)=0.1098;
end
imshow(imgMatrix,'parent',hAxex);