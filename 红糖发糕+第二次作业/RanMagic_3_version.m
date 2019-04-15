%定义函数RanMagic_3_version，函数自变量为n，因变量为Y；
function Y=RanMagic_3_version(n)
%定义c为n阶魔方矩阵；
c=magic(n);
%用和元胞数组相同的方式，将8个魔方矩阵放入结构体s中；
for ii=1:8;
    if ii==5
        c=c';
    end
    c=rot90(c);
    s(ii).magic=c;
end
%随机从结构体s中抽出一个维度，赋给自变量Y；
Y=s(randi(8)).magic;
end