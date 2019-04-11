%% 清除已有的数据
clear;clc

hFigure = figure(1);
set(hFigure,'position',[100 50 740 560])
hAxex = axes('parent',hFigure)
set(hAxex,'units','pixels','position',[1 1 740 560])%%or characters


imgMatrix = ones(560,740,3);%3为RGB   %注意宽是列，高是行；
imgMatrix(:,:,1)=198/255;
imgMatrix(:,:,2)=12/255;
imgMatrix(:,:,3)=48/255;
imgMatrix(240:320,:,1)=1;
imgMatrix(240:320,:,2)=1;
imgMatrix(240:320,:,3)=1;
imgMatrix(:,240:320,1)=1;
imgMatrix(:,240:320,2)=1;
imgMatrix(:,240:320,3)=1;
imshow(imgMatrix,'parent',hAxex);

