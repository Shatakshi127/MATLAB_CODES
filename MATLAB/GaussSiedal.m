clc 
clear all
A=[4.63 -1.21 3.22;-3.07 5.48 2.11;1.26 3.11 4.57]
B=[2.22 -3.17 5.11]
x0=[0;0;0]
x=[0;0;0]
e=input('Tolerance')
N=input('Iterations')
n=length(A);
for K=1:1:N
    for i=1:1:n
        sum1=0;
        sum2=0;
        for j=1:1:i-1
            sum1=sum1+(A(i,j)*x(j));
        end
        for j=i+1:1:n
            sum2=sum2+(A(i,j)*x0(j))
        end
        x(i)=((-sum1-sum2+B(i)))/A(i,i)
    end
    if norm(x-x0,inf)<e
        break;
    end
    for i=1:1:n
        x0(i)=x(i)
    end
end
