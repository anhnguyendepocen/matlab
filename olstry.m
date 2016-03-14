clc;
clear all;

DataIn = dlmread('C:\Users\Haritz\Desktop\Haritz Git\Matlab_book\auto.csv');
y      = DataIn(:,1);
X      = DataIn(:, 2:3);
size(X)
X      = [X, ones(74,1)];

XX=X'*X;
Xy=X'*y;
BetaHat=(inv(XX))*Xy

[OLS_Beta,OLS_se, CIl, CIh]=OLS(y,X);
[OLS_Beta,OLS_se, CIl, CIh]