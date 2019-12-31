close all
clear all
clc
x=0:0.1:pi;
y1=sin(x);
y2=sin(2*x);
y3=sin(3*x);
y4=sin(4*x);
subplot(2,2,[1,2]);
plot(x,y1);
