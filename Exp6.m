clc;
clear all;
x=input('Enter the Sequence');
subplot(3,2,1)
stem(x)

N=length(x);
xk=zeros(1,N);
ixk=zeros(1,N);
for k=0:N-1;
    for n=0:N-1;
        xk(k+1)=xk(k+1)+x(n+1)*exp(-i*2*pi*k*n/N);
    end
end
subplot(3,2,2)
stem(xk);
xlabel('Sequence');
ylabel('Amplitude');
title('DFT Response');

mag=abs(xk)
subplot(3,2,3)
stem(mag)
xlabel('Sequence')
ylabel('Magnitude')
title('Magnitude Plot')

phase=angle(xk)
subplot(3,2,4)
stem(phase)
xlabel('Sequence')
ylabel('Phase')
title('Phase Plot')


ixk=zeros(1,N);
for k=0:N-1;
    for n=0:N-1;
        ixk(n+1)=ixk(n+1)+x(n+1)*exp(i*2*pi*k*n/N);
    end
end
ixk=ixk/N;
subplot(3,2,5)
stem(ixk)
xlabel('Sequence');
ylabel('Amplitude');
title('IDFT Response');


 
