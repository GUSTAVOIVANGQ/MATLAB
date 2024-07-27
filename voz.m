close all
clear
clc

% Establecer la frecuencia de muestreo
fs = 8000;

% Factor de preénfasis
alpha = 0.9;

% Graficar la respuesta en frecuencia del filtro de preénfasis
figure(1);
freqz(1-alpha, 1, 512, fs);
title('Respuesta en frecuencia del filtro de preénfasis');
xlabel('Frecuencia normalizada');
ylabel('Magnitud');

% Comentar las siguientes líneas si no se desea cargar un archivo de audio
%vos = load("ECG.txt");

% Grabar audio
grabacion = audiorecorder();
tiempo = 1; % Tiempo de grabación en segundos
recordblocking(grabacion, tiempo);
play(grabacion); % Reproducir la grabación

% Obtener los datos de audio grabados
vos = getaudiodata(grabacion);

% Comentar la siguiente línea si no se desea truncar los datos de audio
%vos = vos(1:705);

% Graficar la señal de voz original
figure(2);
subplot(2, 1, 1);
plot(vos);
xlabel('Muestras');
ylabel('Amplitud');
title('Señal de voz original');

% Aplicar el filtro de preénfasis
y = filter(1-alpha, 1, vos);

% Graficar la señal de voz filtrada
subplot(2, 1, 2);
plot(y);
xlabel('Muestras');
ylabel('Amplitud');
title('Señal de voz filtrada');

% Calcular y graficar los espectros de la señal original y filtrada
figure(3);
n = length(vos);
axk = abs(fft(vos.*hamming(n)')) / n;
ayk = abs(fft(y.*hamming(n)')) / n;
f = (0:n/2) * fs / n;
axk(2:n) = 2 * axk(2:n);
ayk(2:n) = 2 * ayk(2:n);

subplot(2, 1, 1);
plot(f, axk(1:n/2+1));
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');
title('Espectro de la señal de voz original');

subplot(2, 1, 2);
plot(f, ayk(1:n/2+1));
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');
title('Espectro de la señal de voz filtrada');