%5.3.3 Wavelet madre y funciones wavelet
clear all; % Borra todas las variables del espacio de trabajo
close all; % Cierra todas las figuras abiertas
clc; % Limpia la ventana de comandos

%wavelet madre
d = dbwavf('db8'); % Obtiene la función wavelet madre Daubechies de orden 8

%wavelet madre simétrica 
s = symwavf('sym6'); % Obtiene la función wavelet madre simétrica de orden 6

% wavelet madre coiflet 
c = coifwavf('coif3'); % Obtiene la función wavelet madre coiflet de orden 3

lb = -5; % Límite inferior del intervalo
ub = 5; % Límite superior del intervalo
N = 1000; % Número de puntos en el intervalo
[psi,xval] = mexihat(lb,ub,N); % Calcula la wavelet mexicana (Mexican Hat Wavelet) en el intervalo dado

% Grafica la wavelet mexicana con líneas discontinuas
x = [0 250];
y = [-0.045 -0.045];
subplot(3,2,1); % Crea un subplot en la posición 1 de una cuadrícula de 3x2
title('Hear 4'); % Título del subplot
line(x,y); % Dibuja una línea horizontal
x = [250 400];
y = [-0.045 0.045];
line(x,y); % Dibuja una línea vertical
x = [400 550];
y = [0.045 0.045];
line(x,y); % Dibuja una línea horizontal
axis([0, 600, -0.05, 0.05]); % Ajusta los límites de los ejes

% Grafica las funciones wavelet madre
subplot(3,2,2); % Crea un subplot en la posición 2 de una cuadrícula de 3x2
plot(d); % Grafica la wavelet Daubechies
title('Daubechies - D88'); % Título del subplot

subplot(3,2,3); % Crea un subplot en la posición 3 de una cuadrícula de 3x2
plot(s); % Grafica la wavelet simétrica
title('sym6 - D88'); % Título del subplot

subplot(3,2,4); % Crea un subplot en la posición 4 de una cuadrícula de 3x2
plot(c); % Grafica la wavelet coiflet
title('colf3 - D88'); % Título del subplot

subplot(3,2,5); % Crea un subplot en la posición 5 de una cuadrícula de 3x2
plot(xval,psi) % Grafica la wavelet mexicana
title('Mexican Hat Wavelet') % Título del subplot

%figure(2); % Crea una nueva figura
% resuelve
%coefx = cwt(x,1:32,'sym6'); % Calcula la transformada wavelet continua de una señal x utilizando la wavelet simétrica de orden 6
%mesh(coefx); % Grafica los coeficientes de la transformada wavelet en una malla 3D