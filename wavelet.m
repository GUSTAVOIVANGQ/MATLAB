%5.3.4 Aplicaciones de la Transformada Wavelet
%Ejemplo de la aplicacion de una wavelet a una señal
clear all;
close all;
clc;

s = xlsread('senal1.xlsx','A1:ET1');
%verificar la lectura del archivo, por medio de la graffica de s
figure(1);
plot(s); title('Señal original');

%Aplicar la wavelet, es una DWT
%s es nuestra señal original
%3 ivles de coeficientes de descomposiciòn
%symlet #4 esta ser nuestra wavelet madre
[C,L] = wavedec(s,3,'coif3');
%C = el vector de coeficientes
%L = el vector que contiene las longitudes de cada conjunto de 
%Coeficientes por nivel

%Una vez que se ha descompuesta la señal, es necesario calcular 
%los coeficientes por cada nivel
Cd3 = wrcoef('a',C,L,'coif3',3);

%Almacenar en diferentes vectores de acuerdo al nivel
[cd1, cd2, cd3] = detcoef(C,L,[1 2 3 ]);

%Verificar cada uno de los vectores detallados de coeficienes
%por medio de una grafica

figure(2);
subplot(4,1,1); plot(Cd3); title('Coeficientes de aproximacion');
subplot(4,1,2); plot(cd3); title('Coeficientes de nivel 3');
subplot(4,1,3); plot(cd2); title('Coeficientes de nivel 2');
subplot(4,1,4); plot(cd1); title('Coeficientes de nivel 1');

%A partir de estos coeficientes se puede hacer:
%Procesamiendot para redes neuronales
%Datos estadisticos
%En general cualquier otro tipo de analisis que pueda
%resultar mas completo

%Sacar el valor maximo
m = max(Cd3);
%Sacar el valor promedio
promedio = mean(Cd3);
figure(3);
subplot(2,1,1); stem(m); title('Valor maximo');
subplot(2,1,2); stem(promedio); title('Valor promedio');

%Generar una wavelet, y para esto usamos la funcion wavefuncion
[psi,val] = wavefun('coif3');
figure(4);
plot(val,psi);

%coefx = cwt(x,1:32,'sym6');
%mesh(coefx);
%Entregable y se agrega otra wave