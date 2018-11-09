hold on;
axis equal;
axis([0 60 0 50]);
str=imread('start.png');
image([0 60],[50 0],str);
p_button=imread('start_button.png');
push=image([22 36],[13 3],p_button);
% variable hundred is to count the score in hundreds
global hundred;
hundred=0;
global a;
a=[];
global chance_remain;
chance_remain=3;try_again=1;
chance2=0;
chance1=0;
[y,Fs]=audioread('sound.mp3');
sound(y,Fs)
while 1
gprs=0;
          set(gcf, 'WindowButtonDownFcn', 'a = get(gca, ''CurrentPoint'')');
    % this will move the push buttonup and down
          for j=1:5
        set(push,'xdata',[22 36+gprs],'ydata',[13+gprs 3])
        gprs=gprs+0.05;
        pause(0.1)
          end
      
% this code is to click the pushh button
    if ~isempty(a)
             if a(1,1)>=22 && a(1,1)<=36
             if a(1,2)>=3 && a(1,2)<=13
                 a=[]; 
                 while 1
 % it will randomely select the stage
                 select=select_stage();  
for i=1:5
         if select(i)==1
             running_stage(); a=[];
             lives_remaining;
         end
          if select(i)==2
             jump_over();
             lives_remaining;
          end
          if select(i)==3
              rats_stage(); 
              lives_remaining;
          end
          if select(i)==4
              candle_stage();
              lives_remaining;
          end
          if select(i)==5
              save_stage();
              lives_remaining;
          end
      end   
                 end
             end
             end
    end
end