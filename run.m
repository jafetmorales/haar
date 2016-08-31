% THIS PROGRAM PERFORMS A WAVELET DECOMPOSITION OF 
% THE IMAGE TOWER.GIF BY USING FILTERBANKS
clear all
close all
clc

ic=double(imread('tower.tif'));

levs=5;
[wc]=haarWavelet(ic,levs);
figure(70);imshow(wc,[])

ic=haarWaveletInv(wc,levs);
figure(11);imshow(ic,[0 255])