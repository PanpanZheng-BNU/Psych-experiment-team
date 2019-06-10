clear;clc;
for i=1:36
    folder_name=sprintf('sub%02d',i);
    mkdir(folder_name);
    if mod(i,2)==1;
        copyfile('left_odd.ebs2',[folder_name,'/left_odd.ebs2']);
    else
        copyfile('left_even.ebs2',[folder_name,'/left_even.ebs2']);
    end
    copyfile('Pictures',[folder_name,'/Pictures']);
end