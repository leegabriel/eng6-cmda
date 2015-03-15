function [Average]=getavg(cell)
Average=mean(cell2mat(cell)); 
end
%{
gets cells, indexed or not, and turns them into matrices and takes the
average of the cell.
ie: a=getavg(cell(2:3,4)) will return the average or those numbers in that
cell at those indexes.
%}