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
myStruct.marStarts = [0 ; myStruct.marStarts];
myStruct.aprStarts = (4:12:r)';
myStruct.aprStarts = [0 ; myStruct.aprStarts];
myStruct.mayStarts = (5:12:r)';
myStruct.mayStarts = [0 ; myStruct.mayStarts];
myStruct.junStarts = (6:12:r)';
myStruct.junStarts = [0 ; myStruct.junStarts];
myStruct.julStarts = (7:12:r)';
myStruct.julStarts = [0 ; myStruct.julStarts];
myStruct.augStarts = (8:12:r)';
myStruct.augStarts = [0 ; myStruct.augStarts];
myStruct.sepStarts = (9:12:r)';
myStruct.sepStarts = [0 ; myStruct.sepStarts];
myStruct.octStarts = (10:12:r)';
myStruct.octStarts = [0 ; myStruct.octStarts];
myStruct.novStarts = (11:12:r)';
myStruct.novStarts = [0 ; myStruct.novStarts];
myStruct.decStarts = (12:12:r)';
myStruct.decStarts = [0 ; myStruct.decStarts];

start = find(ismember(myStruct.years, {choice1}));
stop = find(ismember(myStruct.years, {choice2}));

c = 2;
choiceColIndices = 2:64;


m = getappdata(0, 'm')
if strcmp('January', m)
    january = project2Data(myStruct.janStarts(start:stop), c);
    x = (str2double(choice1):str2double(choice2))';
    figure;
    plot(datenum(x,1,1), january);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('January Prices from ', choice1, ' to ', choice2));
elseif strcmp('February', m)
    february = project2Data(myStruct.febStarts(start:stop), c);
    x = (str2double(choice1):str2double(choice2))';
    figure;
    plot(datenum(x,1,1), february);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('February Prices from ', choice1, ' to ', choice2));
elseif strcmp('March', m)
    idx = myStruct.marStarts(start:stop);
    march = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    figure;
    plot(datenum(x,1,1), march);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('March Prices from ', choice1, ' to ', choice2));
elseif strcmp('Apr', m)
    idx = myStruct.aprStarts(start:stop);
    april = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    figure;
    plot(datenum(x,1,1), april);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('April Prices from ', choice1, ' to ', choice2));
elseif strcmp('May', m)
    idx = myStruct.mayStarts(start:stop);
    may = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    figure;
    plot(datenum(x,1,1), may);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('May Prices from ', choice1, ' to ', choice2));
elseif strcmp('June', m)
    idx = myStruct.junStarts(start:stop);
    june = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    figure;
    plot(datenum(x,1,1), june);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('June Prices from ', choice1, ' to ', choice2));
elseif strcmp('July', m)
    idx = myStruct.julStarts(start:stop);
    july = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    figure;
    plot(datenum(x,1,1), july);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('July Prices from ', choice1, ' to ', choice2));
elseif strcmp('August', m)
    idx = myStruct.augStarts(start:stop);
    august = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    figure;
    plot(datenum(x,1,1), august);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('August Prices from ', choice1, ' to ', choice2));
elseif strcmp('September', m)
    idx = myStruct.sepStarts(start:stop);
    september = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    figure;
    plot(datenum(x,1,1), september);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('September Prices from ', choice1, ' to ', choice2));
elseif strcmp('October', m)
    idx = myStruct.octStarts(start:stop);
    october = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    figure;
    plot(datenum(x,1,1), october);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('October Prices from ', choice1, ' to ', choice2));
elseif strcmp('November', m)
    idx = myStruct.novStarts(start:stop);
    november = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    figure;
    plot(datenum(x,1,1), november);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('November Prices from ', choice1, ' to ', choice2));
elseif strcmp('December', m)
    idx = myStruct.decStarts(start:stop);
    december = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    figure;
    plot(datenum(x,1,1), december);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    title(horzcat('December Prices from ', choice1, ' to ', choice2));
else
    fprintf('Error.\n');
end
