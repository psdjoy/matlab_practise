close all
clear all
clc
v=1;
f=50;
n=input('cycle');
th=input('degree= ');
x=(pi/180)*th;
T=1/f;
w=2*pi*f;
t=linspace(-0.02,n*T,200);
V=v*sin(w*t+x ); %theta=(pi/180)*(degree)
plot(t,V);