clc
clear all
x=[0;0.25;0.5;0.75]
f=[1 ;1.64872;2.71828;4.48169]
n=length(x)
sum=0;
p=0.43;
for i=1:1:n
    l(i)=1;
    for j=1:1:n
        if j~=i
            l(i)=((p-x(j))/(x(i)-x(j)))*l(i)
        end
    end
    sum=sum+l(i)*f(i)
end
