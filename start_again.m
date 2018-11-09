function start_again()
hold on;
axis equal;
axis([0 60 0 50]);
str=imread('chance_2.png');
image([0 60],[50 0],str);
r1=imread('25.png');
r7=imread('up_grv.png');     
image([15 25],[35 25],r1)
r8=imread('down_grv.png');
up=image([15 25],[55 45],r7);dis=0;
g_over=imread('game_over.png');
over=image([15 45],[60 55],g_over);
global a;
for i=1:15
     if dis<=20
        set(up,'ydata',[55-dis 45-dis])
        end
        if dis==20
        image([14 26],[25 22],r8)
        end
        dis=dis+2
        pause(0.1)
end
d=0;
 for i=1:10
    set(over,'ydata',[60-d 55-d]);
    d=d+2;
    pause(0.1)
 end
 p_button=imread('start_button.png');
push=image([22 36],[13 3],p_button);
count_score()
while 1
        gprs=0;
    for j=1:5
        set(push,'xdata',[22 36+gprs],'ydata',[13+gprs 3])
        gprs=gprs+0.1;
        pause(0.1)
    end
    
     if ~isempty(a)
             if a(1,1)>=22 && a(1,1)<=36
             if a(1,2)>=3 && a(1,2)<=13
    return;
             end
             end
     end
    
        pause(0.1)
end