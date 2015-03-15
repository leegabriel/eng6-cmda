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

january = project2Data(myStruct.janStarts(start:stop), :);
x = 1:length(january);

figure(1);
plot(x, january);