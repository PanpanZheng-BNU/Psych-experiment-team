%filename is FranceFlag.m

%clc
clc;

%create a figure
hfigure=figure(2);
set(hfigure,'position',[300,200,500,300]);

%create a axes
haxes=axes('parent',hfigure);
set(haxes,'position',[1,1,300,200],'units','pixels');

%generate a Matrix of image
imgMatrix=ones(200,300,3);%3== r g b
imgMatrix(:,1:200, 1)=0;
imgMatrix(:,1:100,2)=0;
imgMatrix(:,1:100,3)=1;
imgMatrix(:,101:200,1)=1;
imgMatrix(:,101:200,2)=1;
imgMatrix(:,101:200,3)=1;
imgMatrix(:,201:300,1)=1;
imgMatrix(:,201:300,2)=0;
imgMatrix(:,201:300,3)=0;

%show
imshow(imgMatrix,'parent',axes);