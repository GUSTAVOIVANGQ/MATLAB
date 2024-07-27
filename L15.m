%Lipiar senal
%denoise
clear all;
close all;
clc;



load leleccum.mat;
idx = 2600:3100;

imagenx = leleccum(idx);

ddencmp('den','wv',imagenx);

[thr,sorh,keepapp] = ddencmp('den','wv',imagenx);

imageny = wdencmp("gbl",imagenx,'db3',2,thr,sorh,keepapp);


figure(1);
subplot(2,1,1);
plot(imagenx);
title('senal original');
subplot(2,1,2);
plot(imageny);
title('senal sin rido');

