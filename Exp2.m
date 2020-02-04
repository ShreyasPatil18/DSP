x=[1,2,3,4];
lx=length(x);
xk=zeros(1,lx)
ixk=zeros(1,lx)
for k=0:lx-1;
    for n=0:lx-1;
        xk(k+1)=xk(k+1)+x(n+1)*exp((-i)*2*k*pi*n/lx)
    end
end