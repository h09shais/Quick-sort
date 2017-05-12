close all;
clear all;
clc;
 
prompt = {'How many number do you want to sort?'};
dlg_title = 'Input Box (Quick Sort)';
num_lines= 1;
 
answer  = inputdlg(prompt,dlg_title,num_lines);
answer  = str2num(answer{1});
 
PrvArray = randperm(answer)
 
figure('Name','Simulation Plot Window (Quick Sort)','NumberTitle','off');
 
hold on;
title(['Simulation Plot Window (Quick Sort) - For ',num2str(answer),' random value']);
 
plot(PrvArray,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10)
hold on;
 
starttime=cputime;
AfterSort = quickSort(PrvArray, 1, answer)
 
plot(AfterSort,'--bo','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','y',...
                'MarkerSize',10)
 
set(legend('Initial Condition','After Sort',2),'Interpreter','none');
 
xlabel('Numbers');
ylabel('Position');
