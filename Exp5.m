clear all
close all
X=input('Enter the input sequence x=');
N=length(X);
sum1=0;
sum2=0;
wn=-pi:pi/100:pi;
for n=0:N-1
XR=sum1+X(n+1)*cos(n*wn);
sum1=XR;
XI=sum2-X(n+1)*sin(n*wn);
sum2=XI;
end
M= sqrt(XR.^2 + XI.^2);
P= atan(XI./XR);
subplot(3,1,1)
n=0:N-1
stem(n,X);
title('Input Response');
subplot(3,1,2)
plot(wn,M);
title('Magnitude Response');
subplot(3,1,3)
plot(wn,P);
title('Phase Response');