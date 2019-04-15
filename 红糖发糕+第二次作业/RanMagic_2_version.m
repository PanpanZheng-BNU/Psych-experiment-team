%定义函数RanMagic_2_version，函数自变量为n，因变量为Y；
function Y=RanMagic_2_version(n);
%定义a为一个1行8列的元胞数组；
a=cell(8,1);
%定义c为n阶魔方矩阵；
c=magic(n);
%通过for循环，将魔方矩阵的8种情况的矩阵作为元胞数组a的元素，放入元胞数组a中；
for ii=1:8;
    if ii==5
        c=c';
    end
    c=rot90(c);
    a{ii}=c;
end
%定义Y为元胞数组a中的任意一个元素(任意一种魔方矩阵)；
Y=a{randi(8)};
end