 % Cargar datos de ECG
s = load("ECG.txt");

% Frecuencia de muestreo
fs = 250;

% Frecuencias de corte
fx_low = 60;     % Frecuencia de corte para el filtro pasa-bajas
fx_high = 10;    % Frecuencia de corte para el filtro pasa-altas
fx_low_band = 5; % Frecuencia de corte inferior para el filtro pasa-banda
fx_high_band = 20; % Frecuencia de corte superior para el filtro pasa-banda

% Orden del filtro
n = 6;

% Normalización de las frecuencias
wn_low = fx_low / (fs / 2);       % Frecuencia normalizada para el filtro pasa-bajas
wn_high = fx_high / (fs / 2);     % Frecuencia normalizada para el filtro pasa-altas
wn_band = [fx_low_band fx_high_band] / (fs / 2); % Frecuencias normalizadas para el filtro pasa-banda

% Diseño del filtro pasa-bajas de Butterworth
[b_low, a_low] = butter(n, wn_low, 'low');

% Diseño del filtro pasa-altas Chebyshev Tipo II
[b_high, a_high] = cheby2(n, 40, wn_high, 'high');

% Diseño del filtro pasa-banda de Butterworth
[b_band, a_band] = butter(n, wn_band, 'bandpass');

% Aplicar filtros a la señal ECG
s_low = filter(b_low, a_low, s);
s_high = filter(b_high, a_high, s);
s_band = filter(b_band, a_band, s);

% Graficar resultados
figure;
subplot(4, 1, 1);
plot(s);
title('Señal original');

subplot(4, 1, 2);
plot(s_low);
title('Señal filtrada con filtro pasa-bajas de Butterworth');

subplot(4, 1, 3);
plot(s_high);
title('Señal filtrada con filtro pasa-altas Chebyshev Tipo II');

subplot(4, 1, 4);
plot(s_band);
title('Señal filtrada con filtro pasa-banda de Butterworth');