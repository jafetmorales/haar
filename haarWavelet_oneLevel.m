function [decomp]=haarWavelet_oneLevel(img)

% h=[1 1]/sqrt(2);
% g=[1 -1]/sqrt(2);
% % WE PAD THE INPUT SEQUENCE WITH ZEROS
% x=[zeros(1,length(h)-1) x zeros(1,length(h)-1)];

N=size(img,1);

lp=getLowPassFilter(N);
hp=getHighPassFilter(N);

img=double(img);

aproxVert=lp*img;
aproxVert=aproxVert(2:2:end,:);
detVert=hp*img;
detVert=detVert(2:2:end,:);

partVert=[aproxVert;detVert];

aproxHorz=partVert*lp';
aproxHorz=aproxHorz(:,2:2:end);
detHorz=partVert*hp';
detHorz=detHorz(:,2:2:end);

decomp=[aproxHorz,detHorz];
% figure(1);imshow(decomp,[]);

