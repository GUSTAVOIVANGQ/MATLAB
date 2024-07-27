% Time Reversal
n = 0:10;
x1 = [0,1,2,3,4,5,4,3,2,1,0];
y = fliplr(x1);

figure;
subplot(2,1,1); stem(n, x1); title('x1(n)');
subplot(2,1,2); stem(n, y); title('y(n) = x1(-n)');
