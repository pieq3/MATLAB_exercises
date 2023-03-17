% This script takes as input the next values of an artificial Wigley hull
% and processes them into a .csv file in order to implement it in
% Rhinoceros. Made as an academic practice excercise.
% The origin of the coordinate system chosen is top-amidships.
% pieq3, 17/03/2023
% v1

clc;
clear;


T = 10; % draft
B = 10; % half-breadth
L = 40; % overall length
N = 20; % number of sections
fr = L/N; % length between frames (constant)
p = 20; % points per section (10 per side)
wl = T/p; % space between waterlines (constant)


A = zeros((N+1)*(p+1),3);
A(1:N+1,1) = -L/2;

    for i = 1 : max(N,p)
        if i <= N
            A(i+1,1) = A(i,1) + fr; %calculates the "x" values
        end

        if i <= p
            A(i+1,3) = A(i,3) - wl; %calculates the "z" values
        end
    end


A(1:(N+1)*(p+1),1) = repelem(A(1:N+1,1) , p+1);         %this and the next line are "adjustaments" in order to evaluate
A(1:(N+1)*(p+1),3) = repmat(A(1:p+1,3) , (N+1) , 1);    %tidily every y considering a constant x and every waterplane, top-bottom
A(1:(N+1)*(p+1),2) = B*(1-(2*A(1:(N+1)*(p+1),1)/L).^2).*(1-(A(1:(N+1)*(p+1),3)/T).^2); %y

writematrix(A,'carenawigley.csv')





