clear
close all
clc

s = load("ECG.txt");
fs = 250;
fx = 60;
n = 6;

wn = fx/(fs/2)

[b,a] = butter(n,wn,'low');
freqz(b,a);
figure();
s1 = filter(b,a,s)

% Graficar respuesta del sistema y(n) con diferentes condiciones iniciales
subplot(2, 1, 1); plot(s);
subplot(2, 1, 2); plot(s1);
