clear all
r=2.56
l=2*pi*r
s=pi*r^2

nat1 = 2:2:20
nat2 =[2,4,6,8,10,12,14,16,18,20]

save evenNatural nat1 nat2

x=0:0.1*pi:2*pi;
y=sin(x);
z=cos(x);
plot(z,y)

a=3;
b=3;
c=2;

t=8;
z1=2/((4*a*c-b^2)^0.5)*atan((2*a*t)/((4*a*c-b^2)^0.5));

t=6;
z2=2/((4*a*c-b^2)^0.5)*atan((2*a*t)/((4*a*c-b^2)^0.5));

deltay=z1-z2