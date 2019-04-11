% filename is:: drawingGermanyFlag.m

% clear
clc; clear; close all;

% create a figure(German����ĳ������5��3)
hFigure = figure(1);
set(hFigure, 'position',[1 1 500 300]);

% create an axes
hAxes = axes('parent',hFigure);
set(hAxes, 'units','pixels', 'position',[1 1 500 300]); % X

% generate a matrix of image
imgMatrix = zeros(300,500,3);

imgMatrix(101:200,:,1) = 1;
imgMatrix(101:200,:,2) = 0;
imgMatrix(101:200,:,3) = 0;

imgMatrix(201:300,:,1) = 1;
imgMatrix(201:300,:,2) = 1;
imgMatrix(201:300,:,3) = 0;

% show
imshow(imgMatrix, 'parent',hAxes);