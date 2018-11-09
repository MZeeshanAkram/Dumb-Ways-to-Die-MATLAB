function select=select_stage() 
cnt=0;
while cnt==0
    select=randi(5,1,5);
    a=[];
    for i=1:5
        arrange=select(i)-select(i+1:end);
         a(i)=all(arrange);
         if a(i)==0
             break
         end
        end
        if all(a)==1
            cnt=1; 
        end
        a=[];
end