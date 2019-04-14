%filename is GermanyFlag.m

%clc
clc;

%create a figure
hfigure=figure(2);
set(hfigure,'position',[300,200,500,300]);

%create Axes
hAxes=axes('parent',hfigure);
set(hAxes,'units','pixels','position',[1 1 500 300]);

%create a martix of image
imgMatrix=ones(300,500,3);

imgMatrix(1:101,:,1)=0;
imgMatrix(1:101,:,2)=0;
imgMatrix(1:101,:,3)=0;

imgMatrix(101:200,:,1)=1;
imgMatrix(101:200,:,2)=0;
imgMatrix(101:200,:,3)=0;

imgMatrix(201:300,:,1)=1;
imgMatrix(201:300,:,2)=1;
imgMatrix(201:300,:,3)=0;

%show
imshow(imgMatrix,'parent',hAxes);
