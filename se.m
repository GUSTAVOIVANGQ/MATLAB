%5.3 Wavelet discreta (DWT).
%5.3.1 DWT en una dimensión
%5.3.2 DWT en dos dimensiones
clear all; % Limpia todas las variables del espacio de trabajo
close all; % Cierra todas las ventanas de figuras abiertas
clc; % Limpia la ventana de comandos

N = 128; % Establece el número de muestras
n = 0:1:N-1; % Genera un vector de índices de muestras de 0 a N-1

fs1 = 0.22; % Frecuencia de la primera señal sinusoidal
fs2 = 0.34; % Frecuencia de la segunda señal sinusoidal
x = sin(2 *pi *n*fs1)+ sin(2 *pi *n*fs2); % Genera una señal compuesta por la suma de dos señales sinusoidales

fx = fft(x,N); % Calcula la transformada de Fourier de la señal x

wn = 2*((N-1)/N); % Normaliza la frecuencia de Nyquist
k = linspace(0,wn/2,128); % Genera un vector de frecuencias normalizadas

figure(1); % Crea una nueva figura
plot(x);xlabel("muestras de eje x ");ylabel("tiempo"); % Grafica la señal en el dominio del tiempo
title("figura 1"); % Agrega un título a la gráfica

figure(2); % Crea una nueva figura
plot(k,(fx));xlabel("muestras de eje x ");ylabel("muestras de eje y"); % Grafica el espectro de frecuencias
title("figura 2"); % Agrega un título a la gráfica

figure(3); % Crea una nueva figura
title("figura 2"); % Grafica la transformada wavelet en 3D
coefx = cwt(x,1:32,'sym6'); % Calcula la transformada wavelet continua utilizando la wavelet Symlet 6
mesh(coefx); % Grafica la transformada wavelet en 3D

