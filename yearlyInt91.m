function varargout = yearlyInt91(varargin)
% YEARLYINT91 MATLAB code for yearlyInt91.fig
%      YEARLYINT91, by itself, creates a new YEARLYINT91 or raises the existing
%      singleton*.
%
%      H = YEARLYINT91 returns the handle to a new YEARLYINT91 or the handle to
%      the existing singleton*.
%
%      YEARLYINT91('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YEARLYINT91.M with the given input arguments.
%
%      YEARLYINT91('Property','Value',...) creates a new YEARLYINT91 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before yearlyInt91_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to yearlyInt91_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help yearlyInt91

% Last Modified by GUIDE v2.5 15-Mar-2015 14:07:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @yearlyInt91_OpeningFcn, ...
                   'gui_OutputFcn',  @yearlyInt91_OutputFcn, ...
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


% --- Executes just before yearlyInt91 is made visible.
function yearlyInt91_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to yearlyInt91 (see VARARGIN)

% Choose default command line output for yearlyInt91
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes yearlyInt91 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = yearlyInt91_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenuI.
function popupmenuI_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenuI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenuI contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuI
setappdata(0,'year1')


% --- Executes during object creation, after setting all properties.
function popupmenuI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenuI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenuF.
function popupmenuF_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenuF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenuF contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuF
setappdata(0,'year2')

% --- Executes during object creation, after setting all properties.
function popupmenuF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenuF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
yearlygraph91;