function count_score()
hnd{10}=imread('0_h.png');
hnd{1}=imread('1_h.png');
hnd{2}=imread('2_h.png');
hnd{3}=imread('3_h.png');
hnd{4}=imread('4_h.png');
hnd{5}=imread('5_h.png');
hnd{6}=imread('6_h.png');
hnd{7}=imread('7_h.png');
hnd{8}=imread('8_h.png');
hnd{9}=imread('9_h.png');
global hundred;
for h=1:10
        if hundred==0
            image([20 25],[23 18],hnd{10});
        elseif hundred==h
            image([20 25],[23 18],hnd{h});
        end 
end
p=2;
if hundred==10
    p=3;
end
ad=5;
for f=1:p
     image([20+ad 25+ad],[23 18],hnd{10});
     ad=ad+5;
end   
     pause(1)
end
     