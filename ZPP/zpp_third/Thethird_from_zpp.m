% filename is Thethird_from_zpp
clear;clc;
%��ȡͼƬ�ļ������ڵ��ļ��У����ڽ�.M�ļ����ں�ͼƬ�ļ�����ͬһ���ļ����ڣ����Ի�ȡͼƬ�ļ��������ļ���=.M�ļ������ļ��У�
% mfilename('fullpath')��ȡ��.M�ļ����ڵ��ļ��е�ȫ��·��(�磺C:/Users/pdxgs/desktop/zpp_third/Thethird_from_zpp)
%�����Ҫʹ��fileparts������һ��·��(�磺����·���ͱ�Ϊ��C:/Users/pdxgs/desktop/zpp_third)
folder_location = fileparts(mfilename('fullpath'));
%����ɵ�ͼƬ�ļ��е�����
folder_old_name = 'Images';
%�����µ�ͼƬ�ļ��е�����
folder_new_name = 'New_Images';
%ͨ��sprintf�������ļ������ڵ��ļ���·���;ɵ��ļ����������γɾɵ��ļ���������bmp��ʽ�ļ���·��
bmpPath = sprintf('%s/%s/*.bmp',folder_location,folder_old_name);
%ͨ��dir�����ó����ļ���������.bmp��ʽ�ļ�����Ϣ��
bmpName = dir(bmpPath);

%ͨ��forѭ����ȥ.bmp�ĺ�׺(���ַ�����ֹ����.bmp�ĺ�׺�������������еĺ�׺)
%ͨ��forѭ����bmpName�ṹ���µ�ÿһ�н�����ص��ж�
for i=1:length(bmpName)
    %c(i)Ϊ��i�е��ļ�����'.'��λ��
    c(i)=findstr(bmpName(i).name,'.');
    %��c(i)����֮��������ַ�ɾȥ�󸳸�BMPNameԪ������(��ΪԪ��������Դ���excel���ṹ�岻��)
    BMPName{i}=strrep(bmpName(i).name,bmpName(i).name(c(i):size(bmpName(i).name,2)),'');
end
%���õ���BMPNameԪ������ת�ú��Ϊexcel��.xlsx�ļ���������Ϊshuju.xlsx
xlswrite('shuju.xlsx',BMPName')

%��excel�н��з���ȴ������Ϊshuju_translate.xlsx�ļ�

%���봦����shuju_translate.xlsx�ļ�
Name=importdata('shuju_translate.xlsx');
%�Ե�ǰ.M�ļ����ڵ��ļ���Ϊ����Ŀ¼
cd(folder_location)
%�����µ�ͼƬ�ļ���
mkdir(folder_new_name)
%�����ļ����µ������ļ����������ļ��С�
for i=1:length(Name)
    oldName=sprintf('%s/%s/%s.bmp',folder_location,folder_old_name,Name{i,1});
    newName=sprintf('%s/%s/%d_%s.bmp',folder_location,folder_new_name,i,Name{i,2});
    copyfile(oldName,newName);
end