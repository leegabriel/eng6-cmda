function varargout = Monthlist(varargin)
% MONTHLIST MATLAB code for Monthlist.fig
%      MONTHLIST, by itself, creates a new MONTHLIST or raises the existing
%      singleton*.
%
%      H = MONTHLIST returns the handle to a new MONTHLIST or the handle to
%      the existing singleton*.
%
%      MONTHLIST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MONTHLIST.M with the given input arguments.
%
%      MONTHLIST('Property','Value',...) creates a new MONTHLIST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Monthlist_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Monthlist_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Monthlist

% Last Modified by GUIDE v2.5 13-Mar-2015 00:40:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Monthlist_OpeningFcn, ...
                   'gui_OutputFcn',  @Monthlist_OutputFcn, ...
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


% --- Executes just before Monthlist is made visible.
function Monthlist_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Monthlist (see VARARGIN)

% Choose default command line output for Monthlist
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Monthlist wait for user response (see UIRESUME)
% uiwait(handles.figure1);

load project2Data



% --- Outputs from this function are returned to the command line.
function varargout = Monthlist_OutputFcn(hObject, eventdata, handles) 
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
load('project2Data.mat')
c = getappdata(0, 'choice');

if strcmp('allcom',c)
    janYearlyb=project2Data(149:12:422,1);
    b = length(janYearlyb);
    b = 1:b;
    
    plot(b, janYearlyb,'k')
    title('All Commodity Price Index, Month: Jan, Years: 1992 - 2015', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    janYearlyc=project2Data(137:12:422,2);
    c1 = length(janYearlyc);
    c1 = 1:c1;
    
    plot(c1, janYearlyc ,'k')
    title('Non-Fuel Price Index, Month: Jan, Years: 1991 - 2015', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    janYearlyd=project2Data(137:12:422,3);
    d = length(janYearlyd);
    d = 1:d;
    
    plot(d, janYearlyd ,'k')
    title('Food and Beverage Price Index, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    janYearlye=project2Data(137:12:422,4);
    e = length(janYearlye);
    e = 1:e;
    
    plot(e, janYearlye ,'k')
    title('Food Price Index, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    janYearlyf=project2Data(1:12:422,5);
    f = length(janYearlyf);
    f = 1:f;
    
    plot(f, janYearlyf ,'k')
    title('Beverage Price Index, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    janYearlyg=project2Data(1:12:422,6);
    g = length(janYearlyg);
    g = 1:g;
    
    plot(g, janYearlyg ,'k')
    title('Industrial Inputs Price, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    janYearlyh=project2Data(1:12:422,7);
    h = length(janYearlyh);
    h = 1:h;
    
    plot(h, janYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    janYearlyi=project2Data(1:12:422,8);
    i = length(janYearlyi);
    i = 1:i;
    
    plot(i, janYearlyi ,'k')
    title('Metals Price Index, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    janYearlyj=project2Data(149:12:422,9);
    j = length(janYearlyj);
    j = 1:j;
    
    plot(j, janYearlyj ,'k')
    title('Fuel (energy) Index, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    janYearlyk=project2Data(1:12:422,10);
    k = length(janYearlyk);
    k = 1:k;
    
    plot(k, janYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
    
if strcmp('aluminum',c)
    janYearlyl=project2Data(1:12:422,11);
    l = length(janYearlyl);
    l = 1:l;
    
    plot(l, janYearlyl ,'k')
    title('Alluminum, Month:Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    janYearlym=project2Data(1:12:422,12);
    m = length(janYearlym);
    m = 1:m;
    
    plot(m, janYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    janYearlyn=project2Data(1:12:422,13);
    n = length(janYearlyn);
    n = 1:n;
    
    plot(n, janYearlyn ,'k')
    title('Barley, Canadian, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    janYearlyo=project2Data(1:12:422,14);
    o = length(janYearlyo);
    o = 1:o;
    
    plot(o, janYearlyo ,'k')
    title('Beef, Australia, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    janYearlyp=project2Data(1:12:422,15);
    p = length(janYearlyp);
    p = 1:p;
    
    plot(p, janYearlyp ,'k')
    title('Coal, Australia, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    janYearlyq=project2Data(1:12:422,16);
    q = length(janYearlyq);
    q = 1:q;
    
    plot(q, janYearlyq ,'k')
    title('Cocoa Beans, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    janYearlyr=project2Data(1:12:422,17);
    r = length(janYearlyr);
    r = 1:r;
    
    plot(r, janYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    janYearlys=project2Data(1:12:422,18);
    s = length(janYearlys);
    s = 1:s;
    
    plot(s, janYearlys ,'k')
    title('Coffee, Robusta, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    janYearlyt=project2Data(1:12:422,19);
    t = length(janYearlyt);
    t = 1:t;
    
    plot(t, janYearlyt ,'k')
    title('Rapseed oil, crude, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    janYearlyu=project2Data(1:12:422,20);
    u = length(janYearlyu);
    u = 1:u;
    
    plot(u, janYearlyu ,'k')
    title('Copper, grade A, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    janYearlyv=project2Data(1:12:422,21);
    v = length(janYearlyv);
    v = 1:v;
    
    plot(v, janYearlyv ,'k')
    title('Cotton, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    janYearlyw=project2Data(1:12:422,22);
    w = length(janYearlyw);
    w = 1:w;
    
    plot(w, janYearlyw ,'k')
    title('Fishmeal, Peru, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    janYearlyx=project2Data(1:12:422,23);
    x = length(janYearlyx);
    x = 1:x;
    
    plot(x, janYearlyx ,'k')
    title('Groundnuts (peanuts), Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    janYearlyy=project2Data(1:12:422,24);
    y = length(janYearlyy);
    y = 1:y;
    
    plot(y, janYearlyy ,'k')
    title('Hides, Heavy native steers, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    janYearlyz=project2Data(1:12:422,25);
    z = length(janYearlyz);
    z = 1:z;
    
    plot(z, janYearlyz ,'k')
    title('China import iron ore, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    janYearlyaa=project2Data(1:12:422,26);
    aa = length(janYearlyaa);
    aa = 1:aa;
    
    plot(aa, janYearlyaa ,'k')
    title('Lamb, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    janYearlyab=project2Data(1:12:422,27);
    ab = length(janYearlyab);
    ab = 1:ab;
   
    plot(ab, janYearlyab ,'k')
    title('Lead, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    janYearlyac=project2Data(1:12:422,28)
    ac = length(janYearlyac);
    ac = 1:ac;
   
    plot(ac, janYearlyac ,'k')
    title('Soft Logos, Average, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    janYearlyad=project2Data(1:12:422,29);
    ad = length(janYearlyad);
    ad = 1:ad;
   
    plot(ad, janYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    janYearlyae=project2Data(1:12:422,30);
    ae = length(janYearlyae);
    ae = 1:ae;
   
    plot(ae, janYearlyae ,'k')
    title('Maize (corn), Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    janYearlyaf=project2Data(65:12:422,31);
    af = length(janYearlyaf);
    af = 1:af;
   
    plot(af, janYearlyaf ,'k')
    title('Natural Gas, Russia, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    janYearlyag=project2Data(149:12:422,32);
    ag = length(janYearlyag);
    ag = 1:ag;
   
    plot(ag, janYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    janYearlyah=project2Data(137:12:422,33);
    ah = length(janYearlyah);
    ah = 1:ah;
   
    plot(ah, janYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    janYearlyai=project2Data(1:12:422,34);
    ai = length(janYearlyai);
    ai = 1:ai;
   
    plot(ai, janYearlyai ,'k')
    title('Nickel, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    janYearlyaj=project2Data(1:12:422,35);
    aj = length(janYearlyaj);
    aj = 1:aj;
   
    plot(aj, janYearlyaj ,'k')
    title('Crude Oil, Average, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    janYearlyak=project2Data(1:12:422,36);
    ak = length(janYearlyak);
    ak = 1:ak;
   
    plot(ak, janYearlyak ,'k')
    title('Crude Oil, UK, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    janYearlyal=project2Data(1:12:422,37);
    al = length(janYearlyal);
    al = 1:al;
   
    plot(al, janYearlyal ,'k')
    title('Oil, Dubai, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    janYearlyam=project2Data(1:12:422,38);
    am = length(janYearlyam);
    am = 1:am;
   
    plot(am, janYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    janYearlyan=project2Data(1:12:422,39);
    an = length(janYearlyan);
    an = 1:an;
   
    plot(an, janYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    janYearlyao=project2Data(1:12:422,40);
    ao = length(janYearlyao);
    ao = 1:ao;
   
    plot(ao, janYearlyao ,'k')
    title('Oranges and miscellaneous, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    janYearlyap=project2Data(1:12:422,41);
    ap = length(janYearlyap);
    ap = 1:ap;
   
    plot(ap, janYearlyap ,'k')
    title('Palm Oil, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    janYearlyaq=project2Data(1:12:422,42);
    aq = length(janYearlyaq);
    aq = 1:aq;
   
    plot(aq, janYearlyaq ,'k')
    title('Swine (pork), Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    janYearlyar=project2Data(1:12:422,43);
    ar = length(janYearlyar);
    ar = 1:ar;
   
    plot(ar, janYearlyar ,'k')
    title('Poultry (chicken), Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    janYearlyas=project2Data(1:12:422,44);
    as = length(janYearlyas);
    as = 1:as;
   
    plot(as, janYearlyas ,'k')
    title('Rice, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    janYearlyat=project2Data(1:12:422,45);
    at = length(janYearlyat);
    at = 1:at;
   
    plot(at, janYearlyat ,'k')
    title('Rubber, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    janYearlyau=project2Data(1:12:422,46);
    au = length(janYearlyau);
    au = 1:au;
   
    plot(au, janYearlyau ,'k')
    title('Fish (salmon), Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    janYearlyav=project2Data(1:12:422,47);
    av = length(janYearlyav);
    av = 1:av;
   
    plot(av, janYearlyav ,'k')
    title('Hard Sawnwood, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    janYearlyaw=project2Data(1:12:422,48);
    aw = length(janYearlyaw);
    aw = 1:aw;
   
    plot(aw, janYearlyaw ,'k')
    title('Soft Sawnwood, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    janYearlyax=project2Data(1:12:422,49);
    ax = length(janYearlyax);
    ax = 1:ax;
   
    plot(ax, janYearlyax ,'k')
    title('Shrimp, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    janYearlyay=project2Data(1:12:422,50);
    ay = length(janYearlyay);
    ay = 1:ay;
   
    plot(ay, janYearlyay ,'k')
    title('Soybean Meal, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    janYearlyaz=project2Data(1:12:422,51);
    az = length(janYearlyaz);
    az = 1:az;
   
    plot(az, janYearlyaz ,'k')
    title('Soybean Oil, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    janYearlyba=project2Data(1:12:422,52);
    ba = length(janYearlyba);
    ba = 1:ba;
   
    plot(ba, janYearlyba ,'k')
    title('Soybeans, US, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    janYearlybb=project2Data(137:12:422,53);
    bb = length(janYearlybb);
    bb = 1:bb;
   
    plot(bb, janYearlybb ,'k')
    title('Sugar, Europe, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    janYearlybc=project2Data(1:12:422,54);
    bc = length(janYearlybc);
    bc = 1:bc;
   
    plot(bc, janYearlybc ,'k')
    title('Sugar, Free Market , Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    janYearlybd=project2Data(1:12:422,55);
    bd = length(janYearlybd);
    bd = 1:bd;
   
    plot(bd, janYearlybd ,'k')
    title('Sugar, US, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    janYearlybe=project2Data(1:12:422,56);
    be = length(janYearlybe);
    be = 1:be;
   
    plot(be, janYearlybe ,'k')
    title('Sunflower oil, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    janYearlybf=project2Data(1:12:422,57);
    bf = length(janYearlybf);
    bf = 1:bf;
   
    plot(bf, janYearlybf ,'k')
    title('Tea, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    janYearlybg=project2Data(1:12:422,58);
    bg = length(janYearlybg);
    bg = 1:bg;
   
    plot(bg, janYearlybg ,'k')
    title('Tin, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    janYearlybh=project2Data(1:12:422,59);
    bh = length(janYearlybh);
    bh = 1:bh;
   
    plot(bh, janYearlybh ,'k')
    title('Uranium, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('wheat',c)
    janYearlybi=project2Data(1:12:422,60);
    bi = length(janYearlybi);
    bi = 1:bi;
   
    plot(bi, janYearlybi ,'k')
    title('Wheat, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    janYearlybj=project2Data(1:12:422,61);
    bj = length(janYearlybj);
    bj = 1:bj;
   
    plot(bj, janYearlybj ,'k')
    title('Wool, Coarse, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    janYearlybk=project2Data(1:12:422,62);
    bk = length(janYearlybk);
    bk = 1:bk;
   
    plot(bk, janYearlybk ,'k')
    title('Wool, Fine, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    janYearlybl=project2Data(1:12:422,63);
    bl = length(janYearlybl);
    bl = 1:bl;
   
    plot(bl, janYearlybl ,'k')
    title('Zinc, Month: Jan, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
% --- Executes on button press in May_PushButton.
function May_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to May_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

load('project2Data.mat')
 
 c = getappdata(0, 'choice');

if strcmp('allcom',c)
    mayYearlyb=project2Data(153:12:422,1);
    b = length(mayYearlyb);
    b = 1:b;
    
    plot(b, mayYearlyb,'k')
    title('All Commodity Price Index, Month: May, Years: 1992 - 2014', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    mayYearlyc=project2Data(141:12:422,2);
    c1 = length(mayYearlyc);
    c1 = 1:c1;
    
    plot(c1, mayYearlyc ,'k')
    title('Non-Fuel Price Index, Month: May, Years: 1991 - 2014', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    mayYearlyd=project2Data(141:12:422,3);
    d = length(mayYearlyd);
    d = 1:d;
    
    plot(d, mayYearlyd ,'k')
    title('Food and Beverage Price Index, Month: May, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    mayYearlye=project2Data(141:12:422,4);
    e = length(mayYearlye);
    e = 1:e;
    
    plot(e, mayYearlye ,'k')
    title('Food Price Index, Month: May, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    mayYearlyf=project2Data(5:12:422,5);
    f = length(mayYearlyf);
    f = 1:f;
    
    plot(f, mayYearlyf ,'k')
    title('Beverage Price Index, Month: May, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    mayYearlyg=project2Data(5:12:422,6);
    g = length(mayYearlyg);
    g = 1:g;
    
    plot(g, mayYearlyg ,'k')
    title('Industrial Inputs Price, Month: May, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    mayYearlyh=project2Data(5:12:422,7);
    h = length(mayYearlyh);
    h = 1:h;
    
    plot(h, mayYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month: May, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    mayYearlyi=project2Data(5:12:422,8);
    i = length(mayYearlyi);
    i = 1:i;
    
    plot(i, mayYearlyi ,'k')
    title('Metals Price Index, Month: May, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    mayYearlyj=project2Data(153:12:422,9);
    j = length(mayYearlyj);
    j = 1:j;
    
    plot(j, mayYearlyj ,'k')
    title('Fuel (energy) Index, Month: May, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    mayYearlyk=project2Data(5:12:422,10);
    k = length(mayYearlyk);
    k = 1:k;
    
    plot(k, mayYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month: May, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
% --- Executes on button press in Sept_PushButton.
function Sept_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Sept_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('project2Data.mat')
 
 c = getappdata(0, 'choice');

if strcmp('allcom',c)
    sepYearlyb=project2Data(157:12:422,1);
    b = length(sepYearlyb);
    b = 1:b;
    
    plot(b, sepYearlyb,'k')
    title('All Commodity Price Index, Month: September, Years: 1992 - 2014', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    sepYearlyc=project2Data(145:12:422,2);
    c1 = length(sepYearlyc);
    c1 = 1:c1;
    
    plot(c1, sepYearlyc ,'k')
    title('Non-Fuel Price Index, Month: September, Years: 1991 - 2014', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    sepYearlyd=project2Data(145:12:422,3);
    d = length(sepYearlyd);
    d = 1:d;
    
    plot(d, sepYearlyd ,'k')
    title('Food and Beverage Price Index, Month: September, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    sepYearlye=project2Data(145:12:422,4);
    e = length(sepYearlye);
    e = 1:e;
    
    plot(e, sepYearlye ,'k')
    title('Food Price Index, Month: September, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    sepYearlyf=project2Data(9:12:422,5);
    f = length(sepYearlyf);
    f = 1:f;
    
    plot(f, sepYearlyf ,'k')
    title('Beverage Price Index, Month: September, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    sepYearlyg=project2Data(9:12:422,6);
    g = length(sepYearlyg);
    g = 1:g;
    
    plot(g, sepYearlyg ,'k')
    title('Industrial Inputs Price, Month: September, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    sepYearlyh=project2Data(9:12:422,7);
    h = length(sepYearlyh);
    h = 1:h;
    
    plot(h, sepYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month: September, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    sepYearlyi=project2Data(9:12:422,8);
    i = length(sepYearlyi);
    i = 1:i;
    
    plot(i, sepYearlyi ,'k')
    title('Metals Price Index, Month: September, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    sepYearlyj=project2Data(157:12:422,9);
    j = length(sepYearlyj);
    j = 1:j;
    
    plot(j, sepYearlyj ,'k')
    title('Fuel (energy) Index, Month: September, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    sepYearlyk=project2Data(9:12:422,10);
    k = length(sepYearlyk);
    k = 1:k;
    
    plot(k, sepYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month: September, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

% --- Executes on button press in Oct_PushButton.
function Oct_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Oct_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('project2Data.mat')
 
 c = getappdata(0, 'choice');

if strcmp('allcom',c)
    octYearlyb=project2Data(158:12:422,1);
    b = length(octYearlyb);
    b = 1:b;
    
    plot(b, octYearlyb,'k')
    title('All Commodity Price Index, Month: October, Years: 1992 - 2014', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    octYearlyc=project2Data(146:12:422,2);
    c1 = length(octYearlyc);
    c1 = 1:c1;
    
    plot(c1, octYearlyc ,'k')
    title('Non-Fuel Price Index, Month: October, Years: 1991 - 2014', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    octYearlyd=project2Data(146:12:422,3);
    d = length(octYearlyd);
    d = 1:d;
    
    plot(d, octYearlyd ,'k')
    title('Food and Beverage Price Index, Month: October, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    octYearlye=project2Data(146:12:422,4);
    e = length(octYearlye);
    e = 1:e;
    
    plot(e, octYearlye ,'k')
    title('Food Price Index, Month: October, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    octYearlyf=project2Data(10:12:422,5);
    f = length(octYearlyf);
    f = 1:f;
    
    plot(f, octYearlyf ,'k')
    title('Beverage Price Index, Month: October, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    octYearlyg=project2Data(10:12:422,6);
    g = length(octYearlyg);
    g = 1:g;
    
    plot(g, octYearlyg ,'k')
    title('Industrial Inputs Price, Month: October, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    octYearlyh=project2Data(10:12:422,7);
    h = length(octYearlyh);
    h = 1:h;
    
    plot(h, octYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month: October, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    octYearlyi=project2Data(10:12:422,8);
    i = length(octYearlyi);
    i = 1:i;
    
    plot(i, octYearlyi ,'k')
    title('Metals Price Index, Month: October, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    octYearlyj=project2Data(158:12:422,9);
    j = length(octYearlyj);
    j = 1:j;
    
    plot(j, octYearlyj ,'k')
    title('Fuel (energy) Index, Month: October, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    octYearlyk=project2Data(10:12:422,10);
    k = length(octYearlyk);
    k = 1:k;
    
    plot(k, octYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month: October, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

% --- Executes on button press in June_PushButton.
function June_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to June_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('project2Data.mat')
 
 c = getappdata(0, 'choice');

if strcmp('allcom',c)
    junYearlyb=project2Data(154:12:422,1);
    b = length(junYearlyb);
    b = 1:b;
    
    plot(b, junYearlyb,'k')
    title('All Commodity Price Index, Month: June, Years: 1992 - 2014', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    junYearlyc=project2Data(142:12:422,2);
    c1 = length(junYearlyc);
    c1 = 1:c1;
    
    plot(c1, junYearlyc ,'k')
    title('Non-Fuel Price Index, Month: June, Years: 1991 - 2014', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    junYearlyd=project2Data(142:12:422,3);
    d = length(junYearlyd);
    d = 1:d;
    
    plot(d, junYearlyd ,'k')
    title('Food and Beverage Price Index, Month: June, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    junYearlye=project2Data(142:12:422,4);
    e = length(junYearlye);
    e = 1:e;
    
    plot(e, junYearlye ,'k')
    title('Food Price Index, Month: June, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    junYearlyf=project2Data(6:12:422,5);
    f = length(junYearlyf);
    f = 1:f;
    
    plot(f, junYearlyf ,'k')
    title('Beverage Price Index, Month: June, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    junYearlyg=project2Data(6:12:422,6);
    g = length(junYearlyg);
    g = 1:g;
    
    plot(g, junYearlyg ,'k')
    title('Industrial Inputs Price, Month: June, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    junYearlyh=project2Data(6:12:422,7);
    h = length(junYearlyh);
    h = 1:h;
    
    plot(h, junYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month: June, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    junYearlyi=project2Data(6:12:422,8);
    i = length(junYearlyi);
    i = 1:i;
    
    plot(i, junYearlyi ,'k')
    title('Metals Price Index, Month: June, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    junYearlyj=project2Data(154:12:422,9);
    j = length(junYearlyj);
    j = 1:j;
    
    plot(j, junYearlyj ,'k')
    title('Fuel (energy) Index, Month: June, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    junYearlyk=project2Data(6:12:422,10);
    k = length(junYearlyk);
    k = 1:k;
    
    plot(k, junYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month: June, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
% --- Executes on button press in Feb_PUshButton.
function Feb_PUshButton_Callback(hObject, eventdata, handles)
% hObject    handle to Feb_PUshButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 load('project2Data.mat')
 
 c = getappdata(0, 'choice');

if strcmp('allcom',c)
    febYearlyb=project2Data(150:12:422,1);
    b = length(febYearlyb);
    b = 1:b;
    
    plot(b, febYearlyb,'k')
    title('All Commodity Price Index, Month: Feb, Years: 1992 - 2015', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    febYearlyc=project2Data(138:12:422,2);
    c1 = length(febYearlyc);
    c1 = 1:c1;
    
    plot(c1, febYearlyc ,'k')
    title('Non-Fuel Price Index, Month:Feb, Years: 1991 - 2015', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    febYearlyd=project2Data(138:12:422,3);
    d = length(febYearlyd);
    d = 1:d;
    
    plot(d, febYearlyd ,'k')
    title('Food and Beverage Price Index, Month:Feb, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    febYearlye=project2Data(138:12:422,4);
    e = length(febYearlye);
    e = 1:e;
    
    plot(e, febYearlye ,'k')
    title('Food Price Index, Month:Feb, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    febYearlyf=project2Data(2:12:422,5);
    f = length(febYearlyf);
    f = 1:f;
    
    plot(f, febYearlyf ,'k')
    title('Beverage Price Index, Month:Feb, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    febYearlyg=project2Data(2:12:422,6);
    g = length(febYearlyg);
    g = 1:g;
    
    plot(g, febYearlyg ,'k')
    title('Industrial Inputs Price, Month:Feb, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    febYearlyh=project2Data(2:12:422,7);
    h = length(febYearlyh);
    h = 1:h;
    
    plot(h, febYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month:Feb, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    febYearlyi=project2Data(2:12:422,8);
    i = length(febYearlyi);
    i = 1:i;
    
    plot(i, febYearlyi ,'k')
    title('Metals Price Index, Month:Feb, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    febYearlyj=project2Data(150:12:422,9);
    j = length(febYearlyj);
    j = 1:j;
    
    plot(j, febYearlyj ,'k')
    title('Fuel (energy) Index, Month:Feb, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    febYearlyk=project2Data(2:12:422,10);
    k = length(febYearlyk);
    k = 1:k;
    
    plot(k, febYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month:Feb, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('aluminum',c)
    febYearlyl=project2Data(2:12:422,11);
    l = length(febYearlyl);
    l = 1:l;
    
    plot(l, febYearlyl ,'k')
    title('Alluminum, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    febYearlym=project2Data(2:12:422,12);
    m = length(febYearlym);
    m = 1:m;
    
    plot(m, febYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    febYearlyn=project2Data(2:12:422,13);
    n = length(febYearlyn);
    n = 1:n;
    
    plot(n, febYearlyn ,'k')
    title('Barley, Canadian, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    febYearlyo=project2Data(2:12:422,14);
    o = length(febYearlyo);
    o = 1:o;
    
    plot(o, febYearlyo ,'k')
    title('Beef, Australia, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    febYearlyp=project2Data(2:12:422,15);
    p = length(febYearlyp);
    p = 1:p;
    
    plot(p, febYearlyp ,'k')
    title('Coal, Australia, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    febYearlyq=project2Data(2:12:422,16);
    q = length(febYearlyq);
    q = 1:q;
    
    plot(q, febYearlyq ,'k')
    title('Cocoa Beans, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    febYearlyr=project2Data(2:12:422,17);
    r = length(febYearlyr);
    r = 1:r;
    
    plot(r, febYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    febYearlys=project2Data(2:12:422,18);
    s = length(febYearlys);
    s = 1:s;
    
    plot(s, febYearlys ,'k')
    title('Coffee, Robusta, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    febYearlyt=project2Data(2:12:422,19);
    t = length(febYearlyt);
    t = 1:t;
    
    plot(t, febYearlyt ,'k')
    title('Rapseed oil, crude, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    febYearlyu=project2Data(2:12:422,20);
    u = length(febYearlyu);
    u = 1:u;
    
    plot(u, febYearlyu ,'k')
    title('Copper, grade A, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    febYearlyv=project2Data(2:12:422,21);
    v = length(febYearlyv);
    v = 1:v;
    
    plot(v, febYearlyv ,'k')
    title('Cotton, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    febYearlyw=project2Data(2:12:422,22);
    w = length(febYearlyw);
    w = 1:w;
    
    plot(w, febYearlyw ,'k')
    title('Fishmeal, Peru, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    febYearlyx=project2Data(2:12:422,23);
    x = length(febYearlyx);
    x = 1:x;
    
    plot(x, febYearlyx ,'k')
    title('Groundnuts (peanuts), Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    febYearlyy=project2Data(2:12:422,24);
    y = length(febYearlyy);
    y = 1:y;
    
    plot(y, febYearlyy ,'k')
    title('Hides, Heavy native steers, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    febYearlyz=project2Data(2:12:422,25);
    z = length(febYearlyz);
    z = 1:z;
    
    plot(z, febYearlyz ,'k')
    title('China import iron ore, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    febYearlyaa=project2Data(2:12:422,26);
    aa = length(febYearlyaa);
    aa = 1:aa;
    
    plot(aa, febYearlyaa ,'k')
    title('Lamb, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    febYearlyab=project2Data(2:12:422,27);
    ab = length(febYearlyab);
    ab = 1:ab;
   
    plot(ab, febYearlyab ,'k')
    title('Lead, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    febYearlyac=project2Data(2:12:422,28);
    ac = length(febYearlyac);
    ac = 1:ac;
   
    plot(ac, febYearlyac ,'k')
    title('Soft Logos, Average, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    febYearlyad=project2Data(2:12:422,29);
    ad = length(febYearlyad);
    ad = 1:ad;
   
    plot(ad, febYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    febYearlyae=project2Data(2:12:422,30);
    ae = length(febYearlyae);
    ae = 1:ae;
   
    plot(ae, febYearlyae ,'k')
    title('Maize (corn), Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    febYearlyaf=project2Data(66:12:422,31);
    af = length(febYearlyaf);
    af = 1:af;
   
    plot(af, febYearlyaf ,'k')
    title('Natural Gas, Russia, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    febYearlyag=project2Data(150:12:422,32);
    ag = length(febYearlyag);
    ag = 1:ag;
   
    plot(ag, febYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    febYearlyah=project2Data(138:12:422,33);
    ah = length(febYearlyah);
    ah = 1:ah;
   
    plot(ah, febYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    febYearlyai=project2Data(2:12:422,34);
    ai = length(febYearlyai);
    ai = 1:ai;
   
    plot(ai, febYearlyai ,'k')
    title('Nickel, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    febYearlyaj=project2Data(2:12:422,35);
    aj = length(febYearlyaj);
    aj = 1:aj;
   
    plot(aj, febYearlyaj ,'k')
    title('Crude Oil, Average, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    febYearlyak=project2Data(2:12:422,36);
    ak = length(febYearlyak);
    ak = 1:ak;
   
    plot(ak, febYearlyak ,'k')
    title('Crude Oil, UK, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    febYearlyal=project2Data(2:12:422,37);
    al = length(febYearlyal);
    al = 1:al;
   
    plot(al, febYearlyal ,'k')
    title('Oil, Dubai, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    febYearlyam=project2Data(2:12:422,38);
    am = length(febYearlyam);
    am = 1:am;
   
    plot(am, febYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    febYearlyan=project2Data(2:12:422,39);
    an = length(febYearlyan);
    an = 1:an;
   
    plot(an, febYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    febYearlyao=project2Data(2:12:422,40);
    ao = length(febYearlyao);
    ao = 1:ao;
   
    plot(ao, febYearlyao ,'k')
    title('Oranges and miscellaneous, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    febYearlyap=project2Data(2:12:422,41);
    ap = length(febYearlyap);
    ap = 1:ap;
   
    plot(ap, febYearlyap ,'k')
    title('Palm Oil, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    febYearlyaq=project2Data(2:12:422,42);
    aq = length(febYearlyaq);
    aq = 1:aq;
   
    plot(aq, febYearlyaq ,'k')
    title('Swine (pork), Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    febYearlyar=project2Data(2:12:422,43);
    ar = length(febYearlyar);
    ar = 1:ar;
   
    plot(ar, febYearlyar ,'k')
    title('Poultry (chicken), Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    febYearlyas=project2Data(2:12:422,44);
    as = length(febYearlyas);
    as = 1:as;
   
    plot(as, febYearlyas ,'k')
    title('Rice, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    febYearlyat=project2Data(2:12:422,45);
    at = length(febYearlyat);
    at = 1:at;
   
    plot(at, febYearlyat ,'k')
    title('Rubber, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    febYearlyau=project2Data(2:12:422,46);
    au = length(febYearlyau);
    au = 1:au;
   
    plot(au, febYearlyau ,'k')
    title('Fish (salmon), Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    febYearlyav=project2Data(2:12:422,47);
    av = length(febYearlyav);
    av = 1:av;
   
    plot(av, febYearlyav ,'k')
    title('Hard Sawnwood, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    febYearlyaw=project2Data(2:12:422,48);
    aw = length(febYearlyaw);
    aw = 1:aw;
   
    plot(aw, febYearlyaw ,'k')
    title('Soft Sawnwood, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    febYearlyax=project2Data(2:12:422,49)
    ax = length(febYearlyax);
    ax = 1:ax;
   
    plot(ax, febYearlyax ,'k')
    title('Shrimp, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    febYearlyay=project2Data(2:12:422,50);
    ay = length(febYearlyay);
    ay = 1:ay;
   
    plot(ay, febYearlyay ,'k')
    title('Soybean Meal, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    febYearlyaz=project2Data(2:12:422,51);
    az = length(febYearlyaz);
    az = 1:az;
   
    plot(az, febYearlyaz ,'k')
    title('Soybean Oil, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    febYearlyba=project2Data(2:12:422,52);
    ba = length(febYearlyba);
    ba = 1:ba;
   
    plot(ba, febYearlyba ,'k')
    title('Soybeans, US, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    febYearlybb=project2Data(138:12:422,53);
    bb = length(febYearlybb);
    bb = 1:bb;
   
    plot(bb, febYearlybb ,'k')
    title('Sugar, Europe, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    febYearlybc=project2Data(2:12:422,54);
    bc = length(febYearlybc);
    bc = 1:bc;
   
    plot(bc, febYearlybc ,'k')
    title('Sugar, Free Market , Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    febYearlybd=project2Data(2:12:422,55);
    bd = length(febYearlybd);
    bd = 1:bd;
   
    plot(bd, febYearlybd ,'k')
    title('Sugar, US, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    febYearlybe=project2Data(2:12:422,56);
    be = length(febYearlybe);
    be = 1:be;
   
    plot(be, febYearlybe ,'k')
    title('Sunflower oil, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    febYearlybf=project2Data(2:12:422,57);
    bf = length(febYearlybf);
    bf = 1:bf;
   
    plot(bf, febYearlybf ,'k')
    title('Tea, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    febYearlybg=project2Data(2:12:422,58);
    bg = length(febYearlybg);
    bg = 1:bg;
   
    plot(bg, febYearlybg ,'k')
    title('Tin, Month: Februay, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    febYearlybh=project2Data(2:12:422,59);
    bh = length(febYearlybh);
    bh = 1:bh;
   
    plot(bh, febYearlybh ,'k')
    title('Uranium, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('wheat',c)
    febYearlybi=project2Data(2:12:422,60);
    bi = length(febYearlybi);
    bi = 1:bi;
   
    plot(bi, febYearlybi ,'k')
    title('Wheat, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    febYearlybj=project2Data(2:12:422,61);
    bj = length(febYearlybj);
    bj = 1:bj;
   
    plot(bj, febYearlybj ,'k')
    title('Wool, Coarse, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    febYearlybk=project2Data(2:12:422,62);
    bk = length(febYearlybk);
    bk = 1:bk;
   
    plot(bk, febYearlybk ,'k')
    title('Wool, Fine, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    febYearlybl=project2Data(2:12:422,63);
    bl = length(febYearlybl);
    bl = 1:bl;
   
    plot(bl, febYearlybl ,'k')
    title('Zinc, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
% --- Executes on button press in Nov_PushButton.
function Nov_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Nov_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('project2Data.mat')
 
 c = getappdata(0, 'choice');

if strcmp('allcom',c)
    novYearlyb=project2Data(159:12:422,1);
    b = length(novYearlyb);
    b = 1:b;
    
    plot(b, novYearlyb,'k')
    title('All Commodity Price Index, Month: November, Years: 1992 - 2014', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    novYearlyc=project2Data(147:12:422,2);
    c1 = length(novYearlyc);
    c1 = 1:c1;
    
    plot(c1, novYearlyc ,'k')
    title('Non-Fuel Price Index, Month: November, Years: 1991 - 2014', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    novYearlyd=project2Data(147:12:422,3);
    d = length(novYearlyd);
    d = 1:d;
    
    plot(d, novYearlyd ,'k')
    title('Food and Beverage Price Index, Month: November, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    novYearlye=project2Data(147:12:422,4);
    e = length(novYearlye);
    e = 1:e;
    
    plot(e, novYearlye ,'k')
    title('Food Price Index, Month: November, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    novYearlyf=project2Data(11:12:422,5);
    f = length(novYearlyf);
    f = 1:f;
    
    plot(f, novYearlyf ,'k')
    title('Beverage Price Index, Month: November, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    novYearlyg=project2Data(11:12:422,6);
    g = length(novYearlyg);
    g = 1:g;
    
    plot(g, novYearlyg ,'k')
    title('Industrial Inputs Price, Month: November, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    novYearlyh=project2Data(11:12:422,7);
    h = length(novYearlyh);
    h = 1:h;
    
    plot(h, novYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month: November, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    novYearlyi=project2Data(11:12:422,8);
    i = length(novYearlyi);
    i = 1:i;
    
    plot(i, novYearlyi ,'k')
    title('Metals Price Index, Month: November, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    novYearlyj=project2Data(159:12:422,9);
    j = length(novYearlyj);
    j = 1:j;
    
    plot(j, novYearlyj ,'k')
    title('Fuel (energy) Index, Month: November, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    novYearlyk=project2Data(11:12:422,10);
    k = length(novYearlyk);
    k = 1:k;
    
    plot(k, novYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month: November, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
% --- Executes on button press in July_PushButton.
function July_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to July_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('project2Data.mat')
 
 c = getappdata(0, 'choice');

if strcmp('allcom',c)
    julYearlyb=project2Data(155:12:422,1);
    b = length(julYearlyb);
    b = 1:b;
    
    plot(b, julYearlyb,'k')
    title('All Commodity Price Index, Month: July, Years: 1992 - 2014', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    julYearlyc=project2Data(143:12:422,2);
    c1 = length(julYearlyc);
    c1 = 1:c1;
    
    plot(c1, julYearlyc ,'k')
    title('Non-Fuel Price Index, Month: July, Years: 1991 - 2014', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    julYearlyd=project2Data(143:12:422,3);
    d = length(julYearlyd);
    d = 1:d;
    
    plot(d, julYearlyd ,'k')
    title('Food and Beverage Price Index, Month: July, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    julYearlye=project2Data(143:12:422,4);
    e = length(julYearlye);
    e = 1:e;
    
    plot(e, julYearlye ,'k')
    title('Food Price Index, Month: July, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    julYearlyf=project2Data(7:12:422,5);
    f = length(julYearlyf);
    f = 1:f;
    
    plot(f, julYearlyf ,'k')
    title('Beverage Price Index, Month: July, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    julYearlyg=project2Data(7:12:422,6);
    g = length(julYearlyg);
    g = 1:g;
    
    plot(g, julYearlyg ,'k')
    title('Industrial Inputs Price, Month: July, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    julYearlyh=project2Data(7:12:422,7);
    h = length(julYearlyh);
    h = 1:h;
    
    plot(h, julYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month: July, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    julYearlyi=project2Data(7:12:422,8);
    i = length(julYearlyi);
    i = 1:i;
    
    plot(i, julYearlyi ,'k')
    title('Metals Price Index, Month: July, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    julYearlyj=project2Data(155:12:422,9);
    j = length(julYearlyj);
    j = 1:j;
    
    plot(j, julYearlyj ,'k')
    title('Fuel (energy) Index, Month: July, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    julYearlyk=project2Data(7:12:422,10);
    k = length(julYearlyk);
    k = 1:k;
    
    plot(k, julYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month: July, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

% --- Executes on button press in March_PushButton.
function March_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to March_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('project2Data.mat')
 
 c = getappdata(0, 'choice');

if strcmp('allcom',c)
    marYearlyb=project2Data(151:12:422,1);
    b = length(marYearlyb);
    b = 1:b;
    
    plot(b, marYearlyb,'k')
    title('All Commodity Price Index, Month: March, Years: 1992 - 2014', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    marYearlyc=project2Data(139:12:422,2);
    c1 = length(marYearlyc);
    c1 = 1:c1;
    
    plot(c1, marYearlyc ,'k')
    title('Non-Fuel Price Index, Month: March, Years: 1991 - 2014', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    marYearlyd=project2Data(139:12:422,3);
    d = length(marYearlyd);
    d = 1:d;
    
    plot(d, marYearlyd ,'k')
    title('Food and Beverage Price Index, Month: March, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    marYearlye=project2Data(139:12:422,4);
    e = length(marYearlye);
    e = 1:e;
    
    plot(e, marYearlye ,'k')
    title('Food Price Index, Month: March, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    marYearlyf=project2Data(3:12:422,5);
    f = length(marYearlyf);
    f = 1:f;
    
    plot(f, marYearlyf ,'k')
    title('Beverage Price Index, Month: March, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    marYearlyg=project2Data(3:12:422,6);
    g = length(marYearlyg);
    g = 1:g;
    
    plot(g, marYearlyg ,'k')
    title('Industrial Inputs Price, Month: March, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    marYearlyh=project2Data(3:12:422,7);
    h = length(marYearlyh);
    h = 1:h;
    
    plot(h, marYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month: March, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    marYearlyi=project2Data(3:12:422,8);
    i = length(marYearlyi);
    i = 1:i;
    
    plot(i, marYearlyi ,'k')
    title('Metals Price Index, Month: March, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    marYearlyj=project2Data(151:12:422,9);
    j = length(marYearlyj);
    j = 1:j;
    
    plot(j, marYearlyj ,'k')
    title('Fuel (energy) Index, Month: March, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    marYearlyk=project2Data(3:12:422,10)
    k = length(marYearlyk);
    k = 1:k;
    
    plot(k, marYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month: March, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('aluminum',c)
    marYearlyl=project2Data(3:12:422,11);
    l = length(marYearlyl);
    l = 1:l;
    
    plot(l, marYearlyl ,'k')
    title('Alluminum, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    marYearlym=project2Data(3:12:422,12);
    m = length(marYearlym);
    m = 1:m;
    
    plot(m, marYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    marYearlyn=project2Data(3:12:422,13);
    n = length(marYearlyn);
    n = 1:n;
    
    plot(n, marYearlyn ,'k')
    title('Barley, Canadian, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    marYearlyo=project2Data(3:12:422,14);
    o = length(marYearlyo);
    o = 1:o;
    
    plot(o, marYearlyo ,'k')
    title('Beef, Australia, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    marYearlyp=project2Data(3:12:422,15);
    p = length(marYearlyp);
    p = 1:p;
    
    plot(p, marYearlyp ,'k')
    title('Coal, Australia, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    marYearlyq=project2Data(3:12:422,16);
    q = length(marYearlyq);
    q = 1:q;
    
    plot(q, marYearlyq ,'k')
    title('Cocoa Beans, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    marYearlyr=project2Data(3:12:422,17);
    r = length(marYearlyr);
    r = 1:r;
    
    plot(r, marYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    marYearlys=project2Data(3:12:422,18);
    s = length(marYearlys);
    s = 1:s;
    
    plot(s, marYearlys ,'k')
    title('Coffee, Robusta, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    marYearlyt=project2Data(3:12:422,19);
    t = length(marYearlyt);
    t = 1:t;
    
    plot(t, marYearlyt ,'k')
    title('Rapseed oil, crude, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    marYearlyu=project2Data(3:12:422,20);
    u = length(marYearlyu);
    u = 1:u;
    
    plot(u, marYearlyu ,'k')
    title('Copper, grade A, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    marYearlyv=project2Data(3:12:422,21);
    v = length(marYearlyv);
    v = 1:v;
    
    plot(v, marYearlyv ,'k')
    title('Cotton, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    marYearlyw=project2Data(3:12:422,22);
    w = length(marYearlyw);
    w = 1:w;
    
    plot(w, marYearlyw ,'k')
    title('Fishmeal, Peru, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    marYearlyx=project2Data(3:12:422,23);
    x = length(marYearlyx);
    x = 1:x;
    
    plot(x, marYearlyx ,'k')
    title('Groundnuts (peanuts), Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    marYearlyy=project2Data(3:12:422,24);
    y = length(marYearlyy);
    y = 1:y;
    
    plot(y, marYearlyy ,'k')
    title('Hides, Heavy native steers, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    marYearlyz=project2Data(3:12:422,25);
    z = length(marYearlyz);
    z = 1:z;
    
    plot(z, marYearlyz ,'k')
    title('China import iron ore, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    marYearlyaa=project2Data(3:12:422,26);
    aa = length(marYearlyaa);
    aa = 1:aa;
    
    plot(aa, marYearlyaa ,'k')
    title('Lamb, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    marYearlyab=project2Data(3:12:422,27);
    ab = length(marYearlyab);
    ab = 1:ab;
   
    plot(ab, marYearlyab ,'k')
    title('Lead, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    marYearlyac=project2Data(3:12:422,28);
    ac = length(marYearlyac);
    ac = 1:ac;
   
    plot(ac, marYearlyac ,'k')
    title('Soft Logos, Average, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    marYearlyad=project2Data(3:12:422,29);
    ad = length(marYearlyad);
    ad = 1:ad;
   
    plot(ad, marYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    marYearlyae=project2Data(3:12:422,30);
    ae = length(marYearlyae);
    ae = 1:ae;
   
    plot(ae, marYearlyae ,'k')
    title('Maize (corn), Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    marYearlyaf=project2Data(67:12:422,31);
    af = length(marYearlyaf);
    af = 1:af;
   
    plot(af, marYearlyaf ,'k')
    title('Natural Gas, Russia, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    marYearlyag=project2Data(151:12:422,32);
    ag = length(marYearlyag);
    ag = 1:ag;
   
    plot(ag, marYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    marYearlyah=project2Data(139:12:422,33);
    ah = length(marYearlyah);
    ah = 1:ah;
   
    plot(ah, marYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    marYearlyai=project2Data(3:12:422,34);
    ai = length(marYearlyai);
    ai = 1:ai;
   
    plot(ai, marYearlyai ,'k')
    title('Nickel, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    marYearlyaj=project2Data(3:12:422,35);
    aj = length(marYearlyaj);
    aj = 1:aj;
   
    plot(aj, marYearlyaj ,'k')
    title('Crude Oil, Average, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    marYearlyak=project2Data(3:12:422,36);
    ak = length(marYearlyak);
    ak = 1:ak;
   
    plot(ak, marYearlyak ,'k')
    title('Crude Oil, UK, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    marYearlyal=project2Data(3:12:422,37);
    al = length(marYearlyal);
    al = 1:al;
   
    plot(al, marYearlyal ,'k')
    title('Oil, Dubai, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    marYearlyam=project2Data(3:12:422,38);
    am = length(febYearlyam);
    am = 1:am;
   
    plot(am, febYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    marYearlyan=project2Data(3:12:422,39);
    an = length(marYearlyan);
    an = 1:an;
   
    plot(an, marYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    marYearlyao=project2Data(3:12:422,40);
    ao = length(marYearlyao);
    ao = 1:ao;
   
    plot(ao, marYearlyao ,'k')
    title('Oranges and miscellaneous, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    marYearlyap=project2Data(3:12:422,41)
    ap = length(marYearlyap);
    ap = 1:ap;
   
    plot(ap, marYearlyap ,'k')
    title('Palm Oil, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    marYearlyaq=project2Data(3:12:422,42);
    aq = length(marYearlyaq);
    aq = 1:aq;
   
    plot(aq, marYearlyaq ,'k')
    title('Swine (pork), Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    marYearlyar=project2Data(3:12:422,43);
    ar = length(marYearlyar);
    ar = 1:ar;
   
    plot(ar, marYearlyar ,'k')
    title('Poultry (chicken), Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    marYearlyas=project2Data(3:12:422,44);
    as = length(marYearlyas);
    as = 1:as;
   
    plot(as, marYearlyas ,'k')
    title('Rice, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    marYearlyat=project2Data(3:12:422,45);
    at = length(marYearlyat);
    at = 1:at;
   
    plot(at, marYearlyat ,'k')
    title('Rubber, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    marYearlyau=project2Data(3:12:422,46);
    au = length(marYearlyau);
    au = 1:au;
   
    plot(au, marYearlyau ,'k')
    title('Fish (salmon), Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    marYearlyav=project2Data(3:12:422,47)
    av = length(marYearlyav);
    av = 1:av;
   
    plot(av, marYearlyav ,'k')
    title('Hard Sawnwood, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    marYearlyaw=project2Data(3:12:422,48);
    aw = length(marYearlyaw);
    aw = 1:aw;
   
    plot(aw, marYearlyaw ,'k')
    title('Soft Sawnwood, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    marYearlyax=project2Data(3:12:422,49);
    ax = length(marYearlyax);
    ax = 1:ax;
   
    plot(ax, marYearlyax ,'k')
    title('Shrimp, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    marYearlyay=project2Data(3:12:422,50);
    ay = length(marYearlyay);
    ay = 1:ay;
   
    plot(ay, marYearlyay ,'k')
    title('Soybean Meal, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    marYearlyaz=project2Data(3:12:422,51);
    az = length(marYearlyaz);
    az = 1:az;
   
    plot(az, marYearlyaz ,'k')
    title('Soybean Oil, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    marYearlyba=project2Data(3:12:422,52);
    ba = length(marYearlyba);
    ba = 1:ba;
   
    plot(ba, marYearlyba ,'k')
    title('Soybeans, US, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    marYearlybb=project2Data(139:12:422,53);
    bb = length(marYearlybb);
    bb = 1:bb;
   
    plot(bb, marYearlybb ,'k')
    title('Sugar, Europe, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    marYearlybc=project2Data(3:12:422,54);
    bc = length(marYearlybc);
    bc = 1:bc;
   
    plot(bc, marYearlybc ,'k')
    title('Sugar, Free Market , Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    marYearlybd=project2Data(3:12:422,55);
    bd = length(marYearlybd);
    bd = 1:bd;
   
    plot(bd, marYearlybd ,'k')
    title('Sugar, US, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    marYearlybe=project2Data(3:12:422,56);
    be = length(marYearlybe);
    be = 1:be;
   
    plot(be, marYearlybe ,'k')
    title('Sunflower oil, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    marYearlybf=project2Data(3:12:422,57);
    bf = length(marYearlybf);
    bf = 1:bf;
   
    plot(bf, marYearlybf ,'k')
    title('Tea, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    marYearlybg=project2Data(3:12:422,58);
    bg = length(marYearlybg);
    bg = 1:bg;
   
    plot(bg, marYearlybg ,'k')
    title('Tin, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    marYearlybh=project2Data(3:12:422,59);
    bh = length(marYearlybh);
    bh = 1:bh;
   
    plot(bh, marYearlybh ,'k')
    title('Uranium, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('wheat',c)
    marYearlybi=project2Data(3:12:422,60);
    bi = length(marYearlybi);
    bi = 1:bi;
   
    plot(bi, marYearlybi ,'k')
    title('Wheat, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    marYearlybj=project2Data(3:12:422,61);
    bj = length(marYearlybj);
    bj = 1:bj;
   
    plot(bj, marYearlybj ,'k')
    title('Wool, Coarse, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    marYearlybk=project2Data(3:12:422,62);
    bk = length(marYearlybk);
    bk = 1:bk;
   
    plot(bk, marYearlybk ,'k')
    title('Wool, Fine, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    marYearlybl=project2Data(3:12:422,63);
    bl = length(marYearlybl);
    bl = 1:bl;
   
    plot(bl, marYearlybl ,'k')
    title('Zinc, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
% --- Executes on button press in Dec_PushButton.
function Dec_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Dec_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('project2Data.mat')
 
 c = getappdata(0, 'choice');

if strcmp('allcom',c)
    decYearlyb=project2Data(160:12:422,1);
    b = length(decYearlyb);
    b = 1:b;
    
    plot(b, decYearlyb,'k')
    title('All Commodity Price Index, Month: December, Years: 1992 - 2014', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    decYearlyc=project2Data(148:12:422,2);
    c1 = length(decYearlyc);
    c1 = 1:c1;
    
    plot(c1, decYearlyc ,'k')
    title('Non-Fuel Price Index, Month: December, Years: 1991 - 2014', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    decYearlyd=project2Data(148:12:422,3);
    d = length(decYearlyd);
    d = 1:d;
    
    plot(d, decYearlyd ,'k')
    title('Food and Beverage Price Index, Month: December, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    decYearlye=project2Data(148:12:422,4);
    e = length(decYearlye);
    e = 1:e;
    
    plot(e, decYearlye ,'k')
    title('Food Price Index, Month: December, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    decYearlyf=project2Data(12:12:422,5);
    f = length(decYearlyf);
    f = 1:f;
    
    plot(f, decYearlyf ,'k')
    title('Beverage Price Index, Month: December, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    decYearlyg=project2Data(12:12:422,6);
    g = length(decYearlyg);
    g = 1:g;
    
    plot(g, decYearlyg ,'k')
    title('Industrial Inputs Price, Month: December, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    decYearlyh=project2Data(12:12:422,7);
    h = length(decYearlyh);
    h = 1:h;
    
    plot(h, decYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month: December, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    decYearlyi=project2Data(12:12:422,8);
    i = length(decYearlyi);
    i = 1:i;
    
    plot(i, decYearlyi ,'k')
    title('Metals Price Index, Month: December, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    decYearlyj=project2Data(160:12:422,9);
    j = length(decYearlyj);
    j = 1:j;
    
    plot(j, decYearlyj ,'k')
    title('Fuel (energy) Index, Month: December, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    decYearlyk=project2Data(12:12:422,10);
    k = length(decYearlyk);
    k = 1:k;
    
    plot(k, decYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month: December, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
% --- Executes on button press in Aug_PushButton.
function Aug_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to Aug_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

load('project2Data.mat')
 
 c = getappdata(0, 'choice');

if strcmp('allcom',c)
    augYearlyb=project2Data(156:12:422,1);
    b = length(augYearlyb);
    b = 1:b;
    
    plot(b, augYearlyb,'k')
    title('All Commodity Price Index, Month: August, Years: 1992 - 2014', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    augYearlyc=project2Data(144:12:422,2);
    c1 = length(augYearlyc);
    c1 = 1:c1;
    
    plot(c1, augYearlyc ,'k')
    title('Non-Fuel Price Index, Month: August, Years: 1991 - 2014', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    augYearlyd=project2Data(144:12:422,3);
    d = length(augYearlyd);
    d = 1:d;
    
    plot(d, augYearlyd ,'k')
    title('Food and Beverage Price Index, Month: August, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    augYearlye=project2Data(144:12:422,4);
    e = length(augYearlye);
    e = 1:e;
    
    plot(e, augYearlye ,'k')
    title('Food Price Index, Month: August, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    augYearlyf=project2Data(8:12:422,5);
    f = length(augYearlyf);
    f = 1:f;
    
    plot(f, augYearlyf ,'k')
    title('Beverage Price Index, Month: August, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    augYearlyg=project2Data(8:12:422,6);
    g = length(augYearlyg);
    g = 1:g;
    
    plot(g, augYearlyg ,'k')
    title('Industrial Inputs Price, Month: August, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    augYearlyh=project2Data(8:12:422,7);
    h = length(augYearlyh);
    h = 1:h;
    
    plot(h, augYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month: August, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    augYearlyi=project2Data(8:12:422,8);
    i = length(augYearlyi);
    i = 1:i;
    
    plot(i, augYearlyi ,'k')
    title('Metals Price Index, Month: August, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    augYearlyj=project2Data(156:12:422,9);
    j = length(augYearlyj);
    j = 1:j;
    
    plot(j, augYearlyj ,'k')
    title('Fuel (energy) Index, Month: August, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    augYearlyk=project2Data(8:12:422,10);
    k = length(augYearlyk);
    k = 1:k;
    
    plot(k, augYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month: August, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 



% --- Executes on button press in April_PushButton.
function April_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to April_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('project2Data.mat')
 
 c = getappdata(0, 'choice');

if strcmp('allcom',c)
    aprYearlyb=project2Data(152:12:422,1);
    b = length(aprYearlyb);
    b = 1:b;
    
    plot(b, aprYearlyb,'k')
    title('All Commodity Price Index, Month: April, Years: 1992 - 2014', ...
    'FontSize',15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('nonfuel',c)
    aprYearlyc=project2Data(140:12:422,2);
    c1 = length(aprYearlyc);
    c1 = 1:c1;
    
    plot(c1, aprYearlyc ,'k')
    title('Non-Fuel Price Index, Month: April, Years: 1991 - 2014', ...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('foodbev',c)
    aprYearlyd=project2Data(140:12:422,3);
    d = length(aprYearlyd);
    d = 1:d;
    
    plot(d, arpYearlyd ,'k')
    title('Food and Beverage Price Index, Month:April, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('food',c)
    aprYearlye=project2Data(140:12:422,4)
    e = length(aprYearlye);
    e = 1:e;
    
    plot(e, aprYearlye ,'k')
    title('Food Price Index, Month: April, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('bev',c)
    aprYearlyf=project2Data(4:12:422,5);
    f = length(aprYearlyf);
    f = 1:f;
    
    plot(f, aprYearlyf ,'k')
    title('Beverage Price Index, Month: April, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('industrial',c)
    aprYearlyg=project2Data(4:12:422,6);
    g = length(aprYearlyg);
    g = 1:g;
    
    plot(g, aprYearlyg ,'k')
    title('Industrial Inputs Price, Month: April, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('ARM',c)
    aprYearlyh=project2Data(4:12:422,7);
    h = length(aprYearlyh);
    h = 1:h;
    
    plot(h, aprYearlyh ,'k')
    title('Agricultural Raw Materials Index, Month: April, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('metals',c)
    aprYearlyi=project2Data(4:12:422,8);
    i = length(aprYearlyi);
    i = 1:i;
    
    plot(i, aprYearlyi ,'k')
    title('Metals Price Index, Month: April, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('energyfuel',c)
    aprYearlyj=project2Data(152:12:422,9);
    j = length(aprYearlyj);
    j = 1:j;
    
    plot(j, aprYearlyj ,'k')
    title('Fuel (energy) Index, Month: April, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('crudeoil',c)
    aprYearlyk=project2Data(4:12:422,10);
    k = length(aprYearlyk);
    k = 1:k;
    
    plot(k, aprYearlyk ,'k')
    title('Crude Oil (petroleum) Price Index, Month: April, Years: 1991 - 2014',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('aluminum',c)
    aprYearlyl=project2Data(4:12:422,11);
    l = length(aprYearlyl);
    l = 1:l;
    
    plot(l, aprYearlyl ,'k')
    title('Alluminum, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    aprYearlym=project2Data(4:12:422,12);
    m = length(aprYearlym);
    m = 1:m;
    
    plot(m, aprYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    marYearlyn=project2Data(3:12:422,13);
    n = length(marYearlyn);
    n = 1:n;
    
    plot(n, marYearlyn ,'k')
    title('Barley, Canadian, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    marYearlyo=project2Data(3:12:422,14);
    o = length(marYearlyo);
    o = 1:o;
    
    plot(o, marYearlyo ,'k')
    title('Beef, Australia, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    marYearlyp=project2Data(3:12:422,15);
    p = length(marYearlyp);
    p = 1:p;
    
    plot(p, marYearlyp ,'k')
    title('Coal, Australia, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    marYearlyq=project2Data(3:12:422,16);
    q = length(marYearlyq);
    q = 1:q;
    
    plot(q, marYearlyq ,'k')
    title('Cocoa Beans, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    marYearlyr=project2Data(3:12:422,17);
    r = length(marYearlyr);
    r = 1:r;
    
    plot(r, marYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    marYearlys=project2Data(3:12:422,18);
    s = length(marYearlys);
    s = 1:s;
    
    plot(s, marYearlys ,'k')
    title('Coffee, Robusta, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    marYearlyt=project2Data(3:12:422,19);
    t = length(marYearlyt);
    t = 1:t;
    
    plot(t, marYearlyt ,'k')
    title('Rapseed oil, crude, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    marYearlyu=project2Data(3:12:422,20);
    u = length(marYearlyu);
    u = 1:u;
    
    plot(u, marYearlyu ,'k')
    title('Copper, grade A, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    marYearlyv=project2Data(3:12:422,21);
    v = length(marYearlyv);
    v = 1:v;
    
    plot(v, marYearlyv ,'k')
    title('Cotton, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    marYearlyw=project2Data(3:12:422,22);
    w = length(marYearlyw);
    w = 1:w;
    
    plot(w, marYearlyw ,'k')
    title('Fishmeal, Peru, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    marYearlyx=project2Data(3:12:422,23);
    x = length(marYearlyx);
    x = 1:x;
    
    plot(x, marYearlyx ,'k')
    title('Groundnuts (peanuts), Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    marYearlyy=project2Data(3:12:422,24);
    y = length(marYearlyy);
    y = 1:y;
    
    plot(y, marYearlyy ,'k')
    title('Hides, Heavy native steers, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    marYearlyz=project2Data(3:12:422,25);
    z = length(marYearlyz);
    z = 1:z;
    
    plot(z, marYearlyz ,'k')
    title('China import iron ore, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    marYearlyaa=project2Data(3:12:422,26);
    aa = length(marYearlyaa);
    aa = 1:aa;
    
    plot(aa, marYearlyaa ,'k')
    title('Lamb, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    marYearlyab=project2Data(3:12:422,27);
    ab = length(marYearlyab);
    ab = 1:ab;
   
    plot(ab, marYearlyab ,'k')
    title('Lead, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    marYearlyac=project2Data(3:12:422,28);
    ac = length(marYearlyac);
    ac = 1:ac;
   
    plot(ac, marYearlyac ,'k')
    title('Soft Logos, Average, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    marYearlyad=project2Data(3:12:422,29);
    ad = length(marYearlyad);
    ad = 1:ad;
   
    plot(ad, marYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    marYearlyae=project2Data(3:12:422,30);
    ae = length(marYearlyae);
    ae = 1:ae;
   
    plot(ae, marYearlyae ,'k')
    title('Maize (corn), Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    marYearlyaf=project2Data(67:12:422,31);
    af = length(marYearlyaf);
    af = 1:af;
   
    plot(af, marYearlyaf ,'k')
    title('Natural Gas, Russia, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    marYearlyag=project2Data(151:12:422,32);
    ag = length(marYearlyag);
    ag = 1:ag;
   
    plot(ag, marYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    marYearlyah=project2Data(139:12:422,33);
    ah = length(marYearlyah);
    ah = 1:ah;
   
    plot(ah, marYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    marYearlyai=project2Data(3:12:422,34);
    ai = length(marYearlyai);
    ai = 1:ai;
   
    plot(ai, marYearlyai ,'k')
    title('Nickel, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    marYearlyaj=project2Data(3:12:422,35);
    aj = length(marYearlyaj);
    aj = 1:aj;
   
    plot(aj, marYearlyaj ,'k')
    title('Crude Oil, Average, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    marYearlyak=project2Data(3:12:422,36);
    ak = length(marYearlyak);
    ak = 1:ak;
   
    plot(ak, marYearlyak ,'k')
    title('Crude Oil, UK, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    marYearlyal=project2Data(3:12:422,37);
    al = length(marYearlyal);
    al = 1:al;
   
    plot(al, marYearlyal ,'k')
    title('Oil, Dubai, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    marYearlyam=project2Data(3:12:422,38);
    am = length(febYearlyam);
    am = 1:am;
   
    plot(am, febYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: February, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    marYearlyan=project2Data(3:12:422,39);
    an = length(marYearlyan);
    an = 1:an;
   
    plot(an, marYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    marYearlyao=project2Data(3:12:422,40);
    ao = length(marYearlyao);
    ao = 1:ao;
   
    plot(ao, marYearlyao ,'k')
    title('Oranges and miscellaneous, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    marYearlyap=project2Data(3:12:422,41)
    ap = length(marYearlyap);
    ap = 1:ap;
   
    plot(ap, marYearlyap ,'k')
    title('Palm Oil, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    marYearlyaq=project2Data(3:12:422,42);
    aq = length(marYearlyaq);
    aq = 1:aq;
   
    plot(aq, marYearlyaq ,'k')
    title('Swine (pork), Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    marYearlyar=project2Data(3:12:422,43);
    ar = length(marYearlyar);
    ar = 1:ar;
   
    plot(ar, marYearlyar ,'k')
    title('Poultry (chicken), Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    marYearlyas=project2Data(3:12:422,44);
    as = length(marYearlyas);
    as = 1:as;
   
    plot(as, marYearlyas ,'k')
    title('Rice, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    marYearlyat=project2Data(3:12:422,45);
    at = length(marYearlyat);
    at = 1:at;
   
    plot(at, marYearlyat ,'k')
    title('Rubber, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    marYearlyau=project2Data(3:12:422,46);
    au = length(marYearlyau);
    au = 1:au;
   
    plot(au, marYearlyau ,'k')
    title('Fish (salmon), Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    marYearlyav=project2Data(3:12:422,47)
    av = length(marYearlyav);
    av = 1:av;
   
    plot(av, marYearlyav ,'k')
    title('Hard Sawnwood, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    marYearlyaw=project2Data(3:12:422,48);
    aw = length(marYearlyaw);
    aw = 1:aw;
   
    plot(aw, marYearlyaw ,'k')
    title('Soft Sawnwood, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    marYearlyax=project2Data(3:12:422,49);
    ax = length(marYearlyax);
    ax = 1:ax;
   
    plot(ax, marYearlyax ,'k')
    title('Shrimp, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    marYearlyay=project2Data(3:12:422,50);
    ay = length(marYearlyay);
    ay = 1:ay;
   
    plot(ay, marYearlyay ,'k')
    title('Soybean Meal, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    marYearlyaz=project2Data(3:12:422,51);
    az = length(marYearlyaz);
    az = 1:az;
   
    plot(az, marYearlyaz ,'k')
    title('Soybean Oil, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    marYearlyba=project2Data(3:12:422,52);
    ba = length(marYearlyba);
    ba = 1:ba;
   
    plot(ba, marYearlyba ,'k')
    title('Soybeans, US, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    marYearlybb=project2Data(139:12:422,53);
    bb = length(marYearlybb);
    bb = 1:bb;
   
    plot(bb, marYearlybb ,'k')
    title('Sugar, Europe, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    marYearlybc=project2Data(3:12:422,54);
    bc = length(marYearlybc);
    bc = 1:bc;
   
    plot(bc, marYearlybc ,'k')
    title('Sugar, Free Market , Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    marYearlybd=project2Data(3:12:422,55);
    bd = length(marYearlybd);
    bd = 1:bd;
   
    plot(bd, marYearlybd ,'k')
    title('Sugar, US, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    marYearlybe=project2Data(3:12:422,56);
    be = length(marYearlybe);
    be = 1:be;
   
    plot(be, marYearlybe ,'k')
    title('Sunflower oil, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    marYearlybf=project2Data(3:12:422,57);
    bf = length(marYearlybf);
    bf = 1:bf;
   
    plot(bf, marYearlybf ,'k')
    title('Tea, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    marYearlybg=project2Data(3:12:422,58);
    bg = length(marYearlybg);
    bg = 1:bg;
   
    plot(bg, marYearlybg ,'k')
    title('Tin, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    marYearlybh=project2Data(3:12:422,59);
    bh = length(marYearlybh);
    bh = 1:bh;
   
    plot(bh, marYearlybh ,'k')
    title('Uranium, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('wheat',c)
    marYearlybi=project2Data(3:12:422,60);
    bi = length(marYearlybi);
    bi = 1:bi;
   
    plot(bi, marYearlybi ,'k')
    title('Wheat, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    marYearlybj=project2Data(3:12:422,61);
    bj = length(marYearlybj);
    bj = 1:bj;
   
    plot(bj, marYearlybj ,'k')
    title('Wool, Coarse, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    marYearlybk=project2Data(3:12:422,62);
    bk = length(marYearlybk);
    bk = 1:bk;
   
    plot(bk, marYearlybk ,'k')
    title('Wool, Fine, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    marYearlybl=project2Data(3:12:422,63);
    bl = length(marYearlybl);
    bl = 1:bl;
   
    plot(bl, marYearlybl ,'k')
    title('Zinc, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
