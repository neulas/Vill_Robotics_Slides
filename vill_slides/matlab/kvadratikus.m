%kvadratikus Ljapunov függvény
clear all
close all
x1=linspace(1,3,40);
x2=linspace(2.5,5,40);
V=zeros(max(size(x1)),max(size(x2)));
dV=V;
for i=1:max(size(x1))
    for j=1:max(size(x2))
        V(i,j)=(x1(i)-2)^2+(x2(j)-3.750000000)^2;
        dV(i,j)=-4.4*x1(i)*x2(j)+16.5*x1(i)+55.3*x2(j)-120.1875-6.2*x2(j)^2;
    end
end

figure
surfc(x1,x2,V,'FaceAlpha',0.6,'EdgeAlpha',0.6)
grid on
xlabel('x_1')
ylabel('x_2')
zlabel('V(x)')

figure
surfc(x2,x2,dV,'FaceAlpha',0.6,'EdgeAlpha',0.6)
%contour(x1,x2,dV,20)
grid on
hold on
xlabel('x_1')
ylabel('x_2')
zlabel('dV(x)/dt')
% %
% x10=1;
% x20=2;
% sim('modell.mdl')
% x1a=x(:,1);
% x2a=x(:,2);
% dVa=-4.4*x1a.*x2a+16.5.*x1a+55.3.*x2a-120.1875-6.2.*x2a.^2;
% plot3(x1a,x2a,dVa,'LineWidth',2);
% %
% x10=3;
% x20=5;
% sim('modell.mdl')
% x1a=x(:,1);
% x2a=x(:,2);
% dVa=-4.4*x1a.*x2a+16.5.*x1a+55.3.*x2a-120.1875-6.2.*x2a.^2;
% plot3(x1a,x2a,dVa,'LineWidth',2);
% %
% x10=2.5;
% x20=2.5;
% sim('modell.mdl')
% x1a=x(:,1);
% x2a=x(:,2);
% dVa=-4.4*x1a.*x2a+16.5.*x1a+55.3.*x2a-120.1875-6.2.*x2a.^2;
% plot3(x1a,x2a,dVa,'LineWidth',2);
% %