function life_1()

hold on;
axis equal;
axis([0 60 0 50]);
str=imread('chance_1.png');
image([0 60],[50 0],str);
r{1}=imread('25.png');
r{2}=imread('27.png');
r{3}=imread('30.png');
r{4}=imread('29.png');
r{5}=imread('28.png');
r{6}=imread('26.png');
r{7}=imread('up_grv.png');     
image([25 35],[35 25],r{1});
r8=imread('down_grv.png');
up=image([25 35],[55 45],r{7});dis=0;
for e=1:3
    for j=1:6
        image([15 25],[35 25],r{j}) 
        if dis<=20
        set(up,'ydata',[55-dis 45-dis])
        end
        if dis==20
        image([24 36],[25 22],r8);
        end
        dis=dis+2;
        pause(0.1);
    end
end
end