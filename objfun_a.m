function [f,g] = objfun_a(x0,phi,X,lambda);

[L M] = size(phi);
B = size(X,2);
a = reshape(x0,M,B);

E = X - phi*a;

f = 0.5*sum(E(:).^2) + lambda*sum(abs(a(:)));

df = -(phi'*E) + lambda*sign(a);
g = df(:);

