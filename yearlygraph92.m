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

% Last Modified by GUIDE v2.5 15-Mar-2015 17:04:18

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

g = getappdata(0,'choice')
b = getappdata(0,'year1')
f = getappdata(0,'year2')

if strcmp(b,'1992')
    i=1;
    elseif strcmp(b,'1993')
    i=2;
    elseif strcmp(b,'1994')
    i=3;
    elseif strcmp(b,'1995')
    i=4;
    elseif strcmp(b,'1996')
    i=5;
    elseif strcmp(b,'1997')
    i=6;
    elseif strcmp(b,'1998')
    i=7;
    elseif strcmp(b,'1999')
    i=8;
    elseif strcmp(b,'2000')
    i=9;
    elseif strcmp(b,'2001')
    i=10;
    elseif strcmp(b,'2002')
    i=11;
    elseif strcmp(b,'2003')
    i=12;
    elseif strcmp(b,'2004')
    i=13;
    elseif strcmp(b,'2005')
    i=14;
    elseif strcmp(b,'2006')
    i=15;
    elseif strcmp(b,'2007')
    i=16;
    elseif strcmp(b,'2008')
    i=17;
    elseif strcmp(b,'2009')
    i=18;
    elseif strcmp(b,'2010')
    i=19;
    elseif strcmp(b,'2011')
    i=20;
    elseif strcmp(b,'2012')
    i=21;
    elseif strcmp(b,'2013')
    i=22;
    elseif strcmp(b,'2014')
    i=23;
    elseif strcmp(b,'2015')
    i=24;
end
    if strcmp (f,'1992')
    e=1;
    elseif strcmp (f,'1993')
    e=2;
    elseif strcmp (f,'1994')
    e=3;
    elseif strcmp (f,'1995')
    e=4;
    elseif strcmp (f,'1996')
    e=5;
    elseif strcmp (f,'1997')
    e=6;
    elseif strcmp (f,'1998')
    e=7;
    elseif strcmp (f,'1999')
    e=8;
    elseif strcmp (f,'2000')
    e=9;
    elseif strcmp (f,'2001')
    e=10;
    elseif strcmp (f,'2002')
    e=11;
    elseif strcmp (f,'2003')
    e=12;
    elseif strcmp (f,'2004')
    e=13;
    elseif strcmp (f,'2005')
    e=14;
    elseif strcmp (f,'2006')
    e=15;
    elseif strcmp (f,'2007')
    e=16;
    elseif strcmp (f,'2008')
    e=17;
    elseif strcmp (f,'2009')
    e=18;
    elseif strcmp (f,'2010')
    e=19;
    elseif strcmp (f,'2011')
    e=20;
    elseif strcmp (f,'2012')
    e=21;
    elseif strcmp (f,'2013')
    e=22;
    elseif strcmp (f,'2014')
    e=23;
    elseif strcmp (f,'2015')
    e=24;
    end      

    if strcmp(g,'allcom')
        
    newdata=allcom92_15(i:e);
    hi=length(newdata);
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       allcom92_15(2,2));
    
    elseif strcmp(g,'crudeoil')
    newdata=crudeoil92_15(i:e);
    hi=length(newdata);
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       crudeoil92_15(2,2));
   
    elseif strcmp(g,'gasindo')
    newdata=gasindonesia92_15(i:e);
    hi=length(newdata);
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       gasindonesia92_15(2,2));  
     end
    xlabel('Month');
    ylabel('Price ( price $ per lb.)') ;
% --- Outputs from this function are returned to the command line.
function varargout = yearlygraph_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
