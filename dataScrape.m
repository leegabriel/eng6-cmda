URL = 'http://online.wsj.com/mdc/public/page/2_3023-cashprices.html';
str = urlread(URL);
fileID = fopen('webdata.txt', 'w');
% fprintf(fileID,'%s\r\n',str);
aluminumIndex = regexp(str, 'Aluminum');
copperIndex = regexp(str, 'Copper');
cottonIndex = regexp(str, 'Cotton, 1');
cocoaIndex = regexp(str, 'Cocoa');
fclose(fileID);