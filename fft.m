%Se debera construir una imagen f(m,n) donde
%todo lo que se encuentre dentro de dicha region
%valdra 1 y todo lo que se encuentre fuera
%valdra 0

%Imagen de 30*30 todo en cero
f = zeros(30,30);
%Definimos la region de la funcion
f(5:24,12:17) = 1;
imshow(f,'InitialMagnification','fit');

%calcular de la fft de 2 dimensiones
F = fft2(f);
f2 = log(abs(F));
imshow(f2,[-1 5], 'InitialMagnification','fit');
colormap(jet);colorbar;

%Para visualizacion de la imagen agregaremos mas pixeles
%hasta tener una matriz de 256*256
F = fft2(f,256,256);
%f2 = log(abs(f));
f2 = fftshift(F);
f3 = log(abs(f2));
imshow(f3,[-1 5], 'InitialMagnification','fit');
colormap(jet);colorbar;

%reporte X de la fft de 2 dimensiones
