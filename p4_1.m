% Entregable    4 - CalCular la dft de la señal elegida en la entregable 1
% Grupo         5CV1
% Equipo        7
% Integrantes:
%              García Quiroz Gustavo Ivan


% Definición de eje x
t = [0:1/125:1.5];
xt = 2 * sin(4 * pi * t);

% Calcular la longitud de xt
N = length(xt);

% Inicializar la matriz x2
x2 = zeros(N, N);

% Calcular la DFT utilizando dos bucles anidados
for k = 0:N-1
    for n = 0:N-1
        W = exp(-1i*2*pi*k*n/N);
        x2(k+1, n+1) = W;
    end
end

% Calcular la DFT de xt
Y = x2*xt';

% Calcular las frecuencias
f = (0:N-1) * (1/N) * (125/1.5);

% Graficar la DFT de xt
subplot(2, 1, 1);
stem(f, abs(Y), 'LineWidth', 2);
title('DFT de xt calculada manualmente');
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');

% Calcular la DFT de xt utilizando la función fft de MATLAB
subplot(2, 1, 2);
stem(f, abs(fft(xt)), 'LineWidth', 2);
title('DFT de xt utilizando la función fft');
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');