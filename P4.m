
% Definir los vectores x1 e y
x1 = [1 2 3 4];
y = [0 0 0 0];

% Calcular la longitud de x1
N = length(x1);

% Inicializar la matriz x2
x2 = zeros(N, N);

% Calcular la DFT utilizando dos bucles anidados
for k = 0:N-1
    for n = 0:N-1
        W = exp(-1i*2*pi*k*n/N);
        x2(k+1, n+1) = W;
    end
end

% Calcular la DFT de x1
Y = x2*x1';

% Graficar la DFT de x1
subplot(2, 1, 1);
stem(0:N-1, abs(Y), 'LineWidth', 2);
title('DFT de x1 calculada manualmente');
xlabel('Índice de frecuencia');
ylabel('Magnitud');

% Calcular la DFT de x1 utilizando la función fft de MATLAB
subplot(2, 1, 2);
stem(0:N-1, abs(fft(x1)), 'LineWidth', 2);
title('DFT de x1 utilizando la función fft');
xlabel('Índice de frecuencia');
ylabel('Magnitud');