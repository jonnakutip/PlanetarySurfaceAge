function surfaceAge()
%% surfaceAge()
% Input: 
% Select .dat (ex: 'S1_age.dat') file
% Output:
% Surface Age plot
% Author:   PAVAN KUMAR JONNAKUTI
%           Project Scientist - B
%           Data Information & Management Group
%           Indian National Centre for Ocean Information Services (INCOIS)
%           "Ocean Valley", Pragathi Nagar (B.O)
%           Nizampet (S.O), Hyderabad - 500 090
%           Telangana, INDIA
% E-mail:   jpawan33@gmail.com
% Web-link: http://jpavan.com
% Copyright @ Author
% code : Visualization of Surface Age
%%
clc;close all;
%%
[filename, pathname, ~] = uigetfile({'*.dat';'*.xls';'*.mat';'*.txt'});
DD = load([pathname filesep filename]);
c1 = [DD(:,1) DD(:,3)+DD(:,4)];
c2 = [DD(:,1) DD(:,3)-DD(:,4)];
figure
c = [c1 ; flipud(c2)] ;
k = 17;
patch(c(:,1),c(:,2),[0 0 0]+0.05*k,'edgeColor','none')
hold on
plot(DD(:,1),DD(:,3),'k','LineWidth',3)
xlabel('Time (ma)')
ylabel('Surface Age (ma)')
set(gca, 'FontName', 'Gill Sans MT','FontWeight','bold','FontSize',14)