clc 
clear all
A=[10 8 -3 1 16;2 10 1 -4 9;3 -4 10 1 10;2 2 -3 10 11]
n=input('Input the number of unknowns')
for i=1:1:n-1
    for j=i+1:1:n
        m(j,i)=A(j,i)/A(i,i)
        A(j,:)=A(j,:)-m(j,i)*A(i,:)
    end
end
A
x(n)=A(n,n+1)/A(n,n)
for j=n-1:-1:1
    sum=0;
    for i=j+1:n
        sum=sum+A(j,i)*x(i)
    end
    x(j)=(A(j,n+1)-sum)/A(j,j)
end
