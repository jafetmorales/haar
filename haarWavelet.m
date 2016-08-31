function [decomp]=haarWavelet(img,levOut)

dummy=img;
for m=1:(levOut)
    dummy=haarWavelet_incrementLevel(dummy,m-1);
end
decomp=dummy;
