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
x = PLAGrayS4.Wavelength;
y1 = PLAGrayS4.PercentTransmission1mm;
y2 = PLAGrayS4.PercentTransmission2mm;
y3 = PLAGrayS4.PercentTransmission3mm;
y4 = PLAGrayS4.PercentTransmission4mm;

plot(x,y1,'DisplayName','1 mm');
hold on;
plot(x,y2,'DisplayName','2 mm');
plot(x,y3,'DisplayName','3 mm');
plot(x,y4,'DisplayName','4 mm');
hold off;


xlabel('Wavelength (nm)');
ylabel('Percent Transmission (%)');
legend({'1 mm','2 mm','3 mm','4 mm'},'Location','northwest');


xlim([400 2400]);
ylim([-3 3]);

print -depsc PLAGrayFig