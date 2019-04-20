% filename is Thethird_from_zpp
clear;clc;
%获取图片文件夹所在的文件夹，由于将.M文件放在和图片文件夹在同一个文件夹内，所以获取图片文件夹所在文件夹=.M文件所在文件夹；
% mfilename('fullpath')获取此.M文件所在的文件夹的全部路径(如：C:/Users/pdxgs/desktop/zpp_third/Thethird_from_zpp)
%因此需要使用fileparts返回上一级路径(如：上述路径就变为：C:/Users/pdxgs/desktop/zpp_third)
folder_location = fileparts(mfilename('fullpath'));
%定义旧的图片文件夹的名字
folder_old_name = 'Images';
%定义新的图片文件夹的名字
folder_new_name = 'New_Images';
%通过sprintf函数将文件夹所在的文件夹路径和旧的文件夹名整合形成旧的文件夹下所有bmp格式文件的路径
bmpPath = sprintf('%s/%s/*.bmp',folder_location,folder_old_name);
%通过dir函数得出旧文件夹下所有.bmp格式文件的信息。
bmpName = dir(bmpPath);

%通过for循环除去.bmp的后缀(这种方法不止限于.bmp的后缀，还适用于所有的后缀)
%通过for循环对bmpName结构体下的每一行进行相关的判断
for i=1:length(bmpName)
    %c(i)为第i行的文件名的'.'的位置
    c(i)=findstr(bmpName(i).name,'.');
    %将c(i)及其之后的所有字符删去后赋给BMPName元胞数组(因为元胞数组可以存入excel而结构体不行)
    BMPName{i}=strrep(bmpName(i).name,bmpName(i).name(c(i):size(bmpName(i).name,2)),'');
end
%将得到的BMPName元胞数组转置后存为excel的.xlsx文件，并命名为shuju.xlsx
xlswrite('shuju.xlsx',BMPName')

%在excel中进行翻译等处理，另存为shuju_translate.xlsx文件

%载入处理后的shuju_translate.xlsx文件
Name=importdata('shuju_translate.xlsx');
%以当前.M文件所在的文件夹为工作目录
cd(folder_location)
%建立新的图片文件夹
mkdir(folder_new_name)
%将旧文件夹下的所有文件复制入新文件夹。
for i=1:length(Name)
    oldName=sprintf('%s/%s/%s.bmp',folder_location,folder_old_name,Name{i,1});
    newName=sprintf('%s/%s/%d_%s.bmp',folder_location,folder_new_name,i,Name{i,2});
    copyfile(oldName,newName);
end