clc;
clear all;

tic 

Beta  = 0.9;
T     = 10;
K1    = 100;
lb    = eps*ones(10, 1);
ub    = 100*ones(10,1);
guess = 10*ones(10, 1);
A     = ones(1, 10);
opt   = optimset('TolFun', 1E-20, 'TolX', 1E-20, 'algorithm', 'sqp');
c     = fmincon(@(C) FlowUtility(T, Beta, C), guess, A, K1, [], [],...
        lb, ub, [], opt)



toc