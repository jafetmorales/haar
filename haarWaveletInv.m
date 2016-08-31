function [img]=haarWaveletInv(decomp,levIn)

% [decomp]=haarWavelet_oneLevel(img);
dummy=decomp;
for m=levIn:-1:1
    dummy=haarWavelet_decreaseLevel(dummy,m);
end
img=dummy;