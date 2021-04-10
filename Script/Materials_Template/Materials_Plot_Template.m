%% set_plot_defaults

set(groot,...
    'DefaultAxesFontSize',26,...
    'DefaultAxesFontName','Arial',...
    'DefaultAxesUnits','normalized',...
    'DefaultLineLineWidth',1,...
    'DefaultTextFontSize',26,...
    'DefaultTextHorizontalAlignment','center',...
    'DefaultTextFontName','Arial')
%%
x = x.Wavelength;
y1 = x.1mm;
y2 = x.2mm;
y3 = x.3mm;
y4 = x.4mm;

plot(x,y1,'DisplayName','1mm');
hold on;
plot(x,y2,'DisplayName','2mm');
plot(x,y3,'DisplayName','3mm');
plot(x,y4,'DisplayName','4mm');
hold off;

title('Percent Transmission through x');
xlabel('Wavelength (nm)');
ylabel('Percent Transmission (%)');
legend({'1 mm','2 mm','3 mm','4 mm'},'Location','northeast');


xlim([400 2400]);
ylim([-x x]);


