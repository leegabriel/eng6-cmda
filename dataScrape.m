URL = 'http://online.wsj.com/mdc/public/page/2_3023-cashprices.html';
str = urlread(URL);
fileID = fopen('webdata.txt', 'w');
newStr = regexprep(str,'\s*',' '); 
fprintf(fileID,'%s\r\n',str);
aluminumIndex = regexp(newStr, 'Aluminum');
copperIndex = regexp(newStr, 'Copper');
cottonIndex = regexp(newStr, 'Cotton, 1');
cocoaIndex = regexp(newStr, 'Cocoa');
fclose(fileID);



copperRow = newStr(copperIndex:copperIndex+300);
expression = '<b>';
startIndex = regexp(copperRow,expression);
expression = '</b>';
endIndex = regexp(copperRow, expression);
copperRow(startIndex+3:endIndex-1)

aluminumRow = newStr(aluminumIndex:aluminumIndex+300);
expression = '<b>';
startIndex = regexp(aluminumRow,expression);
expression = '</b>';
endIndex = regexp(aluminumRow, expression);
aluminumRow(startIndex+3:endIndex-1)

cottonRow = newStr(cottonIndex:cottonIndex+300);
expression = '<b>';
startIndex = regexp(cottonRow,expression);
expression = '</b>';
endIndex = regexp(cottonRow, expression);
cottonRow(startIndex+3:endIndex-1)

cocoaRow = newStr(cocoaIndex:cocoaIndex+300);
expression = '<b>';
startIndex = regexp(cocoaRow,expression);
expression = '</b>';
endIndex = regexp(cocoaRow, expression);
cocoaRow(startIndex+3:endIndex-1)