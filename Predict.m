function varargout = Predict(varargin)
% PREDICT MATLAB code for Predict.fig
%      PREDICT, by itself, creates a new PREDICT or raises the existing
%      singleton*.
%
%      H = PREDICT returns the handle to a new PREDICT or the handle to
%      the existing singleton*.
%
%      PREDICT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PREDICT.M with the given input arguments.
%
%      PREDICT('Property','Value',...) creates a new PREDICT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Predict_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Predict_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Predict

% Last Modified by GUIDE v2.5 13-Mar-2015 12:10:31

% Begin initialization code - DO NOT EDIT
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
% End initialization code - DO NOT EDIT


% --- Executes just before Predict is made visible.
function Predict_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Predict (see VARARGIN)

% Choose default command line output for Predict
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Predict wait for user response (see UIRESUME)
% uiwait(handles.predict_window);
    load project2Data

    % crudeOilData = project2Data(:,11); not available
    copperData = project2Data(:,21);
    aluminumData = project2Data(:,12);
    cottonData = project2Data(:,22);
    cocoaData = project2Data(:,17);
    
    c = 'cocoa'; % a graph is displayed depending on the choice, c
    
if strcmp('copper', c) 
    set(handles.predict_window, 'Name', 'Prediction for Copper');
    N = 10;
    k = 2 / (N + 1);
    copperEnd = length(copperData); % just for example...

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
    %yDesire = polyval();

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
elseif strcmp('aluminum', c)
    set(handles.predict_window, 'Name', 'Prediction for Aluminum');
    N = 10;
    k = 2 / (N + 1);
    aluminumEnd = length(aluminumData); % just for example...

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
    %yDesire = polyval();

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
elseif strcmp('cotton', c)
    set(handles.predict_window, 'Name', 'Prediction for Cotton');
    N = 10;
    k = 2 / (N + 1);
    cottonEnd = length(cottonData); % just for example...

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
    %yDesire = polyval();

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
elseif strcmp('cocoa', c)
    set(handles.predict_window, 'Name', 'Prediction for Cocoa');
    N = 10;
    k = 2 / (N + 1);
    cocoaEnd = length(cocoaData); % just for example...

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
    %yDesire = polyval();

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
else
    set(handles.predict_window, 'Visible','off');
    message = horzcat('Sorry. We don''t seem to have the data for "', ...
        c, '".');
    errordlg( message, 'Error' )
end

% --- Outputs from this function are returned to the command line.
function varargout = Predict_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
