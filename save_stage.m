function save_stage()
tic 
% axis equal;
axis([0 80 0 50]);
b=imread('b_of_safe.png');
image([0 80],[50 0],b);
time=rectangle('position',[0 47 80 3],'facecolor',[1  0.7  0.7],'edgecolor',[1 0.7 0.7]);
tyre=imread('s1.png');
tyr=image([10 30],[30 20],tyre);
mov{1}=imread('m1.png');
mov{2}=imread('m2.png');
mov{7}=imread('m3.png');
mov{3}=imread('m4.png');
mov{4}=imread('m5.png');
mov{5}=imread('m6.png');
mov{6}=imread('m7.png');
global a;
global hundred;
global chance_remain;
move_save=0;m=0;
    set(gcf,'windowbuttondownfcn', 'a=get(gca,''currentpoint'')')
for i=1:100
    for j=1:6
   image([60 65],[30 20],mov{j});

    % check wether   a   is empty or not
         if ~isempty(a)
     b=floor(a(1,1:2));
    if move_save==0
     for k=10:30
         for l=20:30 
                  b=floor(a(1,1:2));
             if b==[k,l]
                 move_save=1;
         set(gcf,'windowbuttonmotionfcn', 'a=get(gca,''currentpoint'')');
             end
         end
     end
         end
    if move_save==1
      set(tyr,'xdata',[a(1,1) a(1,1)+20]);
    end
       if b(1)>=45
           delete(tyr);
           safe=imread('safe.png');
        saf=image([55 75],[38 20],safe)
        pause(1);
         hundred=hundred+1;
        return
       end   
         end
         t=toc*15;
               time=rectangle('position',[0 47 t 3],'facecolor','r','edgecolor','r');
          if t>=80
          chance_remain=chance_remain-1;
                   clr=[121/255 233/255 233/255];
              rectangle('position',[60 20 5 10],'facecolor',clr,'edgecolor',clr);

               dlt2=image([60 65],[28 20],mov{7});
               pause(0.1);
                 delete(dlt2);
                 pause(1)
                      return;
       end
              pause(0.25);
    end
end
end