%���庯��RanMagic_from_zpp�������Ա���Ϊn�������ΪY��
function Y=RanMagic_from_zpp(n);
%�������YΪn��ħ������
Y=magic(n);
%1/2�ĸ��ʾ���Y�Ƿ�ת�ã�(randn:���ɷ��ӱ�׼��̬�ֲ��������)
if randn<0
    Y=Y';
end
%1/2�ĸ��ʾ���Y�Ƿ����·�ת��(rand:�������0-1�ķ��Ӿ��ȷֲ��������)
if rand<0.5
    Y=flipud(Y);
end
%1/2�ĸ��ʾ���Y�Ƿ����ҷ�ת��(randsrc:�������"-1"��"1")
if randsrc==-1
    Y=fliplr(Y);
end
end