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
x = BlackMaterialsS1.Wavelength;
y1 = BlackMaterialsS1.ABS2mm;
y2 = BlackMaterialsS1.PA2mm;
y3 = BlackMaterialsS1.PC2mm;
y4 = BlackMaterialsS1.PETG2mm;
y5 = BlackMaterialsS1.PLA2mm;
y6 = BlackMaterialsS1.TPU2mm;

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

print -depsc BlackMaterials2mmFig
