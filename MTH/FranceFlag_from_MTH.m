% filename is :: FranceFlag.m

% clear
clc; clear; close all;

% create a figure
hFigure = figure(1);
set(hFigure, 'position',[300 200 600 400]);

% create an axes
hAxes = axes('parent',hFigure);
set(hAxes, 'units','pixels', 'position',[1 1 600 400]);  % X

% generate a matrix of image
imgMatrix = ones(400,600,3); % 3 == r g b

imgMatrix(:,1:200, 1) = 0;
imgMatrix(:,1:200, 2) = 0;
imgMatrix(:,1:200, 3) = 1;

imgMatrix(:,201:400, 1) = 1;
imgMatrix(:,201:400, 2) = 1;
imgMatrix(:,201:400, 3) = 1;

imgMatrix(:,401:600, 1) = 1;
imgMatrix(:,401:600, 2) = 0;
imgMatrix(:,401:600, 3) = 0;

% show
imshow(imgMatrix, 'parent',hAxes);

