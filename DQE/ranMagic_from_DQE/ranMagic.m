%function name is ranMagic
%����������롰ranMagic�����Եõ�һ��3x3�����ħ������
function A=ranMagic(n)  %%%����������Զ����Ա�����
%������ħ������
B=magic(n);
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
A=[];
for ii=1:n
    A=[A,J(:,n*o-ii+1)];
end
end