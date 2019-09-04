clc;clear all;close all
%% Load Data
DD = load('S3_TimeGraphs.dat');
DD(:,6) = DD(:,5)*7.93362E+11/2.67998E+15;
figure
subplot(4,1,1)
plot(DD(:,1),DD(:,2),'b','LineWidth',3)
xlim([0 4.5])
% xlabel('Time(billion Years)')
ylabel('Temperature(K)')
set(gca, 'FontName', 'Gill Sans MT','FontWeight','bold','FontSize',12)
subplot(4,1,2)
plot(DD(:,1),DD(:,3),'b','LineWidth',3)
xlim([0 4.5])
% xlabel('Time(billion Years)')
ylabel('Top Heat Flux')
set(gca, 'FontName', 'Gill Sans MT','FontWeight','bold','FontSize',12)
subplot(4,1,3)
plot(DD(:,1),DD(:,4),'b','LineWidth',3)
xlim([0 4.5])
% xlabel('Time(billion Years)')
ylabel('Bottom Heat Flux')
set(gca, 'FontName', 'Gill Sans MT','FontWeight','bold','FontSize',12)
subplot(4,1,4)
plot(DD(:,1),DD(:,6),'b','LineWidth',3)
xlim([0 4.5])
xlabel('Time(billion Years)')
ylabel('Eruption Flux')
set(gca, 'FontName', 'Gill Sans MT','FontWeight','bold','FontSize',12)
