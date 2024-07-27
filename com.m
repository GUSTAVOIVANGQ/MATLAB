%5.3.4 Aplicaciones de la Transformada Wavelet 2
% 12+1
%compresion de inagenes/
clear all;
close all;
clc; 

%wavelet madre
imagen = double(imread('tif.png'));
%imagen origi
%figure(1);
%imshow(imagen);

% 0 < delta < 1
%delta = 0.001;
%delta = 0.05;
delta = 0.005;

H1=[0.5 0 0 0 0.5 0 0 0;0.5 0 0 0 -0.5 0 0 0;0 0.5 0 0 0 0.5 0 0 ;0 0.5 0 0 0 -0.5 0 0 ;0 0 0.5 0 0 0 0.5 0;0 0 0.5 0 0 0 -0.5 0;0 0 0 0.5 0 0 0 0.5;0 0 0 0.5 0 0 0 -0.5;];
H2=[0.5 0 0.5 0 0 0 0 0;0.5 0 -0.5 0 0 0 0 0;0 0.5 0 0.5 0 0 0 0;0 0.5 0 -0.5 0 0 0 0;0 0 0 0 1 0 0 0;0 0 0 0 0 1 0 0;0 0 0 0 0 0 1 0;0 0 0 0 0 0 0 1;];
H3=[0.5 0.5 0 0 0 0 0 0;0.5 -0.5 0 0 0 0 0 0;0 0 1 0 0 0 0 0;0 0 0 1 0 0 0 0;0 0 0 0 1 0 0 0;0 0 0 0 0 1 0 0;0 0 0 0 0 0 1 0;0 0 0 0 0 0 0 1;];

%normalizar 
H1o = (H1.*(2^0.5));
H2o = (H2.*(2^0.5));
H3o = (H3.*(2^0.5));

H = (H1o*H2o*H3o);
Ho = norm(H);

H = (H1*H2*H3);
%Ho = norm(H);

len = length(size(imagen));

%if len==2
    %error('Se necesita una imagen en escala de gdises');
%end

yo = zeros(size(imagen));
y = yo;

[r,c] = size(imagen);
%resuelve
for i=0:8:r-8
    for j=0:8:c-8
        p= i+1;
        q= j+1;
        yo(p:p+7,q:q+7) =(Ho)' * imagen(p:p+7,q:q+7) *Ho;
        y(p:p+7,q:q+7) = (H)' * imagen(p:p+7,q:q+7) *H;
    end
end
    
figure(1);
imshow(imagen/255);
title('imagen original');
n1 = nnz(y);
zo = yo;
m = max(max(yo));
yo = yo/m;
yo(abs(yo)<delta) = 0;  
yo = yo*m;

z = y;
y = y/m;
y(abs(y)<delta) = 0;  
y= y*m;
n2 = nnz(y);

%resuelve
for i=0:8:r-8
    for j=0:8:c-8
        p= i+1;
        q= j+1;
        zo(p:p+7,q:q+7) =Ho * yo(p:p+7,q:q+7)*(Ho)' ;
        z(p:p+7,q:q+7) = inv(H') * y(p:p+7,q:q+7) *inv(H);
    end
end
figure(2);
imshow(z/255);
title('imagen comprimida');

factorcomp =n2/n1;

imwrite(imagen/255,"image.png");
imwrite(z/255,"imagencomprimida.png");
