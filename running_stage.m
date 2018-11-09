function running_stage()
tic
hold on
axis equal
% axis off
global hundred;
global chance_remain;
clr=[0.88 0.88 0];
 fill([0 100 100 0],[0 0 80 80],clr,'edgecolor',clr);
 time=rectangle('position',[0 74 100 6],'facecolor',[1  0.7  0.7],'edgecolor',[1 0.7 0.7]);

i{1}=imread('31.png');
i{2}=imread('42.png');
i{3}=imread('32.png');
i{4}=imread('40.png');
i{5}=imread('34.png');
i{6}=imread('41.png');
i{7}=imread('35.png');
i{8}=imread('42.png');
i{9}=imread('34.png');
i{10}=imread('43.png');
i{11}=imread('36.png');
i{12}=imread('41.png');
i{13}=imread('34.png');

c=0.1;
global a;
dis=2;
for j=1:50
for n=1:13
if isempty(a)
    
   fill([-dis 0 0 -dis],[0 0 74 74],clr,'edgecolor',clr);
%    time=rectangle('position',[-dis 74 100-dis 6],'facecolor',[1  0.7  0.7],'edgecolor',[1 0.7 0.7]);
    
     if mod(n,2)==0
            image([75-dis 95-dis],[40 25],i{n});
     else     
         image([10 50],[50 20],i{n})
     end
     axis([0-dis 100-dis 0 80]);
     dis=dis+0.15;
     if dis>=25
i14=imread('die.png');
image([75-dis 95-dis],[40 25],i14);
          chance_remain=chance_remain-1;
pause(2);
%  time=rectangle('position',[0-dis 74 10*toc-c 6],'facecolor','r','edgecolor','r');
return
     end
end
if ~isempty(a)
if a(1,1)>70-dis &&  a(1,1)<90-dis
    if a(1,2)>20 &&  a(1,1)<40
        if mod(1,2)==0
            image([75 95],[40 25],i{n});
        end
    end
end
a=[];
end
c=0.1;

t=toc;
l=5*toc-c;
 time=rectangle('position',[0-dis 74 l 6],'facecolor','r','edgecolor','r');
c=dis;
if toc>=20
    fill([70-dis 90-dis 90-dis 70-dis],[20 20 40 40],clr,'edgecolor',clr);
    fill([10 50 50 10],[20 20 50 50],clr,'edgecolor',clr);
    i15=imread('38.png');
    I15=image([10 50],[50 20],i15);    
for i=1:5:400
    set(I15,'xdata',[20+i 70+i])
    pause(0.1)
end
 hundred=hundred+1;
       return;
end
 pause(0.05);
end
end
end