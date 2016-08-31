function [decomp]=haarWavelet_decreaseLevel(decomp,levIn)

N=size(decomp,1);
quad_dec=decomp(1:(N/2^(levIn-1)),1:(N/2^(levIn-1)));
quad_rec=haarWaveletInv_oneLevel(quad_dec);
decomp(1:(N/2^(levIn-1)),1:(N/2^(levIn-1)))=quad_rec;
