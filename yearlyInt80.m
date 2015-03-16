function varargout = yearlygraph(varargin)
% YEARLYGRAPH MATLAB code for yearlygraph.fig
%      YEARLYGRAPH, by itself, creates a new YEARLYGRAPH or raises the existing
%      singleton*.
%
%      H = YEARLYGRAPH returns the handle to a new YEARLYGRAPH or the handle to
%      the existing singleton*.
%
%      YEARLYGRAPH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YEARLYGRAPH.M with the given input arguments.
%
%      YEARLYGRAPH('Property','Value',...) creates a new YEARLYGRAPH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before yearlygraph_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to yearlygraph_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help yearlygraph

% Last Modified by GUIDE v2.5 15-Mar-2015 14:03:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @yearlygraph_OpeningFcn, ...
                   'gui_OutputFcn',  @yearlygraph_OutputFcn, ...
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


% --- Executes just before yearlygraph is made visible.
function yearlygraph_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to yearlygraph (see VARARGIN)

% Choose default command line output for yearlygraph
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes yearlygraph wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = yearlygraph_OutputFcn(hObject, eventdata, handles) 
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
yearlygraph;