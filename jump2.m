function jump3(ii_no)
global a;
global d;
global h;
global dis;
if ~isempty(a)
    dis=dis+1.5;
      set(ii_no,'xdata',[-40+dis -30+dis])
          if h==1 
          set(ii_no,'ydata',[d+10 d])
          d=d+sqrt(5) ;
          end
          if d>=27
              h=0;
          end
          if h==0
            set(ii_no,'ydata',[d+10 d])
          d=d-sqrt(5);
        
          end
          if d<=20
              h=1;
             a=[]; 
          end
end
end