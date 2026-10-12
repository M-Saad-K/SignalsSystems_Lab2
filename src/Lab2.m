%{
@ Author : Muhammad Saad Khan 
@ Date : 12 - 10 - 2026
@ Title : Lab2
%}

A = [1 2 3; 4 5 6; 7 8 9];
inv_A = inv(A);
% For not square use pinv
eg_A = eig(A);

%% Task 1
%{
Steps:
1.Get eigens v1, v2, 
2. Extract y(t)
3. T^-1
4. Use Rank for z1 and z2 and y(t)
%}
A = [2, 2/3, 1/3; 1, 5/3, 1/3; 0, 2/3, 7/3];
B = [2/3 0; -1/3 -1; 2/3 0];
C = [3 1 2];
ideal_rank = 3;

if (rank(ctrb(A, B)) == ideal_rank)
    disp("The system has controllability");
else
    fprintf('The system doesnt have controlability:\nRank %d\nIdeal: %d\n', rank(ctrb(A, B)), ideal_rank);
end 
if rank(obsv(A, C)) == ideal_rank
    disp("The system has observability");
else
    fprintf('The system is not observable:\nRank %d\nIdeal: %d\n', rank(obsv(A, C)), ideal_rank);
end

%{
Answers - Exercise 1:
1. No, one state not controllable
2. Yes
3. Yes
4. No

Answers - Exercise 2:

%}

