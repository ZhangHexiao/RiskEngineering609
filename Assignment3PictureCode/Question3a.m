% a=[1.44,2.4/10000;2.4/10000,1.6/10000000];
% [V,D]=eig(a)
% a
% T=orth(V)
% Y=T'*a*T
% MX=[4.75;0.002];
% MY=T'*MX
% g=[0.000638848	0.001312962	0.001602215	0.001098881	0.001582469;4.1836	7.4464	2.548	3.8812	5.1268]
% m=T*g


% 
% clear all;
% close all;
% clc
% 
% D0=3;
% L=100;
% E=30000000;
% w=2;
% t=4;
% sample=1000;
% for i=1;sample
%     s = rng
%     Px(i)=normrnd(500,100);
%     Py(i)=normrnd(1000,100);
%     g(i)=D0-4*L.^3/(E*w*t)*sqrt((Py(i)/t.^2)^2+(Px(i)/w.^2).^2);
%     if g(i)>0
%         I(i)=0;
%     else
%         I(i)=1;
%     end
% end
%     failure=sum((I==1))
%    
%     p=failure/sample
%     
    
i=[0:1:15];
rou=[1:-0.1:0,0,0,0,0,0];
r=[1,0.95,0.81,0.63,0.44,0.28,0.160,0.08,0.04,0.02,0,0,0,0,0,0]
r1=[0.95,0.81,0.63,0.44,0.28,0.160,0.08,0.04,0.02,0,0,0,0,0,0,0]
m=8.*rou;
m2=8.*r;
V=sqrt(25.*(1-rou.^2))
V2=sqrt(25.*(1-r.^2))
plot(i,V,'-o')
hold on
plot(i,m,'-square')
hold on
plot(i,V2,'-*')
hold on
plot(i,m2,'-+')
xlabel('n[days]','Fontsize',9);
ylabel('E[X_i_0_+_n|X_i_0=15¡æ]-7¡æ and {Var[X_i_0_+_n|X_i_0]}^1^/^2','FontSize',9)
a=legend('Conditional SD','Conditonal Mean',' Previous Conditional SD','Privious Conditonal Mean')
set(a,'FontSize',12)

figure(2)
rou1=[0.9:-0.1:0,0,0,0,0,0,0]
m1=8*0.1.*(rou+rou1)*1/(1-0.9^2)
m12=4*0.1.*(r+r1)*1/(1-0.95^2)
V1=sqrt(25-25/(1-0.95^2)*(rou.^2+rou1.^2-1.9.*rou.*rou1))
V12=sqrt(25-25/(1-0.95^2)*(r.^2+r1.^2-1.9.*r.*r1))
plot(i,V1,'-o')
hold on
plot(i,m1,'-square')
hold on
plot(i,V12,'-*')
hold on
plot(i,m12,'-+')
xlabel('n[days]','Fontsize',9);
ylabel('E[X_i_0_+_n|X_i_0=15¡æ and X_i_0_-_1=15¡æ]-7¡æ and {Var[X_i_0_+_n|X_i_0]}^1^/^2','FontSize',9)
a=legend('Conditional SD','Conditonal Mean','Privioius Conditional SD','Privious Conditonal Mean')
set(a,'FontSize',12)



