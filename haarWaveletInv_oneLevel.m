function [recomp]=haarWaveletInv_oneLevel(decomp)

N=size(decomp,1);

aproxHorz=decomp(:,1:(N/2));
detHorz=decomp(:,(N/2+1):end);

aproxHorz=kron(aproxHorz,[1 0]);
detHorz=kron(detHorz,[1 0]);

lpInv=getLowPassFilterInv(N);
% lpInv=lp(:,length(lp):-1:1);
hpInv=getHighPassFilterInv(N);
% hpInv=hp(:,length(hp):-1:1);

aproxHorz=aproxHorz*lpInv';
detHorz=detHorz*hpInv';

partVert=aproxHorz+detHorz;

aproxVert=partVert(1:(N/2),:);
detVert=partVert((N/2+1):end,:);

aproxVert=kron(aproxVert,[1;0]);
detVert=kron(detVert,[1;0]);

aproxVert=lpInv*aproxVert;
detVert=hpInv*detVert;

recomp=aproxVert+detVert;
