% Entregable    1 - Teorema de Muestreo
% Grupo         5CV1
% Equipo        7
% Integrantes:
%              Hernandez Rodriguez Juan Uriel 
%              Vergara Martinez Brenda
%              García Quiroz Gustavo Ivan
%              Gutiérrez Jiménez Cinthia Nayelli 
%              Ramírez Carrillo José Emilio
%              Iturbide Serrano Uriel

% Definicion de eje x

t = [0:1/125:1.5];
xt = 2 * sin (4 * pi * t);

% Graficar
figure;
subplot(1,1,1);
stem(t,xt);
title('Señal seno');
xlabel('Tiempo (s)');
ylabel('Amplitud');
grid on;

% Frecuencia 1 kHz
t2 = [0:1/1000:1.5];
xt2 = 2 * sin(4 * pi * t2);

figure;
subplot(2,1,1);
stem(t2, xt2);
title('Señal seno con frecuencia de 2 Hz');
xlabel('Tiempo (s)');
ylabel('Amplitud');
grid on;

% Frecuencia 2 kHz
t1 = [0:1/500:1.5];
xt1 = 2 * sin(4 * pi * t1);

subplot(2,1,2);
stem(t1, xt1);
title('Señal seno con frecuencia de 1 Hz');
xlabel('Tiempo (s)');
ylabel('Amplitud');
grid on;

% Frecuencia 12.5 kHz
t8 = [0:1/80:1.5];
xt8 = 2 * sin(4 * pi * t8);

figure;
subplot(3,1,1);
stem(t8, xt8);
title('Señal seno con frecuencia de 12.5 kHz');
xlabel('Tiempo (s)');
ylabel('Amplitud');
grid on;

% Frecuencia 16 kHz
t16 = [0:1/62.5:1.5];
xt16 = 2 * sin(4 * pi * t16);

subplot(3,1,2);
stem(t16, xt16);
title('Señal seno con frecuencia de 16 kHz');
xlabel('Tiempo (s)');
ylabel('Amplitud');
grid on;

% Requerimientos para la practica
% a) Teoria
% b) Reporte y screenshot de la imagen
% c) proponer 2 frecuencias menores con codigo y screenshot
% d) proponer 2 frecuencias mayores con codigo y screenshot
% e) Conclusiones 
