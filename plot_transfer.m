s = tf('s');

G = -0.125*(s+0.437)/((s+1.29)*(s+0.193));

LineWidth = 2.5;

figure
t = linspace(0,20,10000);
impulse(G)
set(findall(gcf,'type','line'),'linewidth',LineWidth);

grid on;
hold on

Resiudo = -0.0971969*exp(-1.29*t)-0.027803099*exp(-0.193*t);

plot(t, Resiudo,"--",'LineWidth',2.5);

xlim([0 20])

xlabel('t')
ylabel('g(t)')

legend('Função de Transferencia','Teorema dos Resíduos')