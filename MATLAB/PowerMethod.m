clc
clear all
A=[4 1 0;1 20 1;0 1 4]
x=[1;1;1]
tol=0.001;
N=100;
for i=1:1:N
    y=A*x
    k1=max(abs(y))
    x=y*(1/k1)
    y1=A*x
    k2=max(abs(y1))
    x=y1*(1/k2)
    if(abs(k2-k1)<tol)
        break
    end
    k1=k2;
end
