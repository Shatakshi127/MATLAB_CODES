clc
clear all
f=@(x) (exp(-x)*(x^2+5*x+2))+1
e=input('Input tolerance value')
N=input('Input no of iterations')
x0=input('Initial approx1')
x1=input('Initial approx2')
for i=1:1:N
    x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1)
    if(abs(x2-x1)<=e)
        fprintf('Procedure successful with answer %d',x2)
        break
    end
    x0=x1;
    x1=x2;
end
