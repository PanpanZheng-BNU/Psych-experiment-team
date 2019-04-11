%filename: GermanFlag
hFigure = figure(1);
set(hFigure,'position',[100 50 500 300]);

hAxes = axes('parent',hFigure);
set(hAxes,'unit','pixel','position',[1 1 500 300]);

imgMatrix = ones(300,500,3);

imgMatrix(1:100,:,1) = 0;
imgMatrix(1:100,:,2) = 0;
imgMatrix(1:100,:,3) = 0;
imgMatrix(101:200,:,1) = 1;
imgMatrix(101:200,:,2) = 0;
imgMatrix(101:200,:,3) = 0;
imgMatrix(201:300,:,1) = 1;
imgMatrix(201:300,:,2) = 1;
imgMatrix(201:300,:,3) = 0;

imshow(imgMatrix,'parent',hAxes)