function varargout = yearInterval(varargin)
% YEARINTERVInput Start YearAL MATLAB code for yearInterval.fig
%      YEARINTERVAL, by itself, creates a new YEARINTERVAL or raises the existing
%      singleton*.
%
%      H = YEARINTERVAL returns the handle to a new YEARINTERVAL or the handle to
%      the existing singleton*.
%
%      YEARINTERVAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YEARINTERVAL.M with the given input arguments.
%
%      YEARINTERVAL('Property','Value',...) creates a new YEARINTERVAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before yearInterval_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to yearInterval_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help yearInterval

% Last Modified by GUIDE v2.5 15-Mar-2015 14:02:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @yearInterval_OpeningFcn, ...
                   'gui_OutputFcn',  @yearInterval_OutputFcn, ...
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


% --- Executes just before yearInterval is made visible.
function yearInterval_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to yearInterval (see VARARGIN)

% Choose default command line output for yearInterval
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes yearInterval wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = yearInterval_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in YearBegin_PopUpMenu.
function YearBegin_PopUpMenu_Callback(hObject, eventdata, handles)
% hObject    handle to YearBegin_PopUpMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns YearBegin_PopUpMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from YearBegin_PopUpMenu


% --- Executes during object creation, after setting all properties.
function YearBegin_PopUpMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YearBegin_PopUpMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in YearEnd_PopUpMenue.
function YearEnd_PopUpMenue_Callback(hObject, eventdata, handles)
% hObject    handle to YearEnd_PopUpMenue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns YearEnd_PopUpMenue contents as cell array
%        contents{get(hObject,'Value')} returns selected item from YearEnd_PopUpMenue




% --- Executes during object creation, after setting all properties.
function YearEnd_PopUpMenue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YearEnd_PopUpMenue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function startYear_editText_Callback(hObject, eventdata, handles)
% hObject    handle to startYear_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startYear_editText as text
%        str2double(get(hObject,'String')) returns contents of startYear_editText as a double

startYear = str2num(get(hObject,'String'))
load('projectData')



if (startYear == 1981)
    projectData(13:24,6)
end


% --- Executes during object creation, after setting all properties.
function startYear_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startYear_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function endYear_editText_Callback(hObject, eventdata, handles)
% hObject    handle to endYear_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of endYear_editText as text
%        str2double(get(hObject,'String')) returns contents of endYear_editText as a double
endYear = str2num(get(hObject,'String'))
a = get(handles.startYear_editText,'String')

load('projectData.mat')

if (a == 1980)&(endYear == 1981)
    projectData(1:12,6)
end 



% --- Executes during object creation, after setting all properties.
function endYear_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to endYear_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






% --- Executes on button press in okaybutton.
function okaybutton_Callback(hObject, eventdata, handles)
% hObject    handle to okaybutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
