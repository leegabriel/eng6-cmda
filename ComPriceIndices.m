function varargout = ComPriceIndices(varargin)
% COMPRICEINDICES MATLAB code for ComPriceIndices.fig
%      COMPRICEINDICES, by itself, creates a new COMPRICEINDICES or raises the existing
%      singleton*.
%
%      H = COMPRICEINDICES returns the handle to a new COMPRICEINDICES or the handle to
%      the existing singleton*.
%
%      COMPRICEINDICES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMPRICEINDICES.M with the given input arguments.
%
%      COMPRICEINDICES('Property','Value',...) creates a new COMPRICEINDICES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ComPriceIndices_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ComPriceIndices_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ComPriceIndices

% Last Modified by GUIDE v2.5 09-Mar-2015 17:45:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ComPriceIndices_OpeningFcn, ...
                   'gui_OutputFcn',  @ComPriceIndices_OutputFcn, ...
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


% --- Executes just before ComPriceIndices is made visible.
function ComPriceIndices_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ComPriceIndices (see VARARGIN)

% Choose default command line output for ComPriceIndices
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ComPriceIndices wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ComPriceIndices_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in AllComPrice_PushButton.
function AllComPrice_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to AllComPrice_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

graphType
fprintf('Data available from 1992 - 2015. \n')


% --- Executes on button press in NonFuelPrice_PushButton.
function NonFuelPrice_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to NonFuelPrice_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
graphType
fprintf('Data available from 1991 - 2015. \n')

% --- Executes on button press in FoodAndBeverage_PushButton.
function FoodAndBeverage_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to FoodAndBeverage_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
graphType
fprintf('Data available from 1991 - 2015. \n')

% --- Executes on button press in Food_PushButton.
function Food_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Food_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
graphType
fprintf('Data available from 1991 - 2015. \n')

% --- Executes on button press in Beverage_PushButton.
function Beverage_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Beverage_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Industrial_PushButton.
function Industrial_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Industrial_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Agricultural_PushButton.
function Agricultural_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Agricultural_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Metals_PushButton.
function Metals_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Metals_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Fuel_PushButton.
function Fuel_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Fuel_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
graphType
fprintf('Data available from 1992 - 2015. \n')

% --- Executes on button press in CrudeOil_PushButton.
function CrudeOil_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to CrudeOil_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
graphType
fprintf('Data available from 1980 - 2015. \n')
