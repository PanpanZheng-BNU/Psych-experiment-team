clc;clear;
hFigure = figure(2);
set(hFigure,'position',[100 50 450 300])
hAxex = axes('parent',hFigure)
set(hAxex,'units','pixels','position',[1 1 450 300])%%or characters
for i=1:5
    x(i)=floor(4800+(9600/3*2/3)*cos((90+i*72)/180*pi));
    y(i)=floor(3200+(9600/3*2/3)*sin((90+i*72)/180*pi));
end
for i=1:5
    xx(i)=floor(4800+(9600/3*2/3*sin(23/180*pi))*cos((90+36+i*72)/180*pi));
    yy(i)=floor(3200+(9600/3*2/3*sin(23/180*pi))*sin((90+36+i*72)/180*pi));
end
    
    
imgMatrix = ones(6400,9600,3);
imgMatrix(:,:,1)=1;
imgMatrix(:,:,2)=0;
imgMatrix(:,:,3)=0;

for ii=x(1):x(2)
    ys=floor(6400-(ii-x(1))/(xx(5)-x(1))*(yy(5)-y(1))-y(1));
    yx=floor(6400-(ii-x(1))/(xx(1)-x(1))*(yy(1)-y(1))-y(1));
    imgMatrix(ys:yx,ii,1)=1;
    imgMatrix(ys:yx,ii,2)=1;
    imgMatrix(ys:yx,ii,3)=0;
end
for ii=x(2):xx(1)
    ys=floor(6400-(ii-x(1))/(xx(5)-x(1))*(yy(5)-y(1))-y(1));
    yx=floor(6400-(ii-x(1))/(xx(1)-x(1))*(yy(1)-y(1))-y(1));
    imgMatrix(ys:yx,ii,1)=1;
    imgMatrix(ys:yx,ii,2)=1;
    imgMatrix(ys:yx,ii,3)=0;
    ys1=floor(6400-(ii-x(2))/(xx(1)-x(2))*(yy(1)-y(2))-y(2));
    yx1=floor(6400-(ii-x(2))/(xx(2)-x(2))*(yy(2)-y(2))-y(2));
    imgMatrix(ys1:yx1,ii,1)=1;
    imgMatrix(ys1:yx1,ii,2)=1;
    imgMatrix(ys1:yx1,ii,3)=0;
end
for ii=xx(1):xx(5)
    ys=floor(6400-(ii-x(1))/(xx(5)-x(1))*(yy(5)-y(1))-y(1));
    yx=floor(6400-(ii-x(2))/(xx(2)-x(2))*(yy(2)-y(2))-y(2));
    imgMatrix(ys:yx,ii,1)=1;
    imgMatrix(ys:yx,ii,2)=1;
    imgMatrix(ys:yx,ii,3)=0;
end
for ii=xx(5):x(5)
    ys=floor(6400-(ii-x(5))/(xx(5)-x(5))*(yy(5)-y(5))-y(5));
    yx=floor(6400-(ii-x(2))/(xx(2)-x(2))*(yy(2)-y(2))-y(2));
    imgMatrix(ys:yx,ii,1)=1;
    imgMatrix(ys:yx,ii,2)=1;
    imgMatrix(ys:yx,ii,3)=0;
end
for ii=x(5):xx(4)
    ys=floor(6400-(ii-x(5))/(xx(4)-x(5))*(yy(4)-y(5))-y(5));
    yx=floor(6400-(ii-x(3))/(xx(2)-x(3))*(yy(2)-y(3))-y(3));
    imgMatrix(ys:yx,ii,1)=1;
    imgMatrix(ys:yx,ii,2)=1;
    imgMatrix(ys:yx,ii,3)=0;
end
for ii=xx(4):xx(3)
    ys=floor(6400-(ii-x(4))/(xx(4)-x(4))*(yy(4)-y(4))-y(4));
    yx=floor(6400-(ii-x(3))/(xx(2)-x(3))*(yy(2)-y(3))-y(3));
    imgMatrix(ys:yx,ii,1)=1;
    imgMatrix(ys:yx,ii,2)=1;
    imgMatrix(ys:yx,ii,3)=0;
end
for ii=xx(3):x(3)
    ys=floor(6400-(ii-x(4))/(xx(4)-x(4))*(yy(4)-y(4))-y(4));
    yx=floor(6400-(ii-x(4))/(xx(3)-x(4))*(yy(3)-y(4))-y(4));
    imgMatrix(ys:yx,ii,1)=1;
    imgMatrix(ys:yx,ii,2)=1;
    imgMatrix(ys:yx,ii,3)=0;
    ys1=floor(6400-(ii-x(3))/(xx(3)-x(3))*(yy(3)-y(3))-y(3));
    yx1=floor(6400-(ii-x(3))/(xx(2)-x(3))*(yy(2)-y(3))-y(3));
    imgMatrix(ys1:yx1,ii,1)=1;
    imgMatrix(ys1:yx1,ii,2)=1;
    imgMatrix(ys1:yx1,ii,3)=0;
end
for ii=x(3):x(4)
    ys=floor(6400-(ii-x(4))/(xx(4)-x(4))*(yy(4)-y(4))-y(4));
    yx=floor(6400-(ii-x(4))/(xx(3)-x(4))*(yy(3)-y(4))-y(4));
    imgMatrix(ys:yx,ii,1)=1;
    imgMatrix(ys:yx,ii,2)=1;
    imgMatrix(ys:yx,ii,3)=0;
end
imshow(imgMatrix,'parent',hAxex);