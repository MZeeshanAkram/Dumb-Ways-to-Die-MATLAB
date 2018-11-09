function life_3
hold on;
axis equal;
axis([0 60 0 50]);
str=imread('chance_0.png');
image([0 60],[50 0],str);
r{1} =imread('25.png');
r{2}=imread('27.png');
r{3}=imread('30.png');
r{4}=imread('29.png');
r{5}=imread('28.png');
r{6}=imread('26.png');
for e=1:3
    for j=1:6
        image([15 25],[35 25],r{j})
        image([25 35],[35 25],r{j})
        image([35 45],[35 25],r{j})
        pause(0.1)
    end
end
end