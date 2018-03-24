clear all;
close all;
clc

D0=3;
L=100;
E=30000000;
w=2;
t=4;
sample=1000;
for i = 1 : sample
    s = rng;
    Px(i)=normrnd(500,100);
    Py(i)=normrnd(1000,100);
    g(i)=D0-4*L.^3/(E*w*t)*sqrt((Py(i)/t.^2)^2+(Px(i)/w.^2).^2);
    if g(i)>0
        I(i)=0;
    else
        I(i)=1;
    end
end
    failure=sum((I==1));
    p=failure/sample
    
    F_SIZE =10;
    fontsize = 8;
    plot(Px,Py,'*','linewidth',0.05)
    hold on
    syms x y
 
    h=ezplot(D0-4*L.^3/(E*w*t)*sqrt((y/t.^2)^2+(x/w.^2).^2),[0,1000,0,3000]);
    set(h,'linewidth',4)
    xlabel('P_x, [lb]')
    ylabel('P_y  [lb]')
    title('Safe region and Falure region with 1000 times simulation','fontsize',F_SIZE+2)
    
    figure(2)
    cdfplot(g)
    xlabel('g')
    ylabel('Cumulative distribution function')
    [f,xi]=ksdensity(g);
    title('Curve of cumulative distribution function','fontsize',F_SIZE+4)
    grid on
    
    figure(3)
    plot(xi,f)
    xlabel('g')
    ylabel('Probability density function')
    title('Curve of Probability density function','fontsize',F_SIZE+4)
    grid on
    
  
    