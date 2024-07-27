%% Ventana rectangular
ventana1 = ones(1,9);
plot (ventana1)

% Transformada de ventana 1
transformada1 = fft(ventana1, 512);
transshift1= fftshift(transformada1);
trans1 = 10*log10(abs(transshift1));
plot (trans1);

%% Ventana triangular
ventana2 = triang(9);
plot (ventana2);

% Transformada de ventana triangular
transformada2 = fft(ventana2, 512);
transshift2 = fftshift(transformada2);
trans2 = 10*log10(abs(transshift2));
plot(trans2);

%% Ventana Hamming
ventana3 = hamming(9);
wvtool(ventana3);

% Transformada de ventana Hamming
transformada3 = fft(ventana3, 512);
transshift3= fftshift(transformada3);
trans3 = 10*log10(abs(transshift3));
plot(trans3);

%% Ventana de Blackman-Harris
ventana4 = blackman(32);
plot (ventana4);

% Transformada de ventana Blackman-Harris
transformada4 = fft(ventana4, 512);
transshift4 = fftshift(transformada4);
trans4= 10*log10(abs(transshift4));
plot (trans4);

%% transformada de ventana Barlet
ventana5= bartlett(9);
plot(ventana5);

% Transformada de ventana Barlet
transformada5= fft(ventana5, 512);
transshift5 = fftshift(transformada5);
trans5 = 10*log10(abs(transshift5));
plot(trans5);

%% Ventana Gaussiana
ventana_gauss = gausswin(9); % Ventana Gaussiana de longitud 9
plot(ventana_gauss); % Graficar ventana Gaussiana

% Transformada de la ventana Gaussiana
transformada_gauss = fft(ventana_gauss, 512);
transshift_gauss = fftshift(transformada_gauss);
trans_gauss = 10*log10(abs(transshift_gauss));
plot(trans_gauss); % Graficar transformada de la ventana Gaussiana

%% Ventana Kaiser
beta = 5; % Parámetro beta para la ventana Kaiser
ventana_kaiser = kaiser(9, beta); % Ventana Kaiser de longitud 9 con parámetro beta
plot(ventana_kaiser); % Graficar ventana Kaiser

% Transformada de la ventana Kaiser
transformada_kaiser = fft(ventana_kaiser, 512);
transshift_kaiser = fftshift(transformada_kaiser);
trans_kaiser = 10*log10(abs(transshift_kaiser));
plot(trans_kaiser); % Graficar transformada de la ventana Kaiser


%% Ventana Flat Top
ventana_flattop = flattopwin(9); % Ventana Flat Top de longitud 9
plot(ventana_flattop); % Graficar ventana Flat Top

% Transformada de la ventana Flat Top
transformada_flattop = fft(ventana_flattop, 512);
transshift_flattop = fftshift(transformada_flattop);
trans_flattop = 10*log10(abs(transshift_flattop));
plot(trans_flattop); % Graficar transformada de la ventana Flat Top