function varargout = graphAndPredict(varargin)
% GRAPHANDPREDICT MATLAB code for graphAndPredict.fig
%      GRAPHANDPREDICT, by itself, creates a new GRAPHANDPREDICT or raises the existing
%      singleton*.
%
%      H = GRAPHANDPREDICT returns the handle to a new GRAPHANDPREDICT or the handle to
%      the existing singleton*.
%
%      GRAPHANDPREDICT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAPHANDPREDICT.M with the given input arguments.
%
%      GRAPHANDPREDICT('Property','Value',...) creates a new GRAPHANDPREDICT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before graphAndPredict_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to graphAndPredict_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help graphAndPredict

% Last Modified by GUIDE v2.5 15-Mar-2015 13:42:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @graphAndPredict_OpeningFcn, ...
                   'gui_OutputFcn',  @graphAndPredict_OutputFcn, ...
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


% --- Executes just before graphAndPredict is made visible.
function graphAndPredict_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to graphAndPredict (see VARARGIN)
% Choose default command line output for graphAndPredict
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes graphAndPredict wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = graphAndPredict_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in PBPredict.
function PBPredict_Callback(hObject, eventdata, handles)
% hObject    handle to PBPredict (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Predict;

% --- Executes on button press in PBspecific.
function PBspecific_Callback(hObject, eventdata, handles)
% hObject    handle to PBspecific (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'graph', 'specific');

% --- Executes on button press in PBquarterly.
function PBquarterly_Callback(hObject, eventdata, handles)
% hObject    handle to PBquarterly (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'graph', 'quarterly');

% --- Executes on button press in PBmonthly.
function PBmonthly_Callback(hObject, eventdata, handles)
% hObject    handle to PBmonthly (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'graph', 'monthly');
chooseMonth

% --- Executes on button press in PByearly.
function PByearly_Callback(hObject, eventdata, handles)
% hObject    handle to PByearly (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'graph', 'yearly');
