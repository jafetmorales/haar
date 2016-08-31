function [lp]=getLowPassFilter(N)

lp=circshift(eye(N,N),[0,-1])+eye(N,N);
lp(1,end)=0;
lp=lp/sqrt(2);


