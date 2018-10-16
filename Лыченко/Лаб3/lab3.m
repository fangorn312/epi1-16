clc
clear all

a=0;
b=100;
x = a:b;

f = @(x)exp(x); % �������� �������
plot(x,f(x));
eps = 0.001; % 

dx = eps/2;
c=1;
iter1=0;

disp('����� ���������');
while abs(b-a) > eps % ������� ������� (abs � �� ������)
    iter1=iter1+1;
    c = (a+b)/2;
    if f(c-dx) > f(c+dx)
        a = c;
    else
        b = c;
    end
end

fprintf('���-�� �������� %d\n', iter1);
disp(['x = ' num2str(c,6)]);
disp(['y = ' num2str(f(c),6)]);


fprintf('\n');
disp('����� �������� �������');
iter2=0;
phi = 1.618;
a=0;
b=100;
while(abs(b-a)>eps)
    x1=b-((b-a)/phi);
    x2=a+((b-a)/phi);
    y1=exp(x1);
    y2=exp(x2);
    if (y1>=y2) a=x1;
    else b=x2;
    end
    iter2=iter2+1;
end
c=(a+b)/2;
fprintf('���-�� �������� %d\n', iter2);
disp(['x = ' num2str(c,6)]);
disp(['y = ' num2str(f(c),6)]);

