%function name is ranMagic
%����������롰ranMagic�����Եõ�һ��3x3�����ħ������
function A=ranMagic
%������ħ������
B=magic(3);
%�������7����ʽ��3x3���ħ������
C=B';
D=rot90(B);
E=rot90(B,2);
F=rot90(B,3);
G=flipud(B);
H=fliplr(B);
I=rot90(C,2);
%��8����������
J=[B C D E F G H I];
%�������һ�������Դ���ѡȡ�ľ���
o=unidrnd(8);
%������ľ���ֵ��A
A=[J(:,3*o-2) J(:,3*o-1) J(:,3*o)];
end