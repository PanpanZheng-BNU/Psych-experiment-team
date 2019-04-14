%定义函数RanMagic_from_zpp，函数自变量为n，因变量为Y；
function Y=RanMagic_from_zpp(n);
%让因变量Y为n阶魔方矩阵
Y=magic(n);
%1/2的概率决定Y是否转置；(randn:生成服从标准正态分布的随机数)
if randn<0
    Y=Y';
end
%1/2的概率决定Y是否上下翻转；(rand:随机生成0-1的服从均匀分布的随机数)
if rand<0.5
    Y=flipud(Y);
end
%1/2的概率决定Y是否左右翻转；(randsrc:随机生成"-1"或"1")
if randsrc==-1
    Y=fliplr(Y);
end
end