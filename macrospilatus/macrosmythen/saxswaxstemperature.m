function saxswaxstemperature(fsns,samplename,energy)

% function saxswaxstemperature(fsns,samplename,energy)
%
% E.g. saxswaxstemperature([15:200])
% Plots the SAXS and WAXS data saved into intnorm and waxs_***.cor files
% to two pictures with a variable color and legend of temperature.
%
% UV 22.5.2009

[datasaxs,paramsaxs] = readintnormpilatus(fsns);

[datawaxs,paramwaxs] = readintnormmythen(fsns);


subplot('Position',[0.1 0.55 0.77 0.4])
legend1 = plotintstime(datasaxs,paramsaxs,samplename,energy);
legend(legend1,-1);
%xlabel(sprintf('q (1/%c)',197));
ylabel('Intensity (1/cm)');
title(sprintf('Sample %s',samplename))

subplot('Position',[0.1 0.1 0.39 0.4])
legend1 = plotintstime(datawaxs,paramwaxs,samplename,energy);
%legend(legend1,-1);
xlabel(sprintf('q (1/%c)',197));
ylabel('Intensity (relative units)');
set(gca,'XScale','Lin');
set(gca,'YScale','Lin');

set(gcf,'Position',[443    47   786   892]);
set(gcf,'PaperPosition',[0.634518 0.634517 19.715 28.4084]);
warning off MATLAB:Axes:NegativeDataInLogAxis
