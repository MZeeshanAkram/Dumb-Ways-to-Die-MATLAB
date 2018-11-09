function  jump(i_no)
global a;
global d;
global h;
global dis;
if ~isempty(a)
    dis=dis+1.5;
      set(i_no,'xdata',[dis 10+dis])
          if h==1 
          set(i_no,'ydata',[d+10 d])
          d=d+sqrt(5) ;
          end
          if d>=27
              h=0;
          end
          if h==0
            set(i_no,'ydata',[d+10 d])
          d=d-sqrt(5);
        
          end
          if d<=20
              h=1;
             a=[]; 
          end
end
end