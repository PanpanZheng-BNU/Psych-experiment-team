%���庯��RanMagic_2_version�������Ա���Ϊn�������ΪY��
function Y=RanMagic_2_version(n);
%����aΪһ��1��8�е�Ԫ�����飻
a=cell(8,1);
%����cΪn��ħ������
c=magic(n);
%ͨ��forѭ������ħ�������8������ľ�����ΪԪ������a��Ԫ�أ�����Ԫ������a�У�
for ii=1:8;
    if ii==5
        c=c';
    end
    c=rot90(c);
    a{ii}=c;
end
%����YΪԪ������a�е�����һ��Ԫ��(����һ��ħ������)��
Y=a{randi(8)};
end