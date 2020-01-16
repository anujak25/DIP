clc;
close all;
clear all;
% rgbImage = imread('ngc6543a.jpg');
% imshow(rgbImage);
X=imread('ngc6543a.jpg'); 
R = X(:,:,1); image(R), colormap([[0:1/255:1]', zeros(256,1), zeros(256,1)]), colorbar;
%Green Component
G = X(:,:,2); 
figure; image(G), colormap([zeros(256,1),[0:1/255:1]', zeros(256,1)]), colorbar;
%Blue component 
B = X(:,:,3); 
figure; image(B), colormap([zeros(256,1), zeros(256,1), [0:1/255:1]']), colorbar;