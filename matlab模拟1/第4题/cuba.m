clc; close all;
hfigure=figure(1);
set(hfigure,'position',[300 300 600 500]);
haxes=axes('parent',hfigure);
set(haxes,'units','pixels','position',[1 1 600 500]);
imgMatrix=zeros(500,600,3);
imgMatrix(:,:,1)=1;
imgMatrix(101:200,:,:)=1;
imgMatrix(301:400,:,:)=1;
imshow(imgMatrix,'parent',haxes);
haxes_round=axes('parent',hfigure);
set(haxes_round,'units','pixels','position',[0,0,300,500]);
mRadius=100;
x=[1,300,1,1];y=[1,250,500,1];
plot(x,y);
fill(x,y,'b','edgealpha',0);
axis off;
haxes_five=axes('parent',hfigure);
set(haxes_five,'units','pixels','position',[50,200,100,100]);

for i=1:5
    x(i)=20*cos(pi/2+i*72/180*pi);
    y(i)=20*sin(pi/2+i*72/180*pi);
end
for i=1:5
    xx(i)=20*20/50*cos(pi/2+36*pi/180+i*72/180*pi);
    yy(i)=20*20/50*sin(pi/2+36*pi/180+i*72/180*pi);
end
for i=1:10;
    if mod(i,2)==1;
        xxx(i)=x(floor(i/2)+1);
        yyy(i)=y(floor(i/2)+1);

    else
        xxx(i)=xx(i/2);
        yyy(i)=yy(i/2);
    end
end
xxx(11)=x(1);
yyy(11)=y(1);

plot(xxx,yyy);
fill(xxx,yyy,'w','edgealpha',0);
axis off