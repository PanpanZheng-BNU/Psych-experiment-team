%���庯��RanMagic_4_version�������Ա���Ϊn�������ΪY��
function Y=RanMagic_4_version(n);
%����cΪn��ħ������
c=magic(n);
%��8��ħ�����������ά����C�У�
for i=1:8
    if i==5
        c=c';
    end
    c=rot90(c);
    C(:,:,i)=c;
end
%�Ӿ���C�ĵ�����ά���������ȡһ�����������Y��
Y=C(:,:,randi(8));
end
