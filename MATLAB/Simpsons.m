clear all
clc
%f=@(x)(cos(x)^2)
%f=@(x)1/(x*log(x))
f=@(x)(exp((-x)^2))*cos(x)
%a=input('enter the value of a')
%b=input('enter the value of b')
a=-1
b=1
N=input('enter the number of subintervals')
h=(b-a)/N
sum=0;
for i=1:1:N-1
    x=a+h*i
    if rem(i,2)==0
    sum=sum+2*f(x)
    else
        sum=sum+4*f(x)
    end
end
sum=sum+f(a)+f(b)
ans=sum*(h/3)
