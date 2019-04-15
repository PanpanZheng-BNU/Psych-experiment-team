%filename is DanmarkFlag.m

%clc
clc;

%create a figure
hfigure=figure(1);
set(hfigure,'position',[300 200 370 280]);

%create Axes
hAxes=axes('parent',hfigure);
set(hAxes,'units','pixels','position',[1 1 370 280]);

%generate a matrix of image
imgMatrix=ones(280,370,3);

imgMatrix(1:120,1:120,1)=1;
imgMatrix(1:120,1:120,2)=0;
imgMatrix(1:120,1:120,3)=0;

imgMatrix(161:280,1:120,1)=1;
imgMatrix(161:280,1:120,2)=0;
imgMatrix(161:280,1:120,3)=0;

imgMatrix(161:280,161:370,1)=1;
imgMatrix(161:280,161:370,2)=0;
imgMatrix(161:280,161:370,3)=0;

imgMatrix(1:120,161:370,1)=1;
imgMatrix(1:120,161:370,2)=0;
imgMatrix(1:120,161:370,3)=0;

%show
imshow(imgMatrix,'parent',hAxes);


