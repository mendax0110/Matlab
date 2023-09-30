% my first matlab program -J

clear;

a=sin(3)

U=220*exp(j*0.5*pi)

Z=7+7*i

I=U/Z

 

%signal im Zeitbereich darstellen

%220Veff 57° 50Hz

t=0:1e-3:40e-3;

Us=220*2^0.5;

u=Us*sin(2*pi*50*t);

figure(1);

plot(t,u,'magenta')

grid

 

%mittelwerte Bsp Dreiecksignal 2Vs 50Hz

Ta=0.1e-3;T=20e-3;

t=0:Ta:T;

u=[[0:Ta:T/4]*2/5e-3 2+[Ta:Ta:T/2]*(-2/5e-3) -2+[Ta:Ta:T/4]*2/5e-3];

u=u+1;

plot(t,u) %t und u müssen gleich lang sein

figure(2); %Ausgabefenster 2

plot(t,u)

grid;title('Dreiecksignal'), xlabel('t'), ylabel('u(t')

 

%arithMW

Uarith=sum(u*Ta)/20e-3;

Uglrw=sum(abs(u)*Ta)/T

Ueff=((u*u')*Ta/T)^0.5   %[u0 u1 u2 ...]

%aus Theorie Ueff=(uac^2+udc^2)^0.5

Ueff_theorie=((2/3^0.5)^2+1^2)^0.5 %zur Kontrolle