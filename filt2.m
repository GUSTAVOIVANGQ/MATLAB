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

% Calcular la salida del sistema
%y(n) = 0.5y(n-2) + x(n-1)
%Para las primeras 4 muestras se usaran las siguientes condiciones iniciales:
%	y(-2) = 1
%	y(-1) = 0
%	x(-1) = -1
%	entrada x(n) = (0.5)^n u(n)

B = [0 1];
A = [1 0 -0.5];
x = [1 0.5 0.25 0.125];
Xi = [-1 0];
Yi = [0 1];
Zi = filtic(B, A, Yi, Xi);
y = filter(B, A, x, Zi);
