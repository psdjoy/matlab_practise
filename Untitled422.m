close all
clear all
clc
V=10;
x=input('input= ');
th=(pi/180)*x;
t=linspace(0,0.06,100);
v=V*sin(100*pi*t+th);
plot(t,v)