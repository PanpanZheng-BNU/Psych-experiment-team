%���庯��RanMagic_3_version�������Ա���Ϊn�������ΪY��
function Y=RanMagic_3_version(n)
%����cΪn��ħ������
c=magic(n);
%�ú�Ԫ��������ͬ�ķ�ʽ����8��ħ���������ṹ��s�У�
for ii=1:8;
    if ii==5
        c=c';
    end
    c=rot90(c);
    s(ii).magic=c;
end
%����ӽṹ��s�г��һ��ά�ȣ������Ա���Y��
Y=s(randi(8)).magic;
end