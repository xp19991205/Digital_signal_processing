xn=[1,2,3,4,2,1,zeros(1,10)];%����ϵͳ������
B=[1,0,2];
A=[1,1/2];
yn=filter(B,A,xn);
n=0:length(yn)-1;
stem(n,yn,'.');
axis([1 15 -2 8]);
title("ϵͳ����״̬��Ӧ");
xlabel('n');
ylabel('y(n)');