function varargout = monthPlot(varargin)
% MONTHPLOT MATLAB code for monthPlot.fig
%      MONTHPLOT, by itself, creates a new MONTHPLOT or raises the existing
%      singleton*.
%
%      H = MONTHPLOT returns the handle to a new MONTHPLOT or the handle to
%      the existing singleton*.
%
%      MONTHPLOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MONTHPLOT.M with the given input arguments.
%
%      MONTHPLOT('Property','Value',...) creates a new MONTHPLOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before monthPlot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to monthPlot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help monthPlot

% Last Modified by GUIDE v2.5 15-Mar-2015 18:08:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @monthPlot_OpeningFcn, ...
                   'gui_OutputFcn',  @monthPlot_OutputFcn, ...
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


% --- Executes just before monthPlot is made visible.
function monthPlot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to monthPlot (see VARARGIN)

% Choose default command line output for monthPlot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes monthPlot wait for user response (see UIRESUME)
% uiwait(handles.figure1);
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


choiceCols = (2:64)';
choiceLabels = {
    'allcom';
    'nonfuel';
    'foodbev';
    'food';
    'bev';
    'industrial';
    'ARM';
    'metals';
    'energyfuel';
    'crudeoil';
    'aluminum';
    'banana';
    'barley';
    'beef';
    'coal';
    'cocoa';
    'coffeearab';
    'coffeerob';
    'rapeseed';
    'copper';
    'cotton';
    'fishmeal';
    'nuts';
    'hides';
    'china';
    'lamb';
    'lead';
    'softlogs';
    'hardlogs';
    'maize';
    'gasrussia';
    'gasindo';
    'gaslouis';
    'nickel';
    'crudeavg';
    'crudeuk';
    'oildubai';
    'crudeint';
    'oliveoil';
    'orange';
    'palmoil';
    'pork';
    'chicken';
    'rice';
    'rubber';
    'salmon';
    'hardwood';
    'softwood';
    'shrimp';
    'soymeal';
    'soyoil';
    'soyus';
    'sugareuro';
    'sugarfree';
    'sugarus';
    'sunflower';
    'tea';
    'tin';
    'uranium';
    'wheat';
    'woolcoarse';
    'woolfine';
    'zinc';
    };
myStruct2.labels = choiceLabels;
myStruct2.cols = choiceCols;

c = myStruct2.cols(find(ismember(myStruct2.labels, getappdata(0,'choice')))) 

m = getappdata(0, 'm')
if strcmp('January', m)
    january = project2Data(myStruct.janStarts(start:stop), c);
    x = (str2double(choice1):str2double(choice2))';
    handles.plot_tag = plot(datenum(x,1,1), january);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
        'January Prices from ', choice1, ' to ', choice2));
elseif strcmp('February', m)
    february = project2Data(myStruct.febStarts(start:stop), c);
    x = (str2double(choice1):str2double(choice2))';
    
    handles.plot_tag = plot(datenum(x,1,1), february);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
        'February Prices from ', choice1, ' to ', choice2));
elseif strcmp('March', m)
    idx = myStruct.marStarts(start:stop);
    march = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    
    handles.plot_tag = plot(datenum(x,1,1), march);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
   set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
       'March Prices from ', choice1, ' to ', choice2));
elseif strcmp('April', m)
    idx = myStruct.aprStarts(start:stop);
    april = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    
    handles.plot_tag = plot(datenum(x,1,1), april);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
        'April Prices from ', choice1, ' to ', choice2));
elseif strcmp('May', m)
    idx = myStruct.mayStarts(start:stop);
    may = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    
    handles.plot_tag = plot(datenum(x,1,1), may);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
        'May Prices from ', choice1, ' to ', choice2));
elseif strcmp('June', m)
    idx = myStruct.junStarts(start:stop);
    june = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    
    handles.plot_tag = plot(datenum(x,1,1), june);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
        'June Prices from ', choice1, ' to ', choice2));
elseif strcmp('July', m)
    idx = myStruct.julStarts(start:stop);
    july = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    
    handles.plot_tag = plot(datenum(x,1,1), july);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
        'July Prices from ', choice1, ' to ', choice2));
elseif strcmp('August', m)
    idx = myStruct.augStarts(start:stop);
    august = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    
    handles.plot_tag = plot(datenum(x,1,1), august);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
        'August Prices from ', choice1, ' to ', choice2));
elseif strcmp('September', m)
    idx = myStruct.sepStarts(start:stop);
    september = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    
    handles.plot_tag = plot(datenum(x,1,1), september);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
        'September Prices from ', choice1, ' to ', choice2));
elseif strcmp('October', m)
    idx = myStruct.octStarts(start:stop);
    october = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    
    handles.plot_tag = plot(datenum(x,1,1), october);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
        'October Prices from ', choice1, ' to ', choice2));
elseif strcmp('November', m)
    idx = myStruct.novStarts(start:stop);
    november = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    
    handles.plot_tag = plot(datenum(x,1,1), november);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
        'November Prices from ', choice1, ' to ', choice2));
elseif strcmp('December', m)
    idx = myStruct.decStarts(start:stop);
    december = project2Data(idx(idx ~= 0), c);
    if min(idx) == 0
        x = (str2double(choice1) + 1:str2double(choice2))';
    else
        x = (str2double(choice1):str2double(choice2))';
    end
    
    handles.plot_tag = plot(datenum(x,1,1), december);
    dateFormat = 11;
    datetick('x',dateFormat);
    ylabel('Price');
    xlabel('Year');
    set(handles.title_tag, 'String', horzcat(getappdata(0,'choice'), '''s ', ...
        'December Prices from ', choice1, ' to ', choice2));
else
    fprintf('Error.\n');
end


% --- Outputs from this function are returned to the command line.
function varargout = monthPlot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
