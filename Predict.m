function varargout = Predict(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Predict_OpeningFcn, ...
                   'gui_OutputFcn',  @Predict_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function Predict_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

load project2Data

c = getappdata(0, 'choice');
%c = 'copper'; % a graph is displayed depending on the choice, c

copperData = project2Data(:,21); % get relevant data first
aluminumData = project2Data(:,12);
cottonData = project2Data(:,22);
cocoaData = project2Data(:,17);

URL = 'http://online.wsj.com/mdc/public/page/2_3023-cashprices.html'; 
str = urlread(URL);
fileID = fopen('webdata.txt', 'w');
newStr = regexprep(str,'\s*',' '); 
%fprintf(fileID,'%s\r\n',str); % don't need this nor the file anymore
copperIndex = regexp(newStr, 'Copper');
aluminumIndex = regexp(newStr, 'Aluminum'); 
cottonIndex = regexp(newStr, 'Cotton, 1');
cocoaIndex = regexp(newStr, 'Cocoa');
fclose(fileID); 
    
N = 10; % Initializations for the EMA
k = 2 / (N + 1);

if strcmp('copper', c) 
    set(handles.predict_window, 'Name', 'Prediction for Copper');

    copperEnd = length(copperData); 

    simpleAvg = sum(copperData(1:N))/N;

    emaVector = zeros(1,copperEnd-N);

    start = N+1;
    emaVector(1) = simpleAvg;
    for i = start:copperEnd
        prev = emaVector(i-N); % previous average
        emaCurrent = ((copperData(i) - prev) .* k) + prev;
        emaVector(i-N+1) = emaCurrent; 
    end

    x = N:length(copperData);
    coeffs = polyfit(x, emaVector, 10);
    p = polyval(coeffs, x);

    handles.plot_tag = plot(x, p, 'r', 1:length(copperData), ...
        copperData,'b');
    xlabel('Month');
    ylabel('Price (Comex spot price $ per lb.)');
    set(handles.title_tag, 'String', ...
        'Copper Data and Exponential Moving Average (EMA)');
    legend(horzcat('EMA-', num2str(N)), 'Copper Data' );
    set(handles.date_tag, 'String', horzcat('As of ', ...
        datestr(now,'mmmm dd, yyyy, HH:MM AM:')));
    
    set(handles.predict_tag, 'String', polyval(coeffs, copperData(end)));
    
    copperRow = newStr(copperIndex:copperIndex+300);
    expression = '<b>';
    startIndex = regexp(copperRow,expression);
    expression = '</b>';
    endIndex = regexp(copperRow, expression);
    actual = copperRow(startIndex+3:endIndex-1);
    
    set(handles.actual_tag, 'String', actual);
     
elseif strcmp('aluminum', c)
    set(handles.predict_window, 'Name', 'Prediction for Aluminum');
    
    aluminumEnd = length(aluminumData); 
    
    simpleAvg = sum(aluminumData(1:N))/N;

    emaVector = zeros(1,aluminumEnd-N);

    start = N+1;
    emaVector(1) = simpleAvg;
    for i = start:aluminumEnd
        prev = emaVector(i-N); % previous average
        emaCurrent = ((aluminumData(i) - prev) .* k) + prev;
        emaVector(i-N+1) = emaCurrent; 
    end

    x = N:length(aluminumData);
    coeffs = polyfit(x, emaVector, 10);
    p = polyval(coeffs, x);

    handles.plot_tag = plot(x, p, 'r', 1:length(aluminumData), ...
        aluminumData,'b');
    xlabel('Month');
    ylabel('Price ($ per metric ton)');
    set(handles.title_tag, 'String', ...
        'Aluminum Data and Exponential Moving Average (EMA)');
    legend(horzcat('EMA-', num2str(N)), 'Aluminum Data' );
    set(handles.date_tag, 'String', horzcat('As of ', ...
        datestr(now,'mmmm dd, yyyy, HH:MM AM:')));
    
    set(handles.predict_tag, 'String', polyval(coeffs, aluminumData(end)));
    
    aluminumRow = newStr(aluminumIndex:aluminumIndex+300);
    expression = '<b>';
    startIndex = regexp(aluminumRow,expression);
    expression = '</b>';
    endIndex = regexp(aluminumRow, expression);
    actual = aluminumRow(startIndex+3:endIndex-1);
    
    set(handles.actual_tag, 'String', actual);

elseif strcmp('cotton', c)
    set(handles.predict_window, 'Name', 'Prediction for Cotton');
    
    cottonEnd = length(cottonData); 

    simpleAvg = sum(cottonData(1:N))/N;

    emaVector = zeros(1,cottonEnd-N);

    start = N+1;
    emaVector(1) = simpleAvg;
    for i = start:cottonEnd
        prev = emaVector(i-N); % previous average
        emaCurrent = ((cottonData(i) - prev) .* k) + prev;
        emaVector(i-N+1) = emaCurrent; 
    end

    x = N:length(cottonData);
    coeffs = polyfit(x, emaVector, 10);
    p = polyval(coeffs, x);

    handles.plot_tag = plot(x, p, 'r', 1:length(cottonData), ...
        cottonData,'b');
    xlabel('Month');
    ylabel('Price (1 1/16 strand lw-md Mmphs, per lb-U)');
    set(handles.title_tag, 'String', ...
        'Cotton Data and Exponential Moving Average (EMA)');
    legend(horzcat('EMA-', num2str(N)), 'Cotton Data' );
    set(handles.date_tag, 'String', horzcat('As of ', ...
        datestr(now,'mmmm dd, yyyy, HH:MM AM:')));
    
    set(handles.predict_tag, 'String', polyval(coeffs, cottonData(end)));
    
    cottonRow = newStr(cottonIndex:cottonIndex+300);
    expression = '<b>';
    startIndex = regexp(cottonRow,expression);
    expression = '</b>';
    endIndex = regexp(cottonRow, expression);
    actual = cottonRow(startIndex+3:endIndex-1);

    set(handles.actual_tag, 'String', actual);
    
elseif strcmp('cocoa',c)
    set(handles.predict_window, 'Name', 'Prediction for Cocoa');

    cocoaEnd = length(cocoaData); 

    simpleAvg = sum(cocoaData(1:N))/N;

    emaVector = zeros(1,cocoaEnd-N);

    start = N+1;
    emaVector(1) = simpleAvg;
    for i = start:cocoaEnd
        prev = emaVector(i-N); % previous average
        emaCurrent = ((cocoaData(i) - prev) .* k) + prev;
        emaVector(i-N+1) = emaCurrent; 
    end

    x = N:length(cocoaData);
    coeffs = polyfit(x, emaVector, 10);
    p = polyval(coeffs, x);

    handles.plot_tag = plot(x, p, 'r', 1:length(cocoaData), ...
        cocoaData,'b');
    xlabel('Month');
    ylabel('Price ($ per metric ton-W)');
    set(handles.title_tag, 'String', ...
        'Cocoa Data and Exponential Moving Average (EMA)');
    legend(horzcat('EMA-', num2str(N)), 'Cocoa Data' );
    set(handles.date_tag, 'String', horzcat('As of ', ...
        datestr(now,'mmmm dd, yyyy, HH:MM AM:')));
    
    set(handles.predict_tag, 'String', polyval(coeffs, cocoaData(end)));
    
    cocoaRow = newStr(cocoaIndex:cocoaIndex+300);
    expression = '<b>';
    startIndex = regexp(cocoaRow,expression);
    expression = '</b>';
    endIndex = regexp(cocoaRow, expression);
    actual = cocoaRow(startIndex+3:endIndex-1);
    
    set(handles.actual_tag, 'String', actual);
else
    set(handles.predict_window, 'Visible','off');
    message = horzcat('Sorry. We don''t seem to have the data for "', ...
        c, '".');
    errordlg( message, 'Error' )
end

function varargout = Predict_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;
