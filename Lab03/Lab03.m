clear all
close all

%% Read the images

img = double(imread('car.bmp'));
% img = double(imread('cameraman.tif'));
%img = imread('boccadasse.jpg');

%make gray image

if size(img,3)>1
    img = rgb2gray(img); 
end

%figure, imagesc(img),colormap gray, 
%title('Original image')

%% Parameters

sigma=(1:1:4);

%% Laplacian of Gaussian Operator:

for i=1:length(sigma)
    g(:,:,i)=LaplacianOfGaussian(sigma(i));
end

method(1:lenght(sigma))=5;
printFigure(length(sigma), 2, g, method, 'From 1 to 4 with step 1 LoG comparison')

%% Convolve Gaussian with Original Image



