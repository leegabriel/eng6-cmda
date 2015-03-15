load project2Data

choice1 = inputdlg('From year:');
choice2 = inputdlg('To year:');

years = [];
for k = 1980:2015
    years(end+1) = k;
end
years = num2str(years');
myStruct.years = years;

[r, c] = size(project2Data);
myStruct.janStarts = (1:12:r)';
myStruct.febStarts = (2:12:r)';
myStruct.marStarts = (3:12:r)';
myStruct.aprStarts = (4:12:r)';
myStruct.mayStarts = (5:12:r)';
myStruct.junStarts = (6:12:r)';
myStruct.julStarts = (7:12:r)';
myStruct.augStarts = (8:12:r)';
myStruct.sepStarts = (9:12:r)';
myStruct.octStarts = (10:12:r)';
myStruct.novStarts = (11:12:r)';
myStruct.decStarts = (12:12:r)';

start = find(ismember(myStruct.years, choice1));
stop = find(ismember(myStruct.years, choice2));

commodity = 2;
month = 'jan';
if strcmp('jan', month)
    january = project2Data(myStruct.janStarts(start:stop), commodity);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(x, january);
elseif strcmp('feb', month)
    february = project2Data(myStruct.febStarts(start:stop), commodity);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(x, february);

elseif strcmp('mar', month)
    march = project2Data(myStruct.marStarts(start:stop), commodity);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(x, march);
    
elseif strcmp('apr', month)
    april = project2Data(myStruct.aprStarts(start:stop), commodity);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(x, april);
    
elseif strcmp('may', month)
    june = project2Data(myStruct.junStarts(start:stop), commodity);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(x, june);
    
elseif strcmp('jul', month)
    july = project2Data(myStruct.julStarts(start:stop), commodity);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(x, february);
    
elseif strcmp('feb', month)
    february = project2Data(myStruct.febStarts(start:stop), commodity);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(x, february);
    
elseif strcmp('feb', month)
    february = project2Data(myStruct.febStarts(start:stop), commodity);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(x, february);
    
elseif strcmp('feb', month)
    february = project2Data(myStruct.febStarts(start:stop), commodity);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(x, february);
    
elseif strcmp('feb', month)
    february = project2Data(myStruct.febStarts(start:stop), commodity);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(x, february);
    
elseif strcmp('feb', month)
    february = project2Data(myStruct.febStarts(start:stop), commodity);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(x, february);
else
    fprintf('Error.\n');
end
