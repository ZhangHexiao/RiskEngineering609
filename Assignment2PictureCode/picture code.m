% % x=[0:0.01:100];
% % y= 0.24./(x.*sqrt(2*pi)*0.05).*exp(-(log(x)-3.22).^2/(2*0.05^2))+0.4./(x*sqrt(2*pi)*0.05).*exp(-(log(x)-3.4).^2/(2*0.05^2))+0.24./(x*sqrt(2*pi)*0.1).*exp(-(log(x)-3.68).^2/(2*0.1^2))+0.02./(x*sqrt(2*pi)*0.07).*exp(-(log(x)-3.4).^2/(2*0.07^2)) + 0.1./(x*sqrt(2*pi)*0.15).*exp(-(log(x)-3.9).^2/(2*0.15^2))
% % plot(x,y)
% % axis([0,80,0,0.12])
% % ylabel('f_D(d)','Fontsize',15)
% % xlabel('d[minute]','Fontsize',15)
% 
% % x=[50000:0.01:100000];
% % y=1./((1+1/3).*x.^2+x);
% % plot(x,y)
% % xlabel('t[miles]','Fontsize',15)
% % ylabel('h(t)','Fontsize',15)
% % % axis([50000,150000,0,0.12])

% % x=[0:1:100];
% % y=[1:1:100];
% % [x,y]=meshgrid(x,y)
% % z=(exp(-(x./49.4).^(-6.5))).^y;
% % mesh(y,x,z);
% % xlabel('v*[mph]','Fontsize',15)
% % ylabel('n[number of years]','Fontsize',15)
% % zlabel('R','Fontsize',15)
% 
% % 
% % x=[0:1:100];
% % y=[1:1:100];
% % [x,y]=meshgrid(x,y)
% % z=(exp(-exp(-0.2*(x-56.262)))).^y
% % mesh(y,x,z);
% % xlabel('v*[mph]','Fontsize',15)
% % ylabel('t[number of years]','Fontsize',15)
% % zlabel('R','Fontsize',15)
% % 
% % 
figure
x=[5:0.1:50]
a=0.1
b=1
c=10
y1=exp(-a.*exp(-x/5.3))
y2=exp(-b.*exp(-x/5.3))
y3=exp(-c.*exp(-x/5.3))
plot(x,y1)
hold on
plot(x,y2,'Linewidth',2)
hold on
plot(x,y3,'Linewidth',3)
axis([5,50,0,1.2])
legend({'¦Ë_>_5T=0.1','¦Ë_>_5T=1','¦Ë_>_5T=10'},'Fontsize',12)
xlabel('m-magnitude','Fontsize',12)
ylabel('F_M(m)','Fontsize',12)
grid on

% plot(x,y2,'--''Linewidth',2)
% plot(x,y3,'-.''Linewidth',3)


