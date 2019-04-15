%定义函数RanMagic_5_version，函数自变量为n，因变量为Y；
function Y=RanMagic_5_version(n);
%定义c为n阶魔方矩阵；
c=magic(n);
%将8种魔方矩阵放入二维矩阵C中；
C=[];
for i=1:8
    if i==5
        c=c';
    end
    c=rot90(c);
    C=[C c];
end
%从矩阵C的第三个维度中随机抽取一个赋给因变量Y；
r=randi(8);
Y=[];
for ii=1:n
    Y=[Y C(:,n*r-ii+1)];
end
end
