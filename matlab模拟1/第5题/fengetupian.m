c=imread('fengexinzuo/xinzuo.jpg');
foldername='fengejieguo';
filename1={'Aries','Taurus','Gemini','Cancer','Leo','Virgo','Libra','Scorpio','Sagittarius','Capricorn','Aguarius','Pisces'};
mkdir(foldername);
k=1;
for i=1:250:501
    for ii=1:250:751
        temp=c(i:i+249,ii:ii+249,:);
        imshow(temp);
        fullname=[foldername,'/',filename1{k},'.jpg'];
        k=k+1;
        imwrite(temp,fullname,'jpg');
    end
end
