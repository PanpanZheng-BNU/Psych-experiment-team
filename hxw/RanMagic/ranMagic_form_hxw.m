clc;clear;close all;
function A = ranMagic
B = magic(3);
C = rot90(B);
D = rot90(B,2);
E = rot90(B,3);
F = fliplr(B);
G = flipud(B);
H = fliplr(C);
I = flipud(C);
X = [B C D E F G H I];
n = randi(8);
A = [X(:,3*n) X(:,3*n-1) X(:,3*n-2) ];
end
