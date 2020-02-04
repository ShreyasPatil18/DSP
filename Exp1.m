clc;
clear all;
close all;
%%
% unit step signal
N=50
n=0:N-1
x1=ones(1,N)
subplot(2,2,1)
stem(n,x1)
xlabel('time index')
ylabel('Amplitude')
%%
%ramp signal
n1=0:50
x1=n1
subplot(2,2,2)
stem(n1,x1)
xlabel('time index')
ylabel('amplitude')
%%
%sine signal
f=2
t=0:1/100:10
x2=sin(2*pi*f*t)
subplot(2,2,3)
stem(x2,t)
plot(t,x2)
xlabel('time index')
ylabel('amplitude')
%%
%sine 2 signal
f=5
t=0:1/100:10
x2=sin(2*pi*f*t)
subplot(2,2,4)
stem(x2,t)
plot(t,x2)
xlabel('time index')
ylabel('amplitude')