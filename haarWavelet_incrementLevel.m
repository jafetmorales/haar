function [decomp]=haarWavelet_incrementLevel(decomp,levIn)

aprox=decomp(1:(size(decomp,1)/2^levIn),1:(size(decomp,1)/2^levIn));
[decomp2]=haarWavelet_oneLevel(aprox);
% [decomp2]=haarWavelet_oneLevel(decomp);
decomp(1:(size(decomp,1)/2^levIn),1:(size(decomp,1)/2^levIn))=decomp2;