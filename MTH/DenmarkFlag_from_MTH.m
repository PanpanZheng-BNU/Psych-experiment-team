% filename is:: DenmarkFlag.m

% clear
clc; clear; close all;

% create a figure
hFigure = figure(1);
set(hFigure, 'position',[300 200 740 560]);

% create an axes
hAxes = axes('parent',hFigure);
set(hAxes, 'units','pixels', 'position',[1 1 740 560]);  % X

% generate a matrix of image
imgMatrix = ones(560,740,3); % 3 == r g b

imgMatrix(1:240,1:240, 1) = 1;
imgMatrix(1:240,1:240, 2) = 0;
imgMatrix(1:240,1:240, 3) = 0;

imgMatrix(1:240,321:740, 1) = 1;
imgMatrix(1:240,321:740, 2) = 0;
imgMatrix(1:240,321:740, 3) = 0;

imgMatrix(321:560,1:240, 1) = 1;
imgMatrix(321:560,1:240, 2) = 0;
imgMatrix(321:560,1:240, 3) = 0;

imgMatrix(321:560,321:740, 1) = 1;
imgMatrix(321:560,321:740, 2) = 0;
imgMatrix(321:560,321:740, 3) = 0;

% show
imshow(imgMatrix, 'parent',hAxes);
