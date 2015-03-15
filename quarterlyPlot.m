load project2Data

[r, c] = size(project2Data)

q = inputdlg('Hey dude enter a quarter (ex. I,II,III,IV)');
y1 = 1990;
y2 = 2015;
% year interval
quarterlyData = zeros(r, c);
if strcmp(q, 'I')
    fprintf('Years for quarter I (Jan - Mar)\n');
    monthIndex = project2Data(1:12:r, :)
    quarterlyData(1:12:r, :) = monthIndex
    [newR, newC] = size(monthIndex)
%     for i = 1:3
%         monthIndex = project2Data(i:12:r,:) % r is end index, row-wise
%         quarterlyData = project2Data(i,:)
%     end
elseif strcmp(q, 'II')
    fprintf('Years for quarter II (Apr - Jun)\n');
elseif strcmp(q, 'III')
    fprintf('Years for quarter III (Jul - Sep)\n');
elseif strcmp(q, 'IV')
    fprintf('Years for quarter IV (Oct - Dec)\n');
end