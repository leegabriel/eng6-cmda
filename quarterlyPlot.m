load project2Data

[r, c] = size(project2Data);

q = inputdlg('Hey dude enter a quarter (ex. I,II,III,IV)');
%r = inputdlg('lol okay now enter a year range');
y1 = 1990;
y2 = 2015;
% year interval
quarterlyData = zeros(r, c);
if strcmp(q, 'I')
    fprintf('Years for quarter I (Jan - Mar)\n');
    
    for i = 1:3
        monthData = project2Data(i:12:r, :); % r is last month index, I = 12
        quarterlyData(i:12:r, :) = monthData;
    end
    quarterlyData
elseif strcmp(q, 'II')
    fprintf('Years for quarter II (Apr - Jun)\n');
    
    for i = 1:3
        monthData = project2Data(i+3:12:r, :); % r is last month index, I = 12
        quarterlyData(i+3:12:r, :) = monthData;
    end
    quarterlyData
elseif strcmp(q, 'III')
    fprintf('Years for quarter III (Jul - Sep)\n');
    
    for i = 1:3
        monthData = project2Data(i+6:12:r, :); % r is last month index, I = 12
        quarterlyData(i+6:12:r, :) = monthData;
    end
    quarterlyData
elseif strcmp(q, 'IV')
    fprintf('Years for quarter IV (Oct - Dec)\n');
    
    for i = 1:3
        monthData = project2Data(i+9:12:r, :); % r is last month index, I = 12
        quarterlyData(i+9:12:r, :) = monthData;
    end
    quarterlyData
end