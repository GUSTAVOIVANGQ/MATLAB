% Entregable    10 – Filtinic/Filter
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

% Definir la ecuación en diferencias del filtro digital
% y(n) = 2x(n) - 4x(n-1) - 0.5y(n-1) - y(n-2)

% Condiciones iniciales
%      y(-2) = 1
%      y(-1) = 0
%      x(-1) = -1
%      Señal de entrada x(n) = 0.8^n u(n)

% Calcular la respuesta del sistema para 20 muestras usando MATLAB

y = zeros(1,20); % Inicializar vector de salida
y = [1 0 -y]; % Establecer condiciones iniciales de y(n)

n = 0:1:19; % Vector de índices de tiempo

x = 0.8.^n; % Calcular señal de entrada
x = [0 -1 x]; % Establecer condición inicial de x(n)

for n=1:20
    y(n+2) = 2*x(n+2) - 4*x(n+1) - 0.5*y(n+1) - y(n); % Aplicar ecuación en diferencias
end

n = 0:1:19; % Vector de índices de tiempo

% Graficar señal de entrada x(n)
subplot(3, 1, 1);
stem(n, x(3:22));
title('Señal de entrada x(n)');
xlabel('Índice de tiempo');
ylabel('Amplitud');

% Graficar respuesta del sistema y(n)
subplot(3, 1, 2);
stem(n, y(3:22));
title('Respuesta del sistema y(n)');
xlabel('Índice de tiempo');
ylabel('Amplitud');

y = zeros(1,20); % Inicializar vector de salida
y = [0 0 y]; % Establecer condiciones iniciales de y(n)

n = 0:1:19; % Vector de índices de tiempo

x = 0.8.^n; % Calcular señal de entrada
x = [0 0 x]; % Establecer condiciones iniciales de x(n)

for n=1:20
    y(n+2) = 2*x(n+2) - 4*x(n+1) - 0.5*y(n+1) - y(n); % Aplicar ecuación en diferencias
end

n = 0:1:19; % Vector de índices de tiempo

% Graficar respuesta del sistema y(n) con diferentes condiciones iniciales
subplot(3, 1, 3);
stem(n, y(3:22));
title('Respuesta del sistema y(n) con diferentes condiciones iniciales');
xlabel('Índice de tiempo');
ylabel('Amplitud');