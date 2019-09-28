A=[1,-0.8,0.64];
B=[0.866];
n1=0:49;
n2=0:100;
x1=[1,zeros(1,49)];
xi=filtic(B,A,[0 0]);%这个函数为了将初始条件根据y最高阶进行处理
o1=filter(B,A,x1,xi);
subplot(1,2,1);
stem(n1,o1,'.');
title('系统的单位冲激响应');
x2=ones(1,101);
xi=filtic(B,A,[0 0]);
o2=filter(B,A,x2,xi);
subplot(1,2,2);
stem(n2,o2,'.');
title('系统2的单位阶跃响应');