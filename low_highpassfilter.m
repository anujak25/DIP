


%% Part 1 : Import the Image

I_dip = imread('dip.jpg');
I_dip = rgb2gray(I_dip);
figure(1); title('Original Image'); imshow(I_dip);

%% Part 2 : Design the Filters

HPF = [-1,-1,-1;-1,8,-1;-1,-1,-1];

f = ones(3,3)/9;


%% Part 3 : Apply the Filters

I_dip_HPF = conv2(I_dip,HPF);
I_dip_LPF = conv2(I_dip,f);
figure(2);
subplot(121); imshow(uint8(I_dip_HPF)); title("dip - HPF ");
subplot(122); imshow(uint8(I_dip_LPF)); title("dip - LPF ");