%Ejemplo de la aplicacion de una wavelet a una señal
clear all;
close all;
clc;

dt = .001;
t = 0:dt:1;
fclean = sin(2*pi*t*50) + sin(2*pi*t*120);

f = 2.5*randn(size(t));

figure(1);

subplot(2,1,1);
plot(fclean);
title('senal original');

subplot(2,1,2);
plot(f);
title('senal original limpia sin rido');

n = length(t);
fhat =fft(f,n);
%figure(2);

%subplot(2,1,1);
%plot(fhat);
%title('senal original');

PSD = fhat.*conj(fhat)/n;
PSDclean = fclean.*conj(fclean)/n;
freq = 1/(dt*n)*(0:n);
L = 1:floor(n/2);

figure(2);
subplot(2,1,1);
plot(freq(L), PSDclean(L));
title('senal original');

subplot(2,1,2);
plot(freq(L), PSD(L));
title('senal original');

%indices = PSD>10;
indices = PSD<50;
PSD2 = PSD.*indices;
fhat2 = fhat.*indices;

figure(3);
plot(freq(L), PSD2(L));
title('senal original');

ifftfhat2 = ifft(fhat2);
ifftPSD2 = ifft(PSD2);

%figure(4);
%plot(ifftfhat2(L));
%title('espectro linpio');
figure(4);
subplot(2,1,1)
plot(fclean);
title('espectro linpio');
subplot(2,1,2)
plot(ifftfhat2);
