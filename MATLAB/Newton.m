clc
clear all
syms x
f=@(x) cos(x)-x*exp(x)
g=diff(f,x)
h=inline(g)
x0=input('The initial approximation')
e=input('Input tolerance')
N=input('No of iterations')
for i=1:1:N
    x1=x0-(f(x0)/h(x0))
    if(abs(x1-x0)<=e)
        fprintf('Procedure successful with answer %d',x1)
    end
    x0=x1;
end
