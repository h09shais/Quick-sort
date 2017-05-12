close all;
clear all;
clc;
X = [100:50:450];
 
for m = 1:length(X)
    a = 1 : X(m);
    t1 = tic;  
    AfterQuickSort = quicksort(a, 1, X(m));
    YBest(m) = toc(t1);
end
 
 
figure('Name','Quick Sort simulation','NumberTitle','off');
plot(X, YBest,'--rs','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',10)
hold on;
title('Quick Sort analysis');
xlabel('No of Input');
ylabel('Execution Time(sec.)');
 
 
for m = 1:length(X)
    a = 1 : X(m);
    index1 = 1;
    index2 = length(a);
    b = zeros(1,length(a));
    while (index2 >= 1)
        b(index1) = a(index2);
        index1 = index1 + 1;
        index2 = index2 - 1;
    end
 
    t1 = tic;  
    AfterQuickSort = quicksort(b, 1, X(m));
    YWorst(m) = toc(t1);
end
 
plot(X, YWorst,'--bo','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','y',...
                'MarkerSize',10)
hold on;
 
for m = 1:length(X)
    t1 = tic;  
    AfterQuickSort = quicksort(randperm(X(m)), 1, X(m));
    YAverage(m) = toc(t1);
end
 
plot(X, YAverage,'-+c','LineWidth',2,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','m',...
                'MarkerSize',10)
grid on;
 
set(legend('Sorted Data,'Reverse Data','Random data',2),'Interpreter','none');
