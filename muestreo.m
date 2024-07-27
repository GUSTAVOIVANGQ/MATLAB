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

%   Definicion del eje x
fs = 40;
t  = [0:1/fs:1.5];
xt = 2* sin(4*pi*t);
%plot(t,xt);
stem(t,xt);
% Modificar la frecuencia a 8 Hz
xt_frec_mayor_2 = 2 * sin(8*pi*t);
figure;
stem(t, xt_frec_mayor_2);
title('Señal con Frecuencia Mayor 2');

