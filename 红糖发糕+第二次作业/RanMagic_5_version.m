%���庯��RanMagic_5_version�������Ա���Ϊn�������ΪY��
function Y=RanMagic_5_version(n);
%����cΪn��ħ������
c=magic(n);
%��8��ħ����������ά����C�У�
C=[];
for i=1:8
    if i==5
        c=c';
    end
    c=rot90(c);
    C=[C c];
end
%�Ӿ���C�ĵ�����ά���������ȡһ�����������Y��
r=randi(8);
Y=[];
for ii=1:n
    Y=[Y C(:,n*r-ii+1)];
end
end
