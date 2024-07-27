% Código base
%En este ejemplo haremos uso de la función ztrans()

% Definición de nuestra señal x1
n = 0:10;
u1 = ones(size(n));
x1 = 1.3.^(-n).*u1;

figure, stem(n,x1), title('x(n) = 1.3^(-n)*u1(n)'), xlabel('n'), ylabel('x1(n)');

%Definir señal x2
u2 = [0 ones(1,length(n)-1)];
x2 = -0.6.^n.*u2;

figure, stem(n,x2), title('x(n) = -0.6^n*u2(n-1)'), xlabel('n'), ylabel('x2(n)');

% b) Elegir una función y realizar reporte usando esa función
% Función elegida: x(n) = cos(n)
x3 = cos(n);

figure, stem(n, x3), title('x(n) = cos(n)'), xlabel('n'), ylabel('x3(n)');

syms n z
zn3 = ztrans(cos(n), n, z);
pretty(zn3)

% Graficar ROC de x3
m = linspace(-2, 2, 670);
[x3, y3] = meshgrid(m);
z3 = sqrt(x3.^2 + y3.^2);
roc3 = (z3 > 0.1 & z3 < 0.7 ); % Ajusta esta condición según la ROC de tu función

RI = imref2d(size(roc3));
RI.XWorldLimits = [-2 2];
RI.YWorldLimits = [-2 2];

figure, imshow(roc3, RI), title('ROC de x(n) = cos(n)'), xlabel('Eje real'), ylabel('Eje imaginario');

% c) ROC entre dos valores
% Graficar ROC de x1 y x3 en la misma figura


% Operar elemento a elemento (por eso es el punto)
%Calcular las transformadas
syms n z %variantes simbólicas de la transformada

n1 = 1.3.^(-n);
n2 = -0.6.^n;

zn1 = ztrans(n1);
zn2 = ztrans(n2);

%Graficar y Calcular la ROC x1
m = linspace(-2, 2, 670);

%Para crear un mallado. Para preparar una figura de 2 dimensiones
[x1,y1] = meshgrid(m);

%función de un círculo
z1 = sqrt(x1.^2+y1.^2);

% Definir los valores de la ROC
roc1 = (z1 > 1);

%Graficar la transformada Z
RI = imref2d(size(roc1));

%En este ejemplo el eje x es el eje real
RI.XWorldLimits=[-2 2];

%En este ejemplo el eje y es el eje imaginario
RI.YWorldLimits=[-2 2];

%Graficar la función de la transformada
figure, imshow(roc1,RI); title('ROC > 1'), xlabel('Eje real'), ylabel('Eje imaginario');

%Hay que interpretar nuestra gráfica
%en este ejemplo todos los valores son mayores a 1, convergen, es
%decir, la parte blanca de nuestra imagen representa los valores
% convergentes, y la parte oscura representa los valores que divergen

%Graficar y Calcular la roc x2
m = linspace(-2, 2, 670);
%Para crear un mallado. Para preparar una figura de 2 dimensiones
[x2,y2] = meshgrid(m);

%función de un círculo
z2 = sqrt(x1.^2+y1.^2);

% Definir los valores de la ROC
roc2 = (z2<1);

%Graficar la transformada Z
RI = imref2d(size(roc2));

%En este ejemplo el eje x es el eje real
RI.XWorldLimits=[-2 2];

%En este ejemplo el eje y es el eje imaginario
RI.YWorldLimits=[-2 2];

%Graficar la función de la transformada
figure, imshow(roc2,RI); title('ROC < 1'), xlabel('Eje real'), ylabel('Eje imaginario');

% reporte de transformada 2 y roc
%a)	Reporte de practica
%b)	Elegir una función y realizar reporte usando esa función
%c)	Roc entre dos valores
