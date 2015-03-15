load project2Data

[r, c] = size(project2Data);

choice1 = inputdlg('From year:');
choice2 = inputdlg('To year:');

janStarts = 1:12:r; % Begin creating structure. Do not touch
janStarts = janStarts';

years = [];
for k = 1980:2015
years(end+1) = k;
end
years = num2str(years');

myStruct.years = years;
myStruct.starts = janStarts; % End creating structure

index1 = find(ismember(myStruct.years, choice1));
start = myStruct.starts(index1)
index2 = find(ismember(myStruct.years, choice2));
stop = myStruct.starts(index2)



quarterlyData = -1 .* ones(r, c);
fprintf('Years for quarter I (Jan - Mar)\n')
for i = 1:3
    monthData = project2Data(i:12:r, :); % r = last month index
    quarterlyData(i:12:r, :) = monthData;
end
Q1 = quarterlyData;

quarterlyData = -1 .* ones(r, c);
fprintf('Years for quarter II (Apr - Jun)\n');
for i = 1:3
    monthData = project2Data(i+3:12:r, :); % r = last month index
    quarterlyData(i+3:12:r, :) = monthData;
end
Q2 = quarterlyData;

quarterlyData = -1 .* ones(r, c);
fprintf('Years for quarter III (Jul - Sep)\n');
for i = 1:3
    monthData = project2Data(i+6:12:r, :); % r = last month index
    quarterlyData(i+6:12:r, :) = monthData;
end
Q3 = quarterlyData;

quarterlyData = -1 .* ones(r, c);
fprintf('Years for quarter IV (Oct - Dec)\n');
for i = 1:3
    monthData = project2Data(i+9:12:r, :); % r = last month index
    quarterlyData(i+9:12:r, :) = monthData;
end
Q4 = quarterlyData;

