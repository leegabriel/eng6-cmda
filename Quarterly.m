function varargout = Quarterly(varargin)
% QUARTERLY MATLAB code for Quarterly.fig
%      QUARTERLY, by itself, creates a new QUARTERLY or raises the existing
%      singleton*.
%
%      H = QUARTERLY returns the handle to a new QUARTERLY or the handle to
%      the existing singleton*.
%
%      QUARTERLY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUARTERLY.M with the given input arguments.
%
%      QUARTERLY('Property','Value',...) creates a new QUARTERLY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Quarterly_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Quarterly_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Quarterly

% Last Modified by GUIDE v2.5 12-Mar-2015 17:24:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Quarterly_OpeningFcn, ...
                   'gui_OutputFcn',  @Quarterly_OutputFcn, ...
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


% --- Executes just before Quarterly is made visible.
function Quarterly_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Quarterly (see VARARGIN)

% Choose default command line output for Quarterly
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Quarterly wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Quarterly_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in JanThruMarch_PushButton.
function JanThruMarch_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to JanThruMarch_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

yearInterval

% --- Executes on button press in JulThruSept_PushButton.
function JulThruSept_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to JulThruSept_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

yearInterval

% --- Executes on button press in AprilThruJune_PushButton.
function AprilThruJune_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to AprilThruJune_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

yearInterval

% --- Executes on button press in OctThruDec_PushButton.
function OctThruDec_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to OctThruDec_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

yearInterval
