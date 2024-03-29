function varargout = chooseMonth(varargin)
% CHOOSEMONTH MATLAB code for chooseMonth.fig
%      CHOOSEMONTH, by itself, creates a new CHOOSEMONTH or raises the existing
%      singleton*.
%
%      H = CHOOSEMONTH returns the handle to a new CHOOSEMONTH or the handle to
%      the existing singleton*.
%
%      CHOOSEMONTH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHOOSEMONTH.M with the given input arguments.
%
%      CHOOSEMONTH('Property','Value',...) creates a new CHOOSEMONTH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before chooseMonth_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to chooseMonth_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help chooseMonth

% Last Modified by GUIDE v2.5 15-Mar-2015 14:04:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @chooseMonth_OpeningFcn, ...
                   'gui_OutputFcn',  @chooseMonth_OutputFcn, ...
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


% --- Executes just before chooseMonth is made visible.
function chooseMonth_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to chooseMonth (see VARARGIN)

% Choose default command line output for chooseMonth
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes chooseMonth wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.okaybutton, 'Visible', 'Off');

% --- Outputs from this function are returned to the command line.
function varargout = chooseMonth_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
contents = cellstr(get(hObject,'String'))
save = contents{get(hObject,'Value')}
setappdata(0, 'm', contents{get(hObject,'Value')});
if strcmp(save, '-Select a Month-')
    set(handles.okaybutton, 'Visible', 'Off'); 
elseif ~strcmp(save, '-Select a Month-')
    set(handles.okaybutton, 'Visible', 'On');
end

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in okaybutton.
function okaybutton_Callback(hObject, eventdata, handles)
% hObject    handle to okaybutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

chooseYear
