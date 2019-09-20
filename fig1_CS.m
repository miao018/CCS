%% ���ֵ���ѭ��ƽ�Ⱥ�chirpѭ��ƽ�ȵĹ�ϵ
theta=0:0.01:6*pi;
rho=0:0.01:6*pi;
figure
polar(theta,rho,'r')



% ������ѭ��ƽ��
theta=0:0.01:6*pi;
rho=6*pi*ones(1,1885);
figure
polar(theta,rho,'b')


%% ����һ���Ƕȳ���
t=0:0.1:6*pi;
mu=0.5;%��Ƶ��
f=1;%��ʼƵ��
y=cos(f*t);
figure
plot(real(y),'o-','Color',[0.75,0.5216,0.5294],'linewidth',1.5);

x=cos(mu*t.^2).*cos(f*t);
hold on
plot(real(x),'Color',[0.5176,0.7216,0.6294],'linewidth',1.5)

xlim([0,189])
legend('Periodic','Chirp-periodic')