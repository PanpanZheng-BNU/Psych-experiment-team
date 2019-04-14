% filename is:: drawingDanmarkFlag.m

% clear
clc; clear; close all;

% create a figure(Danmark国旗的长宽比是38：27)
hFigure = figure(1);
set(hFigure, 'position',[1 1 370 280]);

% create an axes
hAxes = axes('parent',hFigure);
set(hAxes, 'units','pixels', 'position',[1 1 370 280]); % X

% generate a matrix of image(宽4:1:4；长3:1:5.25,丹麦红RGB：198,12，48）
imgMatrix = ones(280,370,3);

imgMatrix(1:120,:,1) = 198/255;
imgMatrix(1:120,:,2) = 12/255;
imgMatrix(1:120,:,3) = 48/255;

imgMatrix(151:280,:,1) = 198/255;
imgMatrix(151:280,:,2) = 12/255;
imgMatrix(151:280,:,3) = 48/255;

imgMatrix(:,91:120,1) = 1;
imgMatrix(:,91:120,2) = 1;
imgMatrix(:,91:120,3) = 1;

% show
imshow(imgMatrix, 'parent',hAxes);