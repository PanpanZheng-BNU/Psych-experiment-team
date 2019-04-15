%定义函数RanMagic_4_version，函数自变量为n，因变量为Y；
function Y=RanMagic_4_version(n);
%定义c为n阶魔方矩阵；
c=magic(n);
%将8种魔方矩阵放入三维矩阵C中；
for i=1:8
    if i==5
        c=c';
    end
    c=rot90(c);
    C(:,:,i)=c;
end
%从矩阵C的第三个维度中随机抽取一个赋给因变量Y；
Y=C(:,:,randi(8));
end
