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

g = getappdata(0,'choice');
b = getappdata(0,'year1');
f = getappdata(0,'year2');
if strcmp (b,'1980')
    i=1;
    elseif strcmp(b,'1981')
    i=2;
    elseif strcmp(b,'1982')
    i=3;
    elseif strcmp(b,'1983')
    i=4;
    elseif strcmp(b,'1984')
    i=5;
    elseif strcmp(b,'1985')
    i=6;
    elseif strcmp(b,'1986')
    i=7;
    elseif strcmp(b,'1987')
    i=8;
    elseif strcmp(b,'1988')
    i=9;
    elseif strcmp(b,'1989')
    i=10;
    elseif strcmp(b,'1990')
    i=11;
    elseif strcmp(b,'1991')
    i=12;
    elseif strcmp(b,'1992')
    i=13;
    elseif strcmp(b,'1993')
    i=14;
    elseif strcmp(b,'1994')
    i=15;
    elseif strcmp(b,'1995')
    i=16;
    elseif strcmp(b,'1996')
    i=17;
    elseif strcmp(b,'1997')
    i=18;
    elseif strcmp(b,'1998')
    i=19;
    elseif strcmp(b,'1999')
    i=20;
    elseif strcmp(b,'2000')
    i=21;
    elseif strcmp(b,'2001')
    i=22;
    elseif strcmp(b,'2002')
    i=23;
    elseif strcmp(b,'2003')
    i=24;
    elseif strcmp(b,'2004')
    i=25;
    elseif strcmp(b,'2005')
    i=26;
    elseif strcmp(b,'2006')
    i=27;
    elseif strcmp(b,'2007')
    i=28;
    elseif strcmp(b,'2008')
    i=29;
    elseif strcmp(b,'2009')
    i=30;
    elseif strcmp(b,'2010')
    i=31;
    elseif strcmp(b,'2011')
    i=32;
    elseif strcmp(b,'2012')
    i=33;
    elseif strcmp(b,'2013')
    i=34;
    elseif strcmp(b,'2014')
    i=35;
    elseif strcmp(b,'2015')
    i=36;
end
    if strcmp (f,'1980')
    e=1;
    elseif strcmp (f,'1981')
    e=2;
    elseif strcmp (f,'1982')
    e=3;
    elseif strcmp (f,'1983')
    e=4;
    elseif strcmp (f,'1984')
    e=5;
    elseif strcmp (f,'1985')
    e=6;
    elseif strcmp (f,'1986')
    e=7;
    elseif strcmp (f,'1987')
    e=8;
    elseif strcmp (f,'1988')
    e=9;
    elseif strcmp (f,'1989')
    e=10;
    elseif strcmp (f,'1990')
    e=11;
    elseif strcmp (f,'1991')
    e=12;
    elseif strcmp (f,'1992')
    e=13;
    elseif strcmp (f,'1993')
    e=14;
    elseif strcmp (f,'1994')
    e=15;
    elseif strcmp (f,'1995')
    e=16;
    elseif strcmp (f,'1996')
    e=17;
    elseif strcmp (f,'1997')
    e=18;
    elseif strcmp (f,'1998')
    e=19;
    elseif strcmp (f,'1999')
    e=20;
    elseif strcmp (f,'2000')
    e=21;
    elseif strcmp (f,'2001')
    e=22;
    elseif strcmp (f,'2002')
    e=23;
    elseif strcmp (f,'2003')
    e=24;
    elseif strcmp (f,'2004')
    e=25;
    elseif strcmp (f,'2005')
    e=26;
    elseif strcmp (f,'2006')
    e=27;
    elseif strcmp (f,'2007')
    e=28;
    elseif strcmp (f,'2008')
    e=29;
    elseif strcmp (f,'2009')
    e=30;
    elseif strcmp (f,'2010')
    e=31;
    elseif strcmp (f,'2011')
    e=32;
    elseif strcmp (f,'2012')
    e=33;
    elseif strcmp (f,'2013')
    e=34;
    elseif strcmp (f,'2014')
    e=35;
    elseif strcmp (f,'2015')
    e=36;
    end      
   
    if strcmp(g,'bev')
     newdata=beverage80_15(i:e);
    hi=length(newdata);
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       beverage80_15(2,2));
   
    elseif strcmp(g,'ARM')
      newdata=ARM80_15(i:e);
    hi=length(newdata);
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       ARM80_15(2,2));
   
    elseif strcmp(g,'metals')
     newdata=metals80_15(i:e);
    hi=length(newdata);
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
        metals80_15(2,2));
   
    elseif strcmp(g,'energyfuel')
     newdata=fuel80_15(i:e);
    hi=length(newdata);
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       fuel80_15(2,2));
   
    elseif strcmp(g,'aluminum')
     newdata=alum80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       alum80_15(2,2));
   
    elseif strcmp(g,'hides')
     newdata=hides80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       hides80_15(2,2));
   
    elseif strcmp(g,'coffeearab')
     newdata=coffeeA80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       coffeeA80_15(2,2));
   
    elseif strcmp(g,'banana')
        newdata=banan80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       banan80_15(2,2));
   
    elseif strcmp(g,'barley')
      newdata=barley80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       barley80_15(2,2));
   
    elseif strcmp(g,'beef')
      newdata=beef80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       beef80_15(2,2));
   
    elseif strcmp(g,'coal')
       newdata=coal80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       coal80_15(2,2));
   
    elseif strcmp(g,'cocoa')
       newdata=cocoaBeans80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       cocoaBeans80_15(2,2));
   
    elseif strcmp(g,'rapeseed')
         newdata=rapeseed80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       rapeseed80_15(2,2));
   
    elseif strcmp(g,'copper')
      newdata=Cu80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       Cu80_15(2,2));
   
    elseif strcmp(g,'cotton')
       newdata=Cotton80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       Cotton80_15(2,2));
   
    elseif strcmp(g,'fishmeal')
         newdata=fishmeal80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       fishmeal80_15(2,2));
   
    elseif strcmp(g,'nuts')
       newdata=nuts80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       nuts80_15(2,2));
   
    elseif strcmp(g,'coffeerob')
       newdata=coffeeR80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       coffeeR80_15(2,2));
   
    elseif strcmp(g,'maize')
       newdata=Maize80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       Maize80_15(2,2));
   
    elseif strcmp(g,'hardlogs')
         newdata=hardlogs80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       hardlogs80_15(2,2));
   
    elseif strcmp(g,'softlogs')
      newdata=softlogs80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       softlogs80_15(2,2));
   
    elseif strcmp(g,'lead')
         newdata=lead80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       lead80_15(2,2));
   
    elseif strcmp(g,'lamb')
       newdata=lamb80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       lamb80_15(2,2));
   
    elseif strcmp(g,'china')
         newdata=chinaIm80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       chinaIm80_15(2,2));
   
     elseif strcmp(g,'nickel')
     newdata=nickel80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       nickel80_15(2,2));
   
     elseif strcmp(g,'crudeavg')
     newdata=crudeoilaverage80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       crudeoilavg80_15(2,2));
   
     elseif strcmp(g,'crudeuk')
     newdata=crudeoiluk80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       crudeoiluk80_15(2,2));
   
     elseif strcmp(g,'oildubai')
     newdata=oildubai80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       oildubai80_15(2,2));
   
     elseif strcmp(g,'crudeint')
     newdata=crudeoilint80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       crudeoilint80_15(2,2));
   
     elseif strcmp(g,'oliveoil')
     newdata=oliveoil80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       oliveoil80_15(2,2));
   
     elseif strcmp(g,'orange')
     newdata=allcom80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       allcom80_15(2,2));
   
     elseif strcmp(g,'palmoil')
     newdata=palmoil80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       palmoil80_15(2,2));
   
     elseif strcmp(g,'pork')
     newdata=pork80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       pork80_15(2,2));
   
     elseif strcmp(g,'chicken')
     newdata=chicken80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       chicken80_15(2,2));
   
     elseif strcmp(g,'rubber')
     newdata=rubber80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       rubber80_15(2,2));
   
     elseif strcmp(g,'salmon')
     newdata=fishsal80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       fishsal80_15(2,2));
   
     elseif strcmp(g,'hardwood')
     newdata=hardwood80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       hardwood80_15(2,2));
   
     elseif strcmp(g,'softwood')
     newdata=softwood80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       softwood80_15(2,2));
   
     elseif strcmp(g,'shrimp')
     newdata=shrimp80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       shrimp80_15(2,2));
   
     elseif strcmp(g,'soymeal')
     newdata=soymeal80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       soymeal80_15(2,2));
   
     elseif strcmp(g,'soyoil')
     newdata=soyoil80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       soyoil80_15(2,2));
   
     elseif strcmp(g,'sugafree')  
     newdata=sugarfree80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       sugarfree80_15(2,2)); 
   
     elseif strcmp(g, 'soyus')   
      newdata=soyUS80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       soyUS80_15(2,2));
   
     elseif strcmp(g,'sugarus')
       newdata=sugarUS80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       sugarUS80_15(2,2));
   
     elseif strcmp(g, 'sunflower')
       newdata=sunflower80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       sunflower80_15(2,2));
   
     elseif strcmp(g,'tea')
        newdata=Tea80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       Tea80_15(2,2));
   
     elseif strcmp(g,'tin')
      newdata=tin80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       tin80_15(2,2));
   
     elseif strcmp(g,'uranium')
      newdata=uranium80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       uranium80_15(2,2));
   
     elseif strcmp(g,'wheat')
       newdata=wheat80_15(i:e)
    hi=length(newdata)
    plot(1:hi,newdata,'r-')
    set(gca,'Xtick',1:hi)
    set(handles.title2, 'String', ...
       wheat80_15(2,2));
   
     elseif strcmp(g,'woolcoarse')
     newdata=woolcoarse80_15(i:e)
     hi=length(newdata)
     plot(1:hi,newdata,'r-')
     set(gca,'Xtick',1:hi)
     set(handles.title2, 'String', ...
       woolcoarse80_15(2,2));
   
     elseif strcmp(g,'woolfine')
        newdata=woolfine80_15(i:e)
        hi=length(newdata)
        plot(1:hi,newdata,'r-')
        set(gca,'Xtick',1:hi)
        set(handles.title2, 'String', ...
        woolfine80_15(2,2));
   
     elseif strcmp(g,'zinc')
     newdata=zinc80_15(i:e)
     hi=length(newdata)
     plot(1:hi,newdata,'r-')
     set(gca,'Xtick',1:hi)
     set(handles.title2, 'String', ...
       zinc80_15(2,2));
   
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
