clc
clear all
A=[2 1 3;6 2 9;1 5 3]
n=length(A)
l=eye(n)
for i=1:1:n-1
    for j=i+1:1:n
        l(j,i)=A(j,i)/A(i,i)
        A(j,:)=A(j,:)-(l(j,i)*A(i,:))
    end
end
