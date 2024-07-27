% Entregable    10 – Señales estacionarias y no estacionarias
% Grupo         5CV1
% Equipo        7
% Profesor: José Antonio Flores Escobar
% Integrantes:
%              Hernandez Rodriguez Juan Uriel
%              Vergara Martinez Brenda
%              García Quiroz Gustavo Ivan
%              Gutiérrez Jiménez Cinthia Nayelli
%              Ramírez Carrillo José Emilio
%              Iturbide Serrano Uriel

% Limpiar variables, cerrar figuras y limpiar la consola
clear all; 
close all;
clc;

% Definir el número de muestras
N = 128; 
n = 0:1:N-1; % Vector de índices de muestras

% Definir las frecuencias de las señales
fs1 = 0.22; 
fs2 = 0.34;

% Generar las señales senoidales x1 y x2
x1 = sin(2 *pi *n*fs1); 
x2 = sin(2 *pi *n*fs2);

% Crear la señal x3 combinando x1 y x2
x3 = x1(1:N/2); % Primer mitad de x1
x3((N/2)+1:N) = x2(1:N/2); % Segunda mitad de x2

% Calcular la Transformada de Fourier de x3
fx = fft(x3,N); 
wn = 2*((N-1)/N); % Frecuencia normalizada
k = linspace(0,wn/2,128); % Vector de frecuencias

% Graficar la señal x3 en el dominio del tiempo
figure(1);
plot(x3);xlabel("muestras de eje x ");ylabel("tiempo");
title("amplitud");

% Graficar la Transformada Wavelet Continua de x3
figure(2);
coefx = cwt(x3,1:32,'sym6'); % Calcular los coeficientes wavelet
mesh(coefx); % Graficar la superficie wavelet

% Graficar las señales x3, x2 y x1 en el dominio de la frecuencia
figure(3);
plot(k,(x3));xlabel("muestras de eje x ");ylabel("muestras de eje y");
title("x3"); 

figure(4);
plot(k,(x2));xlabel("muestras de eje x ");ylabel("muestras de eje y");
title("x2"); 

figure(5);
plot(k,(x1));xlabel("muestras de eje x ");ylabel("muestras de eje y");
title("x1"); 

