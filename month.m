load project2Data

choice1 = getappdata(0,'choice1')
choice2 = getappdata(0,'choice2')

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

c = 2;
m = getappdata(0, 'm')
if strcmp('January', m)
    january = project2Data(myStruct.janStarts(start:stop), c);
    x = (str2double(choice1):str2double(choice2))';
    figure(1);
    plot(datenum(x,1,1), january);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
    title('January Prices from '); %, str2double(choice1), ' to ', ...
        %xstr2double(choice2)));
elseif strcmp('February', m)
    february = project2Data(myStruct.febStarts(start:stop), c);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(datenum(x,1,1), february);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
elseif strcmp('March', m)
    march = project2Data(myStruct.marStarts(start:stop), c);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(datenum(x,1,1), march);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
elseif strcmp('Apr', m)
    april = project2Data(myStruct.aprStarts(start:stop), c);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(datenum(x,1,1), april);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
elseif strcmp('May', m)
    may = project2Data(myStruct.mayStarts(start:stop), c);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(datenum(x,1,1), may);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
elseif strcmp('June', m)
    june = project2Data(myStruct.junStarts(start:stop), c);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(datenum(x,1,1), june);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
elseif strcmp('July', m)
    july = project2Data(myStruct.julStarts(start:stop), c);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(datenum(x,1,1), july);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
elseif strcmp('August', m)
    august = project2Data(myStruct.augStarts(start:stop), c);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(datenum(x,1,1), august);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
elseif strcmp('September', m)
    september = project2Data(myStruct.sepStarts(start:stop), c);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(datenum(x,1,1), september);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
elseif strcmp('October', m)
    october = project2Data(myStruct.octStarts(start:stop), c);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(datenum(x,1,1), october);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
elseif strcmp('November', m)
    november = project2Data(myStruct.novStarts(start:stop), c);
    x = str2double(choice1):str2double(choice2);
    figure(1);
    plot(datenum(x,1,1), november);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
elseif strcmp('December', m)
    december = project2Data(myStruct.decStarts(start:stop), c);
    x = start:stop;
    figure(1);
    plot(datenum(x,1,1), december);
    dateFormat = 11;
    datetick('x',dateFormat)
    ylabel('Price')
    xlabel('Year');
else
    fprintf('Error.\n');
end
