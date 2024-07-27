% Entregable    4 – DFT Imagen
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

%Programa: comprimir.m
%Descripción: Comprime una imagen, el usuario especifica cuantos pixeles   
%desea comprimir por renglon y por columna, en caso de no querer comprimir
%el numero que se introduce es 1. Los numeros a introducir deben ser y 2, 4, 8, 16, 32, 64, 128
clear all;
clc;
images=imread('lena512x512.bmp');
tam=size(images);
images=double(images);
fprintf('\nIMAGEN DE %d x %d PIXELES\n\n',tam(1),tam(2));
numren=input('Cuantos pixeles se promedian por renglon?: ');
numcol=input('Cuantos pixeles se promedian por columna?: ');
picfinal=[];
for renglon=1:numren:tam(1)
    for columna=1:numcol:tam(2)
vector=[];
vector=images(renglon:renglon+(numren-1),columna:columna+(numcol-1));
picfinal((renglon+numren-1)/numren,((columna+numcol-1))/numcol)=sum(sum(vector))/(numcol*numren);
    end
end
picfinal=uint8(picfinal);
tam=size(picfinal);
fprintf('\nLa imagen que se ha comprimido es de %d x %d\n',tam(1), tam(2));
imwrite(picfinal,'imagenfinalcomprimida.bmp');
figure (1)
imshow(picfinal)