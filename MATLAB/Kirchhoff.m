%KorchH für WeBsp

clear;

U1=220*exp(i*45*pi/180)

U2=100

w=2*pi*50;

Z1=10+i*10

R1=10,Xl1=10,L1=10/w

Z2=20*cos(30*pi/180)+i*30*sin(30*pi/180)

R2=real(Z2), Xl2=imag(Z2), L2=Xl2/w

Z3=20-i*10

R3=real(Z3), Xc3=imag(Z3), C3=-1/(Xc3*w)

 

A=[1    1   -1

   Z1   -Z2 0

   0    Z2  Z3];

U=[0

   U1-U2

   U2];

I=(A^-1)*U 