mkdir('Images_lianxi');
for i=1:26
    c=char(64+i);
    hfigure=figure(i);
    set(hfigure,'position',[200 200 200 200],'color','k');
    haxes=axes('parent',hfigure);
    set(haxes,'units','pixels','position',[1 1 200 200]);
    axis([0 200 0 200]);
    text(0,100,c, 'HorizontalAlign','left', 'VerticalAlign','middle','fontsize',35,'color','w','FontName','Arial');
    hold on;
    axis off;
    hframe=getframe(hfigure);
    imgText=hframe.cdata;
    allpath=['Images_lianxi/',c,'.jpg'];
    imwrite(imgText,allpath,'jpg');
end
close all;
mkdir('Mirror_Images');
for i=1:26
    c=char(64+i);
    allpath=['Images_lianxi/',c,'.jpg'];
    Ori=imread(allpath);
    Trans=255-flipud(Ori);
    newpath=['Mirror_Images/Mirror_',c,'.jpg'];
    imwrite(Trans,newpath,'jpg');
end