%Definir las wavelets madre
%En este caso se definen las wavelets más empleadas

%Se emplean subrutinas dde generacion de wacelets de acuerdo a la toolbod
%de waveles en Matlab

clear all;
close all;
clc;

%Definicion de la primera Wavelet Madre -Daubechies
%En esta wavelet se puede explorar todas las variaciones
d = dbwavf('db8'); %db8
%Definicion de Wavelets madre -Symlet
%En esta wavelet se puede explorar todas las variaciones
s = symwavf('sym6'); %sym6
%Definicion de Wavelets madre -Coiflet
%En esta wavelet se puede explorar todas las variaciones
c = coifwavf('coif3'); %coif3

lb = -5;
ub = 5;
n = 1000;
[psi, xval] = mexihat(lb,ub,n);

%Ambiente para graficar cada Wavelet
%Primera parte de la Wavelet
x = [0 250];
y = [-0.045 -0.045];
%Primer grafico
subplot (3, 2, 1);
title ('Haar 4');
line(x,y);
%Segunda parte de la Wavelet
x =[250 400];
y = [-0.045 0.045];
line(x,y);
%Tercera parte de la Wavelet
x = [400 550];
y = [0.045 0.045];
%Segundo grafico
line(x,y);
axis([0, 600, -0.05, 0.05]);
subplot(3, 2, 2);
plot (d);
title('Daubechies - DB8');
%Tercer grafico
subplot(3, 2, 3);
plot (s);
title('Symlet - Sym6');
%Cuarto grafico
subplot(3, 2, 4);
plot (c);
title('Coiflet - Coif3');
%quinto grafico
subplot(3, 2, 5);
plot (xval, psi);
title('mexi hat - Coif3');

%subplot(3,2,6);
%plot(xval, psi);
%title('mh');

