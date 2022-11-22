clc
clear all
f=@(x) x^2-29
for i=0:1:100
    if(f(i)*f(i+1)<0)
        a=i
        b=i+1
        break
    end
end
found=0;
while ((b-a)>0.001)
    found=found+1;
    c=(a+b)/2;
    if(f(a)*f(c)<0)
        b=c;
    else
       a=c;
    end
end
c
fprintf('No. of iterations are %d',found)
