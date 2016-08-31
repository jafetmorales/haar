function [hp]=getHighPassFilter(N)

hp=circshift(eye(N,N),[0,-1])-eye(N,N);
hp(1,end)=0;
hp=hp/sqrt(2);
