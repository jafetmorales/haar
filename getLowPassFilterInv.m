function [lpInv]=getLowPassFilterInv(N)

lpInv=circshift(eye(N,N),[0,-1])+eye(N,N);
lpInv(1,end)=0;
lpInv=lpInv/sqrt(2);


