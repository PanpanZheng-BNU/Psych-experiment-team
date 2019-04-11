
hFigure = figure(1);
set(hFigure,'position',[100 50 600 400]);

hAxes = axes('parent',hFigure);
set(hAxes,'units','pixels','position',[1 1 600 400]);

% generate a matrix of image
imgMatrix = ones(400,600,3);

imgMatrix(:,1:200,1) = 0;
imgMatrix(:,1:200,2) = 0;
imgMatrix(:,1:200,3) = 1;

imgMatrix(:,401:600,1) = 1;
imgMatrix(:,401:600,2) = 0;
imgMatrix(:,401:600,3) = 0;

imshow(imgMatrix,'parent',hAxes);