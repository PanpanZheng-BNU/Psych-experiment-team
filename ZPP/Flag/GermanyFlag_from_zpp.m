clc;clear;
hFigure = figure(4);
set(hFigure,'position',[100 50 500 300])
hAxex = axes('parent',hFigure)
set(hAxex,'units','pixels','position',[1 1 500 300])
imgMatrix=zeros(300,500,3);
imgMatrix(101:200,:,1)=1;
imgMatrix(101:200,:,2)=0;
imgMatrix(101:200,:,3)=0;

imgMatrix(201:300,:,1)=1;
imgMatrix(201:300,:,2)=1;
imgMatrix(201:300,:,3)=0;

imshow(imgMatrix,'parent',hAxex);
