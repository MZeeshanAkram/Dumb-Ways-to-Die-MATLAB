function jump_over()
 tic;
axis([0 100 0 69])
global hundred;
global b_g1
b_g1=imread('background1.png');

% [r1,map1,alf1]=imread('j1.png');
% [r2,map2,alf2]=imread('j2.png');
% [r3,map3,alf3]=imread('j3.png');
% [r4,map4,alf4]=imread('j4.png');


[r1,map1,alf1]=imread('j1.png');
[r2,map2,alf2]=imread('j2.png');
[r3,map3,alf3]=imread('j3.png');
[r4,map4,alf4]=imread('j4.png');





global dis;
dis=2;
global lose;
lose=0;
global a;
global d;
d=20;
global h;
h=1;
global chance_remain
global i1;
global I1;
global ii1;
for i=1:100
    for j=1:4
        if j==1
        im_no=r1;alf_no=alf1;
        movement(im_no,alf_no);
        end
        if j==2
        im_no=r2;alf_no=alf2;
        movement(im_no,alf_no);
        end
        if j==3
         im_no=r3;alf_no=alf3;
         movement(im_no,alf_no);
        end
        if j==4 
        im_no=r4;alf_no=alf4;
        movement(im_no,alf_no);
        end
                pause(0.1)
        if (dis>=38 && dis<=42)
            fall_no=i1;
             lose_cond(fall_no);
        end
        if (dis>=58 && dis<=62)
              fall_no=I1;
             lose_cond(fall_no);
        end
        if (dis>=78 && dis<=82)
              fall_no=ii1;
            lose_cond(fall_no);
        end
       
if 10*toc>=100
    hundred=hundred+1;
    return 
end 
       if lose==1
          chance_remain=chance_remain-1;
           return
       end
 b_g2=imread('background2.png'); % image of background
  image([0 79.9],[70 0],b_g2)
   t=toc;
    end
end
end
