function varargout = Monthlist2(varargin)
% MONTHLIST2 MATLAB code for Monthlist2.fig
%      MONTHLIST2, by itself, creates a new MONTHLIST2 or raises the existing
%      singleton*.
%
%      H = MONTHLIST2 returns the handle to a new MONTHLIST2 or the handle to
%      the existing singleton*.
%
%      MONTHLIST2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MONTHLIST2.M with the given input arguments.
%
%      MONTHLIST2('Property','Value',...) creates a new MONTHLIST2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Monthlist2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Monthlist2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Monthlist2

% Last Modified by GUIDE v2.5 13-Mar-2015 01:35:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Monthlist2_OpeningFcn, ...
                   'gui_OutputFcn',  @Monthlist2_OutputFcn, ...
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


% --- Executes just before Monthlist2 is made visible.
function Monthlist2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Monthlist2 (see VARARGIN)

% Choose default command line output for Monthlist2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Monthlist2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Monthlist2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Jan_PushButton.
function Jan_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Jan_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
janYearlyc=projectData(137:12:422,1);


axes(handles.axes1)
b = length(janYearlyc);
c=1:b;
plot(c,janYearlyc,'k')
title('Non-Fuel Price Index, Month: January, Years: 1991 - 2015', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:25, 'XTickLabel',{'1991','1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2009','2010','2011','2012','2013', ...
    '2014','2015'})
xticklabel_rotate
    


% --- Executes on button press in May_PushButton.
function May_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to May_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')

mayYearlyc=projectData(141:12:422,2);
axes(handles.axes1)
c = length(mayYearlyc);
c=1:c;

plot(c,mayYearlyc,'k')
title('Non-Fuel Price Index, Month: May, Years: 1991 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in Sept_PushButton.
function Sept_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Sept_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
sepYearlyc=projectData(145:12:422,2);
c = length(sepYearlyc);
c=1:c;

plot(c,sepYearlyc,'k')
title('Non-Fuel Price Index, Month: September, Years: 1991 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate

% --- Executes on button press in Oct_PushButton.
function Oct_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Oct_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
octYearlyc=projectData(146:12:422,2);
c = length(octYearlyc);
c=1:c;

plot(c,octYearlyc,'k')
title('Non-Fuel Price Index, Month: October, Years: 1991 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate

% --- Executes on button press in June_PushButton.
function June_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to June_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
junYearlyc=projectData(142:12:422,2);
c = length(junYearlyc);
c=1:c;

plot(c,junYearlyc,'k')
title('Non-Fuel Price Index, Month: June, Years: 1991 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in Feb_PUshButton.
function Feb_PUshButton_Callback(hObject, eventdata, handles)
% hObject    handle to Feb_PUshButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
febYearlyc=projectData(138:12:422,2);
c = length(febYearlyc);
c=1:c;

plot(c,febYearlyc,'k')
title('Non-Fuel Price Indexing, Month: February, Years: 1991 - 2015', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in Nov_PushButton.
function Nov_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Nov_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
NovYearlyc=projectData(147:12:422,2);
c = length(NovYearlyc);
c=1:c;

plot(c,NovYearlyc,'k')
title('Non-Fuel Price Index, Month: November, Years: 1991 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in July_PushButton.
function July_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to July_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
julYearlyc=projectData(143:12:422,2);
c = length(julYearlyc);
c=1:c;

plot(c,julYearlyc,'k')
title('Non-Fuel Price Index, Month: July, Years: 1991 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in March_PushButton.
function March_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to March_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
marYearlyc=projectData(139:12:422,2);
c = length(marYearlyc);
c=1:c;

plot(c,marYearlyc,'k')
title('Non-Fuel Price Index, Month: March, Years: 1991 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in Dec_PushButton.
function Dec_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Dec_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
DecYearlyc=projectData(148:12:422,2);
c = length(DecYearlyc);
c=1:c;

plot(c,DecYearlyc,'k')
title('Non-Fuel Price Index, Month: December, Years: 1991 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in Aug_PushButton.
function Aug_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Aug_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
augYearlyc=projectData(144:12:422,2);
c = length(augYearlyc);
c=1:c;

plot(c,augYearlyc,'k')
title('Non-Fuel Price Index, Month: August, Years: 1991 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
% --- Executes on button press in April_PushButton.
function April_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to April_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('projectData.mat')
aprYearlyc=projectData(140:12:422,2);
c = length(aprYearlyc);
c=1:c;

plot(c,aprYearlyc,'k')
title('Non-Fuel Price Index, Month: April, Years: 1991 - 2014', ...
    'FontSize',15)
xlabel('Years','FontSize',15)
ylabel('Index Number', 'FontSize', 15)

set(gca,'XTick', 1:24, 'XTickLabel',{'1992','1993','1994','1995','1996', ...
    '1997','1998','1999','2000','2001','2002','2003','2004','2005', ...
    '2006','2007','2008','2008','2009','2010','2011','2012','2013', ...
    '2014'})
xticklabel_rotate
