clc; clear;

%2

A = [2 9 0 0;
    0 4 1 4;
    7 5 5 1; 
    7 8 7 4];
b = [-1; 6; 0; 9];
a = [3 -2 4 -5];

%3

result_a = A * b;
disp('A * b =');
disp(result_a);

result_b = a + 4;
disp('a + 4 =');
disp(result_b);

result_c = b' * a';
disp('b * a =');
disp(result_c);

result_d = a.*b.';
disp('a * b^T =');
disp(result_d);

result_e = A * a';
disp('A * a^T =');
disp(result_e);

%4

AA_mult = A * A;
disp('A * A (matrix multiplication) =');
disp(AA_mult);

A_square = A^2;
disp('A^2 (matrix raised to power 2) =');
disp(A_square);


A_elem_square = A.^2;
disp('A.^2 (element-wise square) =');
disp(A_elem_square);
%squares every element seperatly

%5

submatrix = A(2:3, :);
disp('Submatrix consisting of 2nd to 3rd rows of A =');
disp(submatrix);

%6

x = A \ b;
disp('Solution to A * x = b (x) =');
disp(x);
%can be done with linesolve also

check_solution = A * x;
disp('Check A * x = b:');
disp(check_solution);
disp('Original b:');
disp(b);
%there are other ways to chechk if answer is true