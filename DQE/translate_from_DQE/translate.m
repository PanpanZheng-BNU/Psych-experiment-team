%filename is translate.m
%clc��
clc;
%prepare
folder_location = fileparts(mfilename('fullpath'));
%create a folder
mkdir ([folder_location,'/','ChineseName']);

EngFolderName='Images';
ChsFolderName='ChineseName';
%��ȡԭͼƬ·������ͼƬ�����б���
EngPathName=sprintf('%s/%s/*.bmp',folder_location,EngFolderName);
s=dir(EngPathName);

%����һ��ѭ��
for i=1:length(s);
    origImgName=s(i).name;
    currImgName=strrep(origImgName,'.bmp','');
    ChsImgName=sprintf('%s.bmp',BaiduTranFunction('en','zh',currImgName,'20190422000290436','ChligpGv76Wd5UnR8AoH'));
    currPathName=sprintf('%s/%s/%s',folder_location,EngFolderName,origImgName);
    imgMat=imread(currPathName);
    ChsPathName=sprintf('%s/%s/%s',folder_location,ChsFolderName,ChsImgName);
    imwrite(imgMat,ChsPathName,'bmp');
end

