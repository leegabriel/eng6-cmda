function varargout = P2(varargin)
% P2 MATLAB code for P2.fig
%      P2, by itself, creates a new P2 or raises the existing
%      singleton*.
%
%      H = P2 returns the handle to a new P2 or the handle to
%      the existing singleton*.
%
%      P2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in P2.M with the given input arguments.
%
%      P2('Property','Value',...) creates a new P2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before P2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to P2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help P2

% Last Modified by GUIDE v2.5 09-Mar-2015 18:36:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @P2_OpeningFcn, ...
                   'gui_OutputFcn',  @P2_OutputFcn, ...
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


% --- Executes just before P2 is made visible.
function P2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to P2 (see VARARGIN)

% Choose default command line output for P2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes P2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = P2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in ComPrice_PushButton.
function ComPrice_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to ComPrice_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ComPriceIndices



% --- Executes on button press in IndivComPrice_PushButton.
function IndivComPrice_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to IndivComPrice_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

IndivComPrices
