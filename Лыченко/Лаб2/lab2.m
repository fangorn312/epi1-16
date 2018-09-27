clear all
clc
%1
A=[1 4 2; 6 8 2; 3 8 4; 7 2 9];
A=[1 4 2
   6 8 2
   3 8 4
   7 2 9];
save 'a1.mat' A;
load('a1.mat');
A

%2
A(5,1)=exp(-1)
A(1,5)=sqrt(2)
%3
disp(A(3,4))
%4
B=A(2:3,1:3)
%5
B1=A(2, :)
%6
AI=eye(5,5)
%7
BT=B'

%8
A1=A+AI
A2=A-AI
A3=A*AI
A4=A/AI
A5=AI\A
A6=inv(A1)

%9
C1=B1+A(1, :)
C2=B1-A(1, :)
C3=B.*A(1:2, 1:3)
C4=BT.\AI(1:3, 1:2)
C5=AI./A

%10
DET_A5 = det(A5)
POWER_A4 = A4^2

%11
D =[1  2  3
   0 -3 -6
   0  2  4].^3

%12
run('a7.m')

%13
Root = roots([1 -1 -16 16])
Root2 = roots([5.6 90 1.07 8 -0.002 -18]) 

%14
L = [1 -3 0
     1 -8 2
    -1 -6 -1]
K = [5; 4; 3]
P3 = inv(L)*K

L2 = [1 3 1 4
      2 6 4 8
      4 9 2 12
      3 3 3 4]
K2 = [0; -1; 1; 0]
P4 = pinv(L2)*K2
save 'lab2.mat'



