   function candle_stage()
tic
% axis equal
global hundred;
global chance_remain;
axis([0 60 0 60]);
clr=[137/255 201/255 172/255];
b_g=imread('b_candle.png');
image([0 60],[60 0],b_g)
cnd=imread('candle.png');
fir3=imread('f1.png');
fir2=imread('f2.png');
fir1=imread('f3.png');
time=rectangle('position',[0 57 60 3],'facecolor',[1  0.7  0.7],'edgecolor',[1 0.7 0.7]);
cand1=image([10 13],[22 15],cnd);
cand2=image([25 28],[15 8],cnd);
cand3=image([47 50],[22 15],cnd);
cand4=image([20 23],[52 45],cnd);
 cand5=image([40 43],[50 43],cnd);
global a
 c1=0;c2=0;c3=0;c=0;
for i=1:20
        grphs1=0;grphs2=0;
        grphs3=0;
    for j=1:3
        
        if c1==0
        set(cand1,'xdata',[10 13+grphs1],'ydata',[22+grphs1 15])
        grphs1=grphs1+0.1;
        end
        if c2==0
        set(cand3,'xdata',[47 50+grphs2],'ydata',[22+grphs2 15])
        grphs2=grphs2+0.1;
        end
        if c3==0
        set(cand5,'xdata',[40 43+grphs3],'ydata',[50+grphs3 43])
        grphs3=grphs3+0.1;
        end
        if c1==0 
        if j==1
             image([8.5 11.5],[24.5 21.5],fir1)
         end
         if j==3
             image([8.5 11.5],[24.5 21.5],fir2)
         end
         if j==2
             image([8.5 11.5],[24.5 21.5],fir3)
         end
        end
         if c2==0
          if j==1
             image([45.5 48.5],[24.5 21.5],fir1)
         end
         if j==3
             image([45.5 48.5],[24.5 21.5],fir2)
         end
         if j==2
             image([45.5 48.5],[24.5 21.5],fir3)
         end
         end
         
         if c3==0
          if j==1
             image([38.5 41.5],[52.5 49.5],fir1)
         end
         if j==3
             image([38.5 41.5],[52.5 49.5],fir2)
         end
         if j==2
             image([38.5 41.5],[52.5 49.5],fir3)
         end
         end
         
         if ~isempty(a)
             if c1==0
             if a(1,1)>=9 && a(1,1)<=13
             if a(1,2)>=15 && a(1,2)<=22
                c1=1;
            rectangle('position',[8.5 21.5 3 3],'facecolor',clr,'edgecolor',clr)         
         c=c+1;
             end
             end
             end
             if c2==0
             if a(1,1)>=46 && a(1,1)<=50
             if a(1,2)>=15 && a(1,2)<=22
                c2=1;
            rectangle('position',[45.5 21.5 3 3],'facecolor',clr,'edgecolor',clr)         
                  c=c+1;
             end
             end
             end
             if c3==0
             if a(1,1)>=39 && a(1,1)<=43
             if a(1,2)>=43 && a(1,2)<=50
                c3=1;
            rectangle('position',[38.5 49.5 3 3],'facecolor',clr,'edgecolor',clr)         
                  c=c+1;
             end
             end
             end
             a=[];
         end
         if c==3
             pause(1);
              hundred=hundred+1;
         return
         end
        pause(0.1);
        t=toc;
time=rectangle('position',[0 57 15*toc 3],'facecolor','r','edgecolor','r');
        if 15*toc>=60
          chance_remain=chance_remain-1;
           pause(1);
        return
        end
    end
end
  end