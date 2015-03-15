function varargout = chooseYear(varargin)
% CHOOSEYEAR MATLAB code for chooseYear.fig
%      CHOOSEYEAR, by itself, creates a new CHOOSEYEAR or raises the existing
%      singleton*.
%
%      H = CHOOSEYEAR returns the handle to a new CHOOSEYEAR or the handle to
%      the existing singleton*.
%
%      CHOOSEYEAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHOOSEYEAR.M with the given input arguments.
%
%      CHOOSEYEAR('Property','Value',...) creates a new CHOOSEYEAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before chooseYear_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to chooseYear_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help chooseYear

% Last Modified by GUIDE v2.5 15-Mar-2015 14:14:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @chooseYear_OpeningFcn, ...
                   'gui_OutputFcn',  @chooseYear_OutputFcn, ...
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


% --- Executes just before chooseYear is made visible.
function chooseYear_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to chooseYear (see VARARGIN)

% Choose default command line output for chooseYear
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes chooseYear wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.okaybutton, 'Visible', 'Off');

% --- Outputs from this function are returned to the command line.
function varargout = chooseYear_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in okaybutton.
function okaybutton_Callback(hObject, eventdata, handles)
% hObject    handle to okaybutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if strcmp(graph, 'specific')
   
elseif strcmp(graph, 'monthly')
    month
elseif strcmp(graph, 'quarterly')
elseif strcmp(graph, 'yearly')
else
    fprintf('Error. We do not have that graph type.\n');
end

% --- Executes on selection change in from.
function from_Callback(hObject, eventdata, handles)
% hObject    handle to from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns from contents as cell array
%        contents{get(hObject,'Value')} returns selected item from from
contents = cellstr(get(hObject,'String'))
save1 = contents{get(hObject,'Value')}
setappdata(0, 'choice1', contents{get(hObject,'Value')});

if str2double(save2) <= str2double(save1)
    set(handles.okaybutton, 'Visible', 'Off');
else
    set(handles.okaybutton, 'Visible', 'On');
end
% --- Executes during object creation, after setting all properties.
function from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in to.
function to_Callback(hObject, eventdata, handles)
% hObject    handle to to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns to contents as cell array
%        contents{get(hObject,'Value')} returns selected item from to
contents = cellstr(get(hObject,'String'))
setappdata(0, 'choice2', contents{get(hObject,'Value')});
save2 = contents{get(hObject,'Value')}
if strcmp(save2, '-Select a Year-')
    set(handles.okaybutton, 'Visible', 'Off'); 
elseif ~strcmp(save2, '-Select a Year-')
    set(handles.okaybutton, 'Visible', 'On');
end

if str2double(save2) <= str2double(save1)
    set(handles.okaybutton, 'Visible', 'Off');
else
    set(handles.okaybutton, 'Visible', 'On');
end
% --- Executes during object creation, after setting all properties.
function to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
