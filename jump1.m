function jump1(I_no)
global a;
global d;
global h;
global dis;
if ~isempty(a)
    dis=dis+1.5;
      set(I_no,'xdata',[-20+dis -10+dis])
          if h==1 
          set(I_no,'ydata',[d+10 d])
          d=d+sqrt(5) ;
          end
          if d>=27
              h=0;
          end
          if h==0
            set(I_no,'ydata',[d+10 d])
          d=d-sqrt(5);
        
          end
          if d<=20
              h=1;
             a=[]; 
          end
end
end