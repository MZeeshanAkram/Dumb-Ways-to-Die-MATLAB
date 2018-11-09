 function rats_stage()
tic
hold on;
axis([0 15 0 10]);
b_rats=imread('b_of_rats.png');
image([0 15],[10 0],b_rats);
Y1=imread('s2.png');
Y2=imread('s3.png');
Y3=imread('s4.png');
global hundred;
global chance_remain;
time=rectangle('position',[0 9.3 15 0.7],'facecolor',[1  0.7  0.7],'edgecolor',[1 0.7 0.7]);
y1=imread('rt2.png');
 i1=image([10 11],[4 3],y1);
y2=imread('rt2.png');
 i2=image([15 16],[3 2],y2);
 y3=imread('rt2.png');
 i3=image([10 11],[2 1],y3);
y4=imread('rt2.png');
 i4=image([15 16],[1 0],y4);
global a
 out=0;
out_1=0;
out_2=0;
out_3=0;
out_4=0;
   mov_1=9;
   mov_2=10;
   mov_3=8;
   mov_4=10;rnd=0.5;
    d1=randi([5,12]);h1=1;
     d2=randi([5,12]);h2=1;
      d3=randi([5,12]);h3=1;
       d4=randi([5,12]);h4=1;
for i=1:300
 I1=image([6 9],[8 4],Y1);  
     if out_1==0
          if h1==1 
          set(i1,'xdata',[d1 d1+2])
          d1=d1+rnd;
          end
          if d1==14
              h1=0;
          end
          if h1==0
            set(i1,'xdata',[d1 d1-2])
          d1=d1-rnd;
          end
          if d1==3
              h1=1;
          end
     end
    if out_2==0
         if h2==1 
          set(i2,'xdata',[d2 d2+2])
          d2=d2+rnd;
          end
          if d2==14
              h2=0;
          end
          if h2==0
            set(i2,'xdata',[d2 d2-2])
          d2=d2-rnd;
          end
          if d2==3
              h2=1;
          end
    end
    if out_3==0
         if h3==1 
          set(i3,'xdata',[d3 d3+2])
          d3=d3+rnd;
          end
          if d3==14
              h3=0;
          end
          if h3==0
            set(i3,'xdata',[d3 d3-2])
          d3=d3-rnd;
          end
          if d3==3
              h3=1;
          end
    end
    if out_4==0
         if h4==1 
          set(i4,'xdata',[d4 d4+2])
          d4=d4+rnd;
          end
          if d4==14
              h4=0;
          end
          if h4==0
            set(i4,'xdata',[d4 d4-2])
          d4=d4-rnd; 
          end
          if d4==3
              h4=1;
          end
    end
  if out_1==1
     set(i1,'xdata',[mov_1 mov_1+2])
  mov_1=mov_1+5;
  end
  if out_2==1
         set(i2,'xdata',[mov_2 mov_2+2])
  mov_2=mov_2+5;
  end
  if out_3==1
         set(i3,'xdata',[mov_3 mov_3-2])
    mov_3=mov_3-5;
  end
  if out_4==1
    set(i4,'xdata',[mov_4 mov_4-2])
    mov_4=mov_4-5;
  end
  if a~=[0]
    b=floor(a(1,1:2));
if b==[d1,3]
        out_1=1;
end
if b==[d2,2]     
        out_2=1;
end
if b==[d3,1]
        out_3=1;
end
if b==[d4,0]
         out_4=1;
end 
  end
  if out_1==1 && out_2==1 && out_3==1 && out_4==1
      for k=1:10
         set(i1,'xdata',[mov_1 mov_1+2])
    mov_1=mov_1+5;
         set(i2,'xdata',[mov_2 mov_2+2])
    mov_2=mov_2+5;
         set(i3,'xdata',[mov_3 mov_3-2])
    mov_3=mov_3-5;
         set(i4,'xdata',[mov_4 mov_4-2])
    mov_4=mov_4-5;
    pause(0.1)
      end
       pause(1)
        hundred=hundred+1;
      return
  end
t=toc;
time=rectangle('position',[0 9.3 (15/10)*toc 0.7],'facecolor','r','edgecolor','r');
if toc>=10
          chance_remain=chance_remain-1;
        for j=1:2
            if j==1 
        image([6 9],[8 4],Y2);
            end
             if j==2
        image([6 9],[8 4],Y3);
             end
             pause(0.1)
        end
        pause(1)
        return
end
    pause(0.1);
end
 end