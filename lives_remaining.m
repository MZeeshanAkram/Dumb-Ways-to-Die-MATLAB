if chance_remain==3
    life_3();
    a=[];
    count_score();
elseif chance_remain==2
 if chance2==0
    life_2();
    a=[];
    count_score();
 else
    life_3_used();a=[];
    count_score(); 
 end
 chance2=1;
elseif chance_remain==1
if chance1==0
    life_1();a=[];
    count_score();
else
   life_2_used();a=[];
   count_score();
end
chance1=1;
else
start_again();
chance_remain=3;
chance2=0;
chance1=0;
a=[];
return;
end
