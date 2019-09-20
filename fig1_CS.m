%% 呈现的是循环平稳和chirp循环平稳的关系
theta=0:0.01:6*pi;
rho=0:0.01:6*pi;
figure
polar(theta,rho,'r')



% 以下是循环平稳
theta=0:0.01:6*pi;
rho=6*pi*ones(1,1885);
figure
polar(theta,rho,'b')


%% 从另一个角度呈现
t=0:0.1:6*pi;
mu=0.5;%调频率
f=1;%初始频率
y=cos(f*t);
figure
plot(real(y),'o-','Color',[0.75,0.5216,0.5294],'linewidth',1.5);

x=cos(mu*t.^2).*cos(f*t);
hold on
plot(real(x),'Color',[0.5176,0.7216,0.6294],'linewidth',1.5)

xlim([0,189])
legend('Periodic','Chirp-periodic')