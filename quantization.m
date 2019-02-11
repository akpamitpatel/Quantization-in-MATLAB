clc
close all;
clear all;
n=input('Enter the number of bits ');
n1=input('Enter the number of samples ');
l=2^n;
x=0:0.01:2*pi;
y=8*sin(x);
x=0:pi/n1:2*pi;
s=8*sin(x);
vmax=8;
vmin=-vmax;
del=(vmax-vmin)/l;
part=vmin:del:vmax;
code=vmin-(del/2):del:vmax+(del/2);
[ind,q]=quantiz(s,part,code);
q
plot(x,s,'-',x,q,'.')
grid on