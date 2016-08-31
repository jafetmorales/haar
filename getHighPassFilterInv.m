function [hpInv]=getHighPassFilterInv(N)

hpInv=circshift(-eye(N,N),[0,-1])+eye(N,N);
hpInv(1,end)=0;
hpInv=hpInv/sqrt(2);
