%% set_plot_defaults

set(groot,...
    'DefaultAxesFontSize',16,...
    'DefaultAxesFontName','Arial',...
    'DefaultAxesUnits','normalized',...
    'DefaultLineLineWidth',1,...
    'DefaultTextFontSize',16,...
    'DefaultTextHorizontalAlignment','center',...
    'DefaultTextFontName','Arial')
%%
x = BlackMaterials.Wavelength;
y1 = BlackMaterials.ABS1mm;
y2 = BlackMaterials.PA1mm;
y3 = BlackMaterials.PC1mm;
y4 = BlackMaterials.PETG1mm;
y5 = BlackMaterials.PLA1mm;
y6 = BlackMaterials.TPU1mm;

plot(x,y1,'-y','DisplayName','ABS');
hold on;
plot(x,y2,'-m','DisplayName','PA');
plot(x,y3,'-c','DisplayName','PC');
plot(x,y4,'-r','DisplayName','PETG');
plot(x,y5,'-g','DisplayName','PLA');
plot(x,y6,'-b','DisplayName','TPU');
hold off;


xlabel('Wavelength (nm)');
ylabel('Percent Transmission (%)');
legend({'ABS','PA','PC','PETG','PLA','TPU'},'Location','northwest');


xlim([400 2400]);
ylim([-3 5]);

print -depsc BlackMaterials1mmFig
