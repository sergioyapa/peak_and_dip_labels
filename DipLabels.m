%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   Dip labels 
%            Sergio Yanez-Pagans 2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Find, plot, and label peaks

function [dip,dip_locs] = DipLabels(x,y,hs,vs)

[dip,dip_locs] = findpeaks(-y,x); % find dips and their locations
figure('WindowState','maximized') % start a maximized figure window
plot(x,y,'LineWidth',2,'Color','b'); % plot input arrays
hold on;
plot(dip_locs,-dip,'ok','LineWidth',1.5,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10) % plot dips in their locations
hold on
ylim([min(y)-0.5 max(y)+0.5]) % leave some y margin
text(dip_locs+hs,-dip-vs,num2str(dip_locs','%.1f'),'FontSize',16); % place dip labels
box on
% lines below control some plot aspects to give them a nice look
set(gca, 'Layer', 'top')
set(gca,'fontsize',28) 
set(gca,'linewidth',3)
set(gca,'FontName','Times New Roman')
set(gcf, 'Position', [60,40,1150,600])
set(gcf,'color','w'); 
pbaspect([2 1 1])

end