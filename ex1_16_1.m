A=[1,-0.6,0.08];
B=[1];
n1=0:30;
n2=0:29;
x1=[1,zeros(1,30)];
xi=filtic(B,A,[0 0]);%�������Ϊ�˽���ʼ��������y��߽׽��д���
o1=filter(B,A,x1,xi);
subplot(1,2,1);
stem(n1,o1,'.');
title('ϵͳ1�ĵ�λ�弤��Ӧ');
x2=ones(1,30);
xi=filtic(B,A,[0 0]);
o2=filter(B,A,x2,xi);
subplot(1,2,2);
stem(n2,o2,'.');
title('ϵͳ1�ĵ�λ��Ծ��Ӧ');
