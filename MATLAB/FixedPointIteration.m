% clc 
% clear all
% f=@(x) sqrt(10/(4+x))
% e=0.0001
% N=100
% x0=1
% for t=1:1:N
%     x1=f(x0);
%     if(abs(x1-x0)<=e)
%         fprintf("Ans is %d",x1)
%         break
%     end
%     x0=x1;
% end

clc 
clear all
g=@(x) x^3-2*x
%x0=input('Enter initial approximation')
e=input('Tolerance Value')
N=input('No of iteration')

for j=1:1:N
    if ((g(j)*g(j+1))<0)
        x2=j
        x1=j+1
        break
    end
end
x0=(x1+x2)/2
disp(x0)
i=1;
while(i<=N)
    x1=g(x0)
    if(abs(x1-x0)<=e)
        fprintf('Successful : %d', x1)
        break;
    end
    i=i+1
    x0=x1;
end