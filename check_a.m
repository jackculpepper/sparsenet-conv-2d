
L = 5;
M = 4;
B = 3;

a = randn(M,B);
phi = randn(L,M);
X = randn(L,B);

lambda = 0.1;

checkgrad('objfun_a', a(:), 0.01, phi, X, lambda)

