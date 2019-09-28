A=[1,-0.6,0.08];
B=[1];
n1=0:30;
n2=0:29;
x1=[1,zeros(1,30)];
xi=filtic(B,A,[0 0]);%这个函数为了将初始条件根据y最高阶进行处理
o1=filter(B,A,x1,xi);
subplot(1,2,1);
stem(n1,o1,'.');
title('系统1的单位冲激响应');
x2=ones(1,30);
xi=filtic(B,A,[0 0]);
o2=filter(B,A,x2,xi);
subplot(1,2,2);
stem(n2,o2,'.');
title('系统1的单位阶跃响应');
