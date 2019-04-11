%filename:DenmarkFlag
hFigure = figure(1);
set(hFigure,'position',[100 50 740 560]);

hAxes = axes('parent',hFigure);
set(hAxes,'unit','pixel','position',[1 1 740 560]);

imgMatrix = ones(560,740,3);

imgMatrix(1:240,:,1) = 1;
imgMatrix(1:240,:,2) = 0;
imgMatrix(1:240,:,3) = 0;
imgMatrix(321:560,:,1) = 1;
imgMatrix(321:560,:,2) = 0;
imgMatrix(321:560,:,3) = 0;
imgMatrix(:,240:320,1) = 1;
imgMatrix(:,240:320,2) = 1;
imgMatrix(:,240:320,3) = 1;

imshow(imgMatrix,'parent',hAxes);
