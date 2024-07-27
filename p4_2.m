n = 0:L-1;
%Generación de la primera señal
x1 = 2*sin(4*pi*fs1*n);
%Generación de la segunda señal
x2 = 2*sin(4*pi*fs2*n);
%Grafica de la primera señal
subplot(4,1,1);
plot(n,x1);
%Grafica de la segunda señal
subplot(4,1,2);
plot(n,x2);
%Crear la tercera señal, la cual estará compuesta
%64 muestras de la señal x1 y 64 muestras de la señal x2
x3 = x1(1:1/2);
x3((1/2)+1:1) = x2(1:1/2);
%Grafica de la tercera señal
subplot(4,1,3);
plot(n,x3);
%Grafica de la tercera señal
subplot(3,1,3);
plot(n,x3);
%Transformada de la señal x3
subplot(4,1,4);
properties(x3,1/2,3,handle(32),0);
