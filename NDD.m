% newton divided
clc
clear all
x=[1 1.5 2 2.5]
f=[2.7183 4.4817 7.3891 12.1825]
n=length(x)
for i=1:n
    d(i,1)=f(i)
end
for j=2:1:n
    for i=j:n
d(i,j)=(d(i,j-1)-d(i-1,j-1))/(x(i)-x(i-j+1))
    end
end
p=input('p: ')
sum=0;
for i=1:n
    product = d(i,i);
    for j=1:i-1
        product=product*(p-x(j));
    end
    sum=sum+product;
end
sum