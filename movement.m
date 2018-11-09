function movement(im_no,alf_no)
global a;
global d;
global b_g1;
global dis;
dis=dis+1;
global i1;
global I1;
global ii1;
  i1=image([0+dis 10+dis],[30 20],im_no);
  set(i1,'alphadata',alf_no)
  ii1=image([-40+dis -30+dis],[30 20],im_no);
  set(ii1,'alphadata',alf_no)
  I1=image([-20+dis -10+dis],[30 20],im_no);
  set(I1,'alphadata',alf_no)
  i_no=i1;I_no=I1;ii_no=ii1;
  jump(i_no);jump1(I_no);jump2(ii_no);
  image([80 100],[70 0],b_g1) % image of background
  time=rectangle('position',[0 65 100 4],'facecolor',[1  0.7  0.7],'edgecolor',[1 0.7 0.7]);
  time=rectangle('position',[0 65 10*toc 4],'facecolor','r','edgecolor','r');
end