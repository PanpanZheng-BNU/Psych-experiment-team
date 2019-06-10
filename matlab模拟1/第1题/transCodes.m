function newStrings = transCodes(originalStrings)
tempasc=abs(originalStrings);
for i=1:length(tempasc);
    if tempasc(i)>=65 & tempasc(i)<=90;
        if tempasc(i)~=90;
            tempasc(i)=tempasc(i)+33;
        else
            tempasc(i)=tempasc(i)+33-26;
        end
    elseif tempasc(i)>=97 & tempasc(i)<=122;
        if tempasc(i)~=122;
            tempasc(i)=tempasc(i)-31;
        else
            tempasc(i)=tempasc(i)-31-26;
        end
    elseif tempasc(i)>=48 & tempasc(i)<=57;
        tempasc(i)=42;
    else
        tempasc(i)=999;
    end
end

kong=find(tempasc==999);
kong=sort(kong,'descend');
for i=1:length(kong)
    tempasc(kong(i))=[];
end
newStrings=char(tempasc);