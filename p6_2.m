% Definir los coeficientes de la ecuación en diferencias
b = [2 -4];
a = [1 0.5 1];
% Condiciones iniciales
y_ini = [1 0];  % y(-2) = 1, y(-1) = 0
x_ini = [-1];   % x(-1) = -1
% Señal de entrada
n = 0:19;
x = [x_ini 0.8.^n];
% Inciso a) - Calcular con condiciones iniciales
zi = filtic(b, a, y_ini, x_ini);
y_a = filter(b, a, x, zi);
% Inciso b) - Calcular sin condiciones iniciales
y_b = filter(b, a, x);
% Graficar resultados
subplot(3, 1, 1)
stem(n, x(2:end))
title('Señal de entrada x(n)')
xlabel('Índice de tiempo')
ylabel('Amplitud')
subplot(3, 1, 2)
stem(n(2:end), y_a(3:end))  % Usar n(2:end) para que coincida con la longitud de y_a(3:end)
title('Respuesta del sistema y(n) - Inciso a)')
xlabel('Índice de tiempo')
ylabel('Amplitud')
subplot(3, 1, 3)
stem(n(2:end), y_b(3:end))  % Usar n(2:end) para que coincida con la longitud de y_b(3:end)
title('Respuesta del sistema y(n) - Inciso b)')
xlabel('Índice de tiempo')
ylabel('Amplitud')