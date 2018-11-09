function lose_cond(fall_no)
fl=20;
global d;
global lose;
if d==20 
    for i=1:10
        set(fall_no,'ydata',[fl+10 fl])
        fall=imread('fall.png');
        image([27.5 59],[20 0],fall)
        fl=fl-2;
        pause(0.25)
    end
    lose=1;
end 
