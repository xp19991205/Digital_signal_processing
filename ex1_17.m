A=[1,-0.8,0.64];
B=[0.866];
n1=0:49;
n2=0:100;
x1=[1,zeros(1,49)];
xi=filtic(B,A,[0 0]);%�������Ϊ�˽���ʼ��������y��߽׽��д���
o1=filter(B,A,x1,xi);
subplot(1,2,1);
stem(n1,o1,'.');
title('ϵͳ�ĵ�λ�弤��Ӧ');
x2=ones(1,101);
xi=filtic(B,A,[0 0]);
o2=filter(B,A,x2,xi);
subplot(1,2,2);
stem(n2,o2,'.');
title('ϵͳ2�ĵ�λ��Ծ��Ӧ');