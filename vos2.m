% Crear un objeto audiorecorder
vos = audiorecorder();

% Establecer el tiempo de grabación en segundos
tiempo = 5;

% Iniciar la grabación
recordblocking(vos, tiempo);

% Reproducir la grabación
play(vos);

% Obtener los datos de audio grabados
voz2 = getaudiodata(vos);

% Graficar la señal de audio
figure;
plot(voz2);
xlabel('Muestras');
ylabel('Amplitud');
title('Señal de audio grabada');