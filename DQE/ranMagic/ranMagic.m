%function name is ranMagic
%命令框中输入“ranMagic”可以得到一个3x3的随机魔方矩阵
function A=ranMagic
%获得随机魔方矩阵
B=magic(3);
%获得其他7中形式的3x3随机魔方矩阵
C=B';
D=rot90(B);
E=rot90(B,2);
F=rot90(B,3);
G=flipud(B);
H=fliplr(B);
I=rot90(C,2);
%将8个矩阵整合
J=[B C D E F G H I];
%随机生成一个数字以代表选取的矩阵
o=unidrnd(8);
%将随机的矩阵赋值给A
A=[J(:,3*o-2) J(:,3*o-1) J(:,3*o)];
end