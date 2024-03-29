function varargout = IndivComPrices(varargin)
% INDIVCOMPRICES MATLAB code for IndivComPrices.fig
%      INDIVCOMPRICES, by itself, creates a new INDIVCOMPRICES or raises the existing
%      singleton*.
%
%      H = INDIVCOMPRICES returns the handle to a new INDIVCOMPRICES or the handle to
%      the existing singleton*.
%
%      INDIVCOMPRICES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INDIVCOMPRICES.M with the given input arguments.
%
%      INDIVCOMPRICES('Property','Value',...) creates a new INDIVCOMPRICES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before IndivComPrices_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to IndivComPrices_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help IndivComPrices

% Last Modified by GUIDE v2.5 15-Mar-2015 19:25:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IndivComPrices_OpeningFcn, ...
                   'gui_OutputFcn',  @IndivComPrices_OutputFcn, ...
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


% --- Executes just before IndivComPrices is made visible.
function IndivComPrices_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to IndivComPrices (see VARARGIN)

% Choose default command line output for IndivComPrices
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes IndivComPrices wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = IndivComPrices_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Aluminum_PushButton.
function Aluminum_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Aluminum_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'aluminum')
graphAndPredict;
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Hides_PushButton.
function Hides_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Hides_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'hides')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in CoffeeArabicas_PushButton.
function CoffeeArabicas_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to CoffeeArabicas_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'coffeearab')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in NaturalGas_pushButton.
function NaturalGas_pushButton_Callback(~, eventdata, handles)
% hObject    handle to NaturalGas_pushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'gasrussia')
graphType
fprintf('Data available from 1985 - 2015. \n')

% --- Executes on button press in Bananas_PushButton.
function Bananas_PushButton_Callback(hObject, eventdata, ~)
% hObject    handle to Bananas_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'banana')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Barley_PushButton.
function Barley_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Barley_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'barley')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Beef_PushButton.
function Beef_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Beef_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'beef')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in coalAustralia_PushButton.
function coalAustralia_PushButton_Callback(~, eventdata, handles)
% hObject    handle to coalAustralia_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'coal')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in CocoaBeans_PushButton.
function CocoaBeans_PushButton_Callback(hObject, eventdata, ~)
% hObject    handle to CocoaBeans_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'cocoa')
graphAndPredict;
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Rapseed_pushButton.
function Rapseed_pushButton_Callback(~, eventdata, handles)
% hObject    handle to Rapseed_pushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'rapeseed')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Copper_PushButton.
function Copper_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Copper_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'copper')
graphAndPredict;
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Cotton_PushButton.
function Cotton_PushButton_Callback(~, eventdata, handles)
% hObject    handle to Cotton_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'cotton')
graphAndPredict;
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Fishmeal_PushButton.
function Fishmeal_PushButton_Callback(~, eventdata, handles)
% hObject    handle to Fishmeal_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'fishmeal')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Groundnuts_PushButton.
function Groundnuts_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Groundnuts_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'nuts')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in CoffeeRobusta_PushButton.
function CoffeeRobusta_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to CoffeeRobusta_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'coffeerob')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Maize_PushButton.
function Maize_PushButton_Callback(~, eventdata, handles)
% hObject    handle to Maize_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'maize')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in HardLogos_PushButton.
function HardLogos_PushButton_Callback(~, eventdata, handles)
% hObject    handle to HardLogos_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'hardlogs')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in SoftLogos_PushButton.
function SoftLogos_PushButton_Callback(~, eventdata, handles)
% hObject    handle to SoftLogos_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'softlogs')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Lead_PushButton.
function Lead_PushButton_Callback(hObject, eventdata, ~)
% hObject    handle to Lead_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'lead')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Lamb_PushButton.
function Lamb_PushButton_Callback(~, ~, handles)
% hObject    handle to Lamb_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'lamb')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in ChinaImport_PushButton.
function ChinaImport_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to ChinaImport_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'china')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in NatGasIndonesia_PushButton.
function NatGasIndonesia_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to NatGasIndonesia_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'gasindo')
graphType
fprintf('Data available from 1992 - 2015. \n')

% --- Executes on button press in Nickel_PushButton.
function Nickel_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Nickel_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'nickel')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in CrudeOilAverage_PushButton.
function CrudeOilAverage_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to CrudeOilAverage_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'crudeavg')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in CrudeOilUK_PushButton.
function CrudeOilUK_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to CrudeOilUK_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'crudeuk')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in OilDubai_PushButton.
function OilDubai_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to OilDubai_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'oildubai')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in CrudeOilIntermediate_PushButton.
function CrudeOilIntermediate_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to CrudeOilIntermediate_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'crudeint')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in OliveOil_PushButton.
function OliveOil_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to OliveOil_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'oliveoil')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in OrangesMisc_PushButton.
function OrangesMisc_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to OrangesMisc_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'orange')
graphType
fprintf('Data available from 1980 - 2015. \n')
% --- Executes on button press in NatGasLouisiana_PushButton.
function NatGasLouisiana_PushButton_Callback(~, eventdata, handles)
% hObject    handle to NatGasLouisiana_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'gaslouis')
graphType
fprintf('Data available from 1991 - 2015. \n')

% --- Executes on button press in PalmOil_PushButton.
function PalmOil_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to PalmOil_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'palmoil')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Swine_PushButton.
function Swine_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Swine_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'pork')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Poultry_PushButton.
function Poultry_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Poultry_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'chicken')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Rubber_PushButton.
function Rubber_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Rubber_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'rubber')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Fish_PushButton.
function Fish_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Fish_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'salmon')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in HardSawnwood_PushButton.
function HardSawnwood_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to HardSawnwood_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'hardwood')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in SoftSawnwood_PushButton.
function SoftSawnwood_PushButton_Callback(~, eventdata, handles)
% hObject    handle to SoftSawnwood_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'softwood')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Shrimp_PushButton.
function Shrimp_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Shrimp_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'shrimp')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in SoybeanMeal_PushButton.
function SoybeanMeal_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to SoybeanMeal_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'soymeal')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in SoybeanOil_PushButton.
function SoybeanOil_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to SoybeanOil_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'soyoil')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in pushbutton4SugarFreeMarket_PushButton.
function pushbutton4SugarFreeMarket_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4SugarFreeMarket_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'sugafree')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in SugarEurope_PushButton.
function SugarEurope_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to SugarEurope_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'sugareuro')
graphType
fprintf('Data available from 1991 - 2015. \n')

% --- Executes on button press in SoybeansUS_PushButton.
function SoybeansUS_PushButton_Callback(~, eventdata, handles)
% hObject    handle to SoybeansUS_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'soyus')
graphType

% --- Executes on button press in SugarUSPushButton.
function SugarUSPushButton_Callback(hObject, eventdata, handles)
% hObject    handle to SugarUSPushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'sugarus')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in SunflowerOil_PushButton.
function SunflowerOil_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to SunflowerOil_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'sunflower')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Tea_PushButton.
function Tea_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Tea_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'tea')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Tin_PushButton.
function Tin_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Tin_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'tin')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Uranium_PushButton.
function Uranium_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Uranium_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'uranium')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Wheat_PushButton.
function Wheat_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Wheat_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'wheat')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in WoolCoarse_PushButton.
function WoolCoarse_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to WoolCoarse_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'woolcoarse')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in WoolFine_PushButton.
function WoolFine_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to WoolFine_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'woolfine')
graphType
fprintf('Data available from 1980 - 2015. \n')

% --- Executes on button press in Zinc_PushButton.
function Zinc_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Zinc_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0, 'choice', 'zinc')
graphType
fprintf('Data available from 1980 - 2015. \n')


% --- Executes on button press in pushbutton54.
function pushbutton54_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in rice.
function rice_Callback(hObject, eventdata, handles)
% hObject    handle to rice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

setappdata(0, 'choice', 'rice')
graphType
fprintf('Data available from 1980 - 2015. \n')
