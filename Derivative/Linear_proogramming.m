clear all; close all; clc
 

c = [-2; -1];
A = [1 8/3; 1 1; 2 0; -1 0; 0 -1];
b = [4; 2; 3; 0; 0];

[x,f,flag] = linprog(c,A,b) % flag tells us if the soulution converges or not
% check more in help linprog

