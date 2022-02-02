clear all
clc
    x=0:0.1:8*pi;
    y=sin(x);
    f=scal2frq(0.1:0.1:2*pi,'haar',1);
    c=cwt(y,f,'haar','abslvl');

    subplot(212)
    plot(x,y)
    subplot(211)
    surf(c)
xlabel('Tempo')
ylabel('Escala - Coef. Wavelet')
zlabel('Amplitude')
colormap gray
shading interp
view(46,44)