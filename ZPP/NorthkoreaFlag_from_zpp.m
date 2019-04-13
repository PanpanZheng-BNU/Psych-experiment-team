clc;clear;close all;
hFigure = figure(2);
set(hFigure,'position',[100 50 500 250])
hAxex = axes('parent',hFigure)
set(hAxex,'units','pixels','position',[1 1 500 250])%%or characters
for i=1:5
    x(i)=floor(4800+(3100/2)*cos((90+i*72)/180*pi));
    y(i)=floor(3600+(3100/2)*sin((90+i*72)/180*pi));
end
for i=1:5
    xx(i)=floor(4800+(3100/2*sin(24/180*pi))*cos((90+36+i*72)/180*pi));
    yy(i)=floor(3600+(3100/2*sin(24/180*pi))*sin((90+36+i*72)/180*pi));
end    
imgMatrix = ones(7200,14400,3);
imgMatrix(1:1200,:,1)=3/255;
imgMatrix(1:1200,:,2)=77/255;
imgMatrix(1:1200,:,3)=162/255;
imgMatrix(6001:7200,:,1)=3/255;
imgMatrix(6001:7200,:,2)=77/255;
imgMatrix(6001:7200,:,3)=162/255;
imgMatrix(1400:5800,:,1)=237/255;
imgMatrix(1400:5800,:,2)=29/255;
imgMatrix(1400:5800,:,3)=37/255;
for i=3200:6400
    j=floor(sqrt((1600)^2-(i-4800)^2))+3600;
    j2=-floor(sqrt((1600)^2-(i-4800)^2))+3600;
imgMatrix(j2:j,i,1)=1;
imgMatrix(j2:j,i,2)=1;
imgMatrix(j2:j,i,3)=1;
end
for ii=x(1):x(2)
    ys=floor(7200-(ii-x(1))/(xx(5)-x(1))*(yy(5)-y(1))-y(1));
    yx=floor(7200-(ii-x(1))/(xx(1)-x(1))*(yy(1)-y(1))-y(1));
    imgMatrix(ys:yx,ii,1)=237/255;
    imgMatrix(ys:yx,ii,2)=29/255;
    imgMatrix(ys:yx,ii,3)=37/255;
end
for ii=x(2):xx(1)
    ys=floor(7200-(ii-x(1))/(xx(5)-x(1))*(yy(5)-y(1))-y(1));
    yx=floor(7200-(ii-x(1))/(xx(1)-x(1))*(yy(1)-y(1))-y(1));
    imgMatrix(ys:yx,ii,1)=237/255;
    imgMatrix(ys:yx,ii,2)=29/255;
    imgMatrix(ys:yx,ii,3)=37/255;
    ys1=floor(7200-(ii-x(2))/(xx(1)-x(2))*(yy(1)-y(2))-y(2));
    yx1=floor(7200-(ii-x(2))/(xx(2)-x(2))*(yy(2)-y(2))-y(2));
    imgMatrix(ys1:yx1,ii,1)=237/255;
    imgMatrix(ys1:yx1,ii,2)=29/255;
    imgMatrix(ys1:yx1,ii,3)=37/255;
end
for ii=xx(1):xx(5)
    ys=floor(7200-(ii-x(1))/(xx(5)-x(1))*(yy(5)-y(1))-y(1));
    yx=floor(7200-(ii-x(2))/(xx(2)-x(2))*(yy(2)-y(2))-y(2));
    imgMatrix(ys:yx,ii,1)=237/255;
    imgMatrix(ys:yx,ii,2)=29/255;
    imgMatrix(ys:yx,ii,3)=37/255;
end
for ii=xx(5):x(5)
    ys=floor(7200-(ii-x(5))/(xx(5)-x(5))*(yy(5)-y(5))-y(5));
    yx=floor(7200-(ii-x(2))/(xx(2)-x(2))*(yy(2)-y(2))-y(2));
    imgMatrix(ys:yx,ii,1)=237/255;
    imgMatrix(ys:yx,ii,2)=29/255;
    imgMatrix(ys:yx,ii,3)=37/255;
end
for ii=x(5):xx(4)
    ys=floor(7200-(ii-x(5))/(xx(4)-x(5))*(yy(4)-y(5))-y(5));
    yx=floor(7200-(ii-x(3))/(xx(2)-x(3))*(yy(2)-y(3))-y(3));
    imgMatrix(ys:yx,ii,1)=237/255;
    imgMatrix(ys:yx,ii,2)=29/255;
    imgMatrix(ys:yx,ii,3)=37/255;
end
for ii=xx(4):xx(3)
    ys=floor(7200-(ii-x(4))/(xx(4)-x(4))*(yy(4)-y(4))-y(4));
    yx=floor(7200-(ii-x(3))/(xx(2)-x(3))*(yy(2)-y(3))-y(3));
    imgMatrix(ys:yx,ii,1)=237/255;
    imgMatrix(ys:yx,ii,2)=29/255;
    imgMatrix(ys:yx,ii,3)=37/255;
end
for ii=xx(3):x(3)
    ys=floor(7200-(ii-x(4))/(xx(4)-x(4))*(yy(4)-y(4))-y(4));
    yx=floor(7200-(ii-x(4))/(xx(3)-x(4))*(yy(3)-y(4))-y(4));
    imgMatrix(ys:yx,ii,1)=237/255;
    imgMatrix(ys:yx,ii,2)=29/255;
    imgMatrix(ys:yx,ii,3)=37/255;
    ys1=floor(7200-(ii-x(3))/(xx(3)-x(3))*(yy(3)-y(3))-y(3));
    yx1=floor(7200-(ii-x(3))/(xx(2)-x(3))*(yy(2)-y(3))-y(3));
    imgMatrix(ys1:yx1,ii,1)=237/255;
    imgMatrix(ys1:yx1,ii,2)=29/255;
    imgMatrix(ys1:yx1,ii,3)=37/255;
end
for ii=x(3):x(4)
    ys=floor(7200-(ii-x(4))/(xx(4)-x(4))*(yy(4)-y(4))-y(4));
    yx=floor(7200-(ii-x(4))/(xx(3)-x(4))*(yy(3)-y(4))-y(4));
    imgMatrix(ys:yx,ii,1)=237/255;
    imgMatrix(ys:yx,ii,2)=29/255;
    imgMatrix(ys:yx,ii,3)=37/255;
end

imshow(imgMatrix,'parent',hAxex);
