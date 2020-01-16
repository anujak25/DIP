clc;
clear all;
close all;
A=imread('ngc6543a.jpg');
%A=imread('coins.png');
BW = im2bw(A,level)
BW = im2bw(X,cmap,level)
BW = im2bw(RGB,level)
B=bitget(A,1);
figure,
subplot(2,2,1);
imshow(logical(B));
title('Bit plane 1');

B=bitget(A,2);
subplot(2,2,2);imshow(logical(B));title('Bit plane 2');

B=bitget(A,3);
subplot(2,2,3);imshow(logical(B));title('Bit plane 3');


B=bitget(A,4);
subplot(2,2,4);imshow(logical(B));title('Bit plane 4');
B=bitget(A,5);
figure,
subplot(2,2,1);imshow(logical(B));title('Bit plane 5');







B=bitget(A,6);
subplot(2,2,2);imshow(logical(B));title('Bit plane 6');


B=bitget(A,7);
subplot(2,2,3);imshow(logical(B));title('Bit plane 7');


B=bitget(A,8);
subplot(2,2,4);imshow(logical(B));title('Bit plane 8');