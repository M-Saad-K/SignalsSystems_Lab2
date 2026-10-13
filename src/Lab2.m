%{
@ Author : Muhammad Saad Khan 
@ Date : 12 - 10 - 2026
@ Title : Lab2
%}

A = [1 2 3; 4 5 6; 7 8 9];
inv_A = inv(A);
% For not square use pinv
eg_A = eig(A);

A = [2 2/3 1/3; 1 5/3 1/3; 0 2/3 7/3];
B = [2/3 0; -1/3 -1; 2/3 0];
C = [3 1 2];
ideal_rank = size(B,1);

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

[Q, lambda] = eig(A); % Supposed to be eigenvectors
A_prim = lambda;
B_prim = inv(Q)*B; % if element is zero, not controllable
C_prim = C*Q; % if element is zero, not observable 

% Exercise 3 Matrix
A_3 = [5/2 -1/2 -1/6; -1 2 -1/3; -1/2 -1/2 3/2];
B_3 = [1/6 -1/2; -2/3 0; -1/2 -1/2];
C_3 = [3 -3 -1];

[Q_3, lambda_3] = eig(A_3); % Supposed to be eigenvectors
A_3prim = lambda_3;
B_3prim = inv(Q_3)*B_3; % if element is zero, not controllable
C_3prim = C_3*Q_3; % if element is zero, not observable 

%{
Answers - Exercise 1:
1. No, one state not controllable
2. Yes
3. Yes
4. No

Answers - Exercise 2:
1. No
2. No
3. Yes, State 2 can't be observed

Answers - Exercise 3:
1. Since the eigenvalues are the same in both systems, then the systems are
identical.
%}


