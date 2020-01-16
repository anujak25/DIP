clc;
close all;
clear all;
A = imread('ngc6543a.jpg');
%image(A)
figure
subplot(2,2,1)
imshow(A)
subplot(2,2,2)
imhist(A,64)
J = histeq(A);

subplot(2,2,3)
imshow(J)
subplot(2,2,4)
imhist(J,64)