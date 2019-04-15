function Y=RanMagic_from_zpp_4_version(n);
a=magic(n);
for i=1:8
    if a==5
        a=a';
    end
    a=rot90(a);
    A(:,:,i)=a;
end
end
