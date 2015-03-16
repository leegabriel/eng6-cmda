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
load project2Data
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

if strcmp('aluminum',c)
    mayYearlyl=project2Data(5:12:422,11);
    l = length(mayYearlyl);
    l = 1:l;
    
    plot(l, mayYearlyl ,'k')
    title('Alluminum, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    mayYearlym=project2Data(5:12:422,12);
    m = length(mayYearlym);
    m = 1:m;
    
    plot(m, mayYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    mayYearlyn=project2Data(5:12:422,13);
    n = length(mayYearlyn);
    n = 1:n;
    
    plot(n, mayYearlyn ,'k')
    title('Barley, Canadian, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    mayYearlyo=project2Data(5:12:422,14);
    o = length(mayYearlyo);
    o = 1:o;
    
    plot(o, mayYearlyo ,'k')
    title('Beef, Australia, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    mayYearlyp=project2Data(5:12:422,15);
    p = length(mayYearlyp);
    p = 1:p;
    
    plot(p, mayYearlyp ,'k')
    title('Coal, Australia, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    mayYearlyq=project2Data(5:12:422,16);
    q = length(mayYearlyq);
    q = 1:q;
    
    plot(q, mayYearlyq ,'k')
    title('Cocoa Beans, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    mayYearlyr=project2Data(5:12:422,17);
    r = length(mayYearlyr);
    r = 1:r;
    
    plot(r, mayYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    mayYearlys=project2Data(5:12:422,18);
    s = length(mayYearlys);
    s = 1:s;
    
    plot(s, mayYearlys ,'k')
    title('Coffee, Robusta, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    mayYearlyt=project2Data(5:12:422,19);
    t = length(mayYearlyt);
    t = 1:t;
    
    plot(t, mayYearlyt ,'k')
    title('Rapseed oil, crude, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    mayYearlyu=project2Data(5:12:422,20);
    u = length(mayYearlyu);
    u = 1:u;
    
    plot(u, mayYearlyu ,'k')
    title('Copper, grade A, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    mayYearlyv=project2Data(5:12:422,21);
    v = length(mayYearlyv);
    v = 1:v;
    
    plot(v, mayYearlyv ,'k')
    title('Cotton, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    mayYearlyw=project2Data(5:12:422,22);
    w = length(mayYearlyw);
    w = 1:w;
    
    plot(w, mayYearlyw ,'k')
    title('Fishmeal, Peru, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    mayYearlyx=project2Data(5:12:422,23);
    x = length(mayYearlyx);
    x = 1:x;
    
    plot(x, mayYearlyx ,'k')
    title('Groundnuts (peanuts), Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    mayYearlyy=project2Data(5:12:422,24);
    y = length(mayYearlyy);
    y = 1:y;
    
    plot(y, mayYearlyy ,'k')
    title('Hides, Heavy native steers, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    mayYearlyz=project2Data(5:12:422,25);
    z = length(mayYearlyz);
    z = 1:z;
    
    plot(z, mayYearlyz ,'k')
    title('China import iron ore, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    mayYearlyaa=project2Data(5:12:422,26);
    aa = length(mayYearlyaa);
    aa = 1:aa;
    
    plot(aa, mayYearlyaa ,'k')
    title('Lamb, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    mayYearlyab=project2Data(5:12:422,27);
    ab = length(mayYearlyab);
    ab = 1:ab;
   
    plot(ab, mayYearlyab ,'k')
    title('Lead, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    mayYearlyac=project2Data(5:12:422,28);
    ac = length(mayYearlyac);
    ac = 1:ac;
   
    plot(ac, mayYearlyac ,'k')
    title('Soft Logos, Average, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    mayYearlyad=project2Data(5:12:422,29);
    ad = length(mayYearlyad);
    ad = 1:ad;
   
    plot(ad, mayYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    mayYearlyae=project2Data(5:12:422,30);
    ae = length(mayYearlyae);
    ae = 1:ae;
   
    plot(ae, mayYearlyae ,'k')
    title('Maize (corn), Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    mayYearlyaf=project2Data(69:12:422,31);
    af = length(mayYearlyaf);
    af = 1:af;
   
    plot(af, mayYearlyaf ,'k')
    title('Natural Gas, Russia, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    mayYearlyag=project2Data(153:12:422,32);
    ag = length(mayYearlyag);
    ag = 1:ag;
   
    plot(ag, mayYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    mayYearlyah=project2Data(141:12:422,33);
    ah = length(mayYearlyah);
    ah = 1:ah;
   
    plot(ah, mayYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    mayYearlyai=project2Data(5:12:422,34);
    ai = length(mayYearlyai);
    ai = 1:ai;
   
    plot(ai, mayYearlyai ,'k')
    title('Nickel, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    mayYearlyaj=project2Data(5:12:422,35);
    aj = length(mayYearlyaj);
    aj = 1:aj;
   
    plot(aj, mayYearlyaj ,'k')
    title('Crude Oil, Average, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    mayYearlyak=project2Data(5:12:422,36);
    ak = length(mayYearlyak);
    ak = 1:ak;
   
    plot(ak, mayYearlyak ,'k')
    title('Crude Oil, UK, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    mayYearlyal=project2Data(5:12:422,37);
    al = length(mayYearlyal);
    al = 1:al;
   
    plot(al, mayYearlyal ,'k')
    title('Oil, Dubai, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    mayYearlyam=project2Data(5:12:422,38);
    am = length(mayYearlyam);
    am = 1:am;
   
    plot(am, mayYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    mayYearlyan=project2Data(5:12:422,39);
    an = length(mayYearlyan);
    an = 1:an;
   
    plot(an, mayYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    mayYearlyao=project2Data(5:12:422,40);
    ao = length(mayYearlyao);
    ao = 1:ao;
   
    plot(ao, mayYearlyao ,'k')
    title('Oranges and miscellaneous, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    mayYearlyap=project2Data(5:12:422,41);
    ap = length(mayYearlyap);
    ap = 1:ap;
   
    plot(ap, mayYearlyap ,'k')
    title('Palm Oil, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    mayYearlyaq=project2Data(5:12:422,42);
    aq = length(mayYearlyaq);
    aq = 1:aq;
   
    plot(aq, mayYearlyaq ,'k')
    title('Swine (pork), Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    mayYearlyar=project2Data(5:12:422,43);
    ar = length(mayYearlyar);
    ar = 1:ar;
   
    plot(ar, mayYearlyar ,'k')
    title('Poultry (chicken), Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    mayYearlyas=project2Data(5:12:422,44);
    as = length(mayYearlyas);
    as = 1:as;
   
    plot(as, mayYearlyas ,'k')
    title('Rice, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    mayYearlyat=project2Data(5:12:422,45);
    at = length(mayYearlyat);
    at = 1:at;
   
    plot(at, mayYearlyat ,'k')
    title('Rubber, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    mayYearlyau=project2Data(5:12:422,46);
    au = length(mayYearlyau);
    au = 1:au;
   
    plot(au, mayYearlyau ,'k')
    title('Fish (salmon), Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    mayYearlyav=project2Data(5:12:422,47);
    av = length(mayYearlyav);
    av = 1:av;
   
    plot(av, mayYearlyav ,'k')
    title('Hard Sawnwood, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    mayYearlyaw=project2Data(5:12:422,48);
    aw = length(mayYearlyaw);
    aw = 1:aw;
   
    plot(aw, mayYearlyaw ,'k')
    title('Soft Sawnwood, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    mayYearlyax=project2Data(5:12:422,49);
    ax = length(mayYearlyax);
    ax = 1:ax;
   
    plot(ax, mayYearlyax ,'k')
    title('Shrimp, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    mayYearlyay=project2Data(5:12:422,50);
    ay = length(mayYearlyay);
    ay = 1:ay;
   
    plot(ay, mayYearlyay ,'k')
    title('Soybean Meal, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    mayYearlyaz=project2Data(5:12:422,51)
    az = length(mayYearlyaz);
    az = 1:az;
   
    plot(az, mayYearlyaz ,'k')
    title('Soybean Oil, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    mayYearlyba=project2Data(5:12:422,52)
    ba = length(mayYearlyba);
    ba = 1:ba;
   
    plot(ba, mayYearlyba ,'k')
    title('Soybeans, US, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    mayYearlybb=project2Data(141:12:422,53);
    bb = length(mayYearlybb);
    bb = 1:bb;
   
    plot(bb, mayYearlybb ,'k')
    title('Sugar, Europe, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    mayYearlybc=project2Data(5:12:422,54);
    bc = length(mayYearlybc);
    bc = 1:bc;
   
    plot(bc, mayYearlybc ,'k')
    title('Sugar, Free Market , Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    mayYearlybd=project2Data(5:12:422,55);
    bd = length(mayYearlybd);
    bd = 1:bd;
   
    plot(bd, mayYearlybd ,'k')
    title('Sugar, US, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    mayYearlybe=project2Data(5:12:422,56);
    be = length(mayYearlybe);
    be = 1:be;
   
    plot(be, mayYearlybe ,'k')
    title('Sunflower oil, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    mayYearlybf=project2Data(5:12:422,57);
    bf = length(mayYearlybf);
    bf = 1:bf;
   
    plot(bf, mayYearlybf ,'k')
    title('Tea, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    mayYearlybg=project2Data(5:12:422,58);
    bg = length(mayYearlybg);
    bg = 1:bg;
   
    plot(bg, mayYearlybg ,'k')
    title('Tin, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    mayYearlybh=project2Data(5:12:422,59);
    bh = length(mayYearlybh);
    bh = 1:bh;
   
    plot(bh, mayYearlybh ,'k')
    title('Uranium, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('wheat',c)
    mayYearlybi=project2Data(5:12:422,60);
    bi = length(mayYearlybi);
    bi = 1:bi;
   
    plot(bi, mayYearlybi ,'k')
    title('Wheat, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    mayYearlybj=project2Data(5:12:422,61);
    bj = length(mayYearlybj);
    bj = 1:bj;
   
    plot(bj, mayYearlybj ,'k')
    title('Wool, Coarse, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    mayYearlybk=project2Data(5:12:422,62);
    bk = length(mayYearlybk);
    bk = 1:bk;
   
    plot(bk, mayYearlybk ,'k')
    title('Wool, Fine, Month: May, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    mayYearlybl=project2Data(5:12:422,63);
    bl = length(mayYearlybl);
    bl = 1:bl;
   
    plot(bl, mayYearlybl ,'k')
    title('Zinc, Month: May, Years: 1991 - 2015',...
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


if strcmp('aluminum',c)
    sepYearlyl=project2Data(9:12:422,11);
    l = length(sepYearlyl);
    l = 1:l;
    
    plot(l, sepYearlyl ,'k')
    title('Alluminum, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    sepYearlym=project2Data(9:12:422,12);
    m = length(sepYearlym);
    m = 1:m;
    
    plot(m, sepYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    sepYearlyn=project2Data(9:12:422,13);
    n = length(sepYearlyn);
    n = 1:n;
    
    plot(n, sepYearlyn ,'k')
    title('Barley, Canadian, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    sepYearlyo=project2Data(9:12:422,14);
    o = length(sepYearlyo);
    o = 1:o;
    
    plot(o, sepYearlyo ,'k')
    title('Beef, Australia, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    sepYearlyp=project2Data(9:12:422,15);
    p = length(sepYearlyp);
    p = 1:p;
    
    plot(p, sepYearlyp ,'k')
    title('Coal, Australia, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    sepYearlyq=project2Data(9:12:422,16);
    q = length(sepYearlyq);
    q = 1:q;
    
    plot(q, sepYearlyq ,'k')
    title('Cocoa Beans, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    sepYearlyr=project2Data(9:12:422,17);
    r = length(sepYearlyr);
    r = 1:r;
    
    plot(r, sepYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    sepYearlys=project2Data(9:12:422,18);
    s = length(sepYearlys);
    s = 1:s;
    
    plot(s, sepYearlys ,'k')
    title('Coffee, Robusta, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    sepYearlyt=project2Data(9:12:422,19);
    t = length(sepYearlyt);
    t = 1:t;
    
    plot(t, sepYearlyt ,'k')
    title('Rapseed oil, crude, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    sepYearlyu=project2Data(9:12:422,20);
    u = length(sepYearlyu);
    u = 1:u;
    
    plot(u, sepYearlyu ,'k')
    title('Copper, grade A, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    sepYearlyv=project2Data(9:12:422,21);
    v = length(sepYearlyv);
    v = 1:v;
    
    plot(v, sepYearlyv ,'k')
    title('Cotton, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    sepYearlyw=project2Data(9:12:422,22)
    w = length(sepYearlyw);
    w = 1:w;
    
    plot(w, sepYearlyw ,'k')
    title('Fishmeal, Peru, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    sepYearlyx=project2Data(9:12:422,23);
    x = length(sepYearlyx);
    x = 1:x;
    
    plot(x, sepYearlyx ,'k')
    title('Groundnuts (peanuts), Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    sepYearlyy=project2Data(9:12:422,24);
    y = length(sepYearlyy);
    y = 1:y;
    
    plot(y, sepYearlyy ,'k')
    title('Hides, Heavy native steers, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    sepYearlyz=project2Data(9:12:422,25);
    z = length(sepYearlyz);
    z = 1:z;
    
    plot(z, sepYearlyz ,'k')
    title('China import iron ore, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    sepYearlyaa=project2Data(9:12:422,26);
    aa = length(sepYearlyaa);
    aa = 1:aa;
    
    plot(aa, sepYearlyaa ,'k')
    title('Lamb, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    sepYearlyab=project2Data(9:12:422,27);
    ab = length(sepYearlyab);
    ab = 1:ab;
   
    plot(ab, sepYearlyab ,'k')
    title('Lead, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    sepYearlyac=project2Data(9:12:422,28);
    ac = length(sepYearlyac);
    ac = 1:ac;
   
    plot(ac, sepYearlyac ,'k')
    title('Soft Logos, Average, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    sepYearlyad=project2Data(9:12:422,29);
    ad = length(sepYearlyad);
    ad = 1:ad;
   
    plot(ad, sepYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    sepYearlyae=project2Data(9:12:422,30);
    ae = length(sepYearlyae);
    ae = 1:ae;
   
    plot(ae, sepYearlyae ,'k')
    title('Maize (corn), Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    sepYearlyaf=project2Data(9:12:422,31);
    af = length(sepYearlyaf);
    af = 1:af;
   
    plot(af, sepYearlyaf ,'k')
    title('Natural Gas, Russia, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    sepYearlyag=project2Data(157:12:422,32);
    ag = length(sepYearlyag);
    ag = 1:ag;
   
    plot(ag, sepYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    sepYearlyah=project2Data(145:12:422,33);
    ah = length(sepYearlyah);
    ah = 1:ah;
   
    plot(ah, sepYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    sepYearlyai=project2Data(9:12:422,34);
    ai = length(sepYearlyai);
    ai = 1:ai;
   
    plot(ai, sepYearlyai ,'k')
    title('Nickel, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    sepYearlyaj=project2Data(9:12:422,35);
    aj = length(sepYearlyaj);
    aj = 1:aj;
   
    plot(aj, sepYearlyaj ,'k')
    title('Crude Oil, Average, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    sepYearlyak=project2Data(9:12:422,36);
    ak = length(sepYearlyak);
    ak = 1:ak;
   
    plot(ak, sepYearlyak ,'k')
    title('Crude Oil, UK, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    sepYearlyal=project2Data(9:12:422,37);
    al = length(sepYearlyal);
    al = 1:al;
   
    plot(al, sepYearlyal ,'k')
    title('Oil, Dubai, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    sepYearlyam=project2Data(9:12:422,38);
    am = length(sepYearlyam);
    am = 1:am;
   
    plot(am, sepYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    sepYearlyan=project2Data(9:12:422,39);
    an = length(sepYearlyan);
    an = 1:an;
   
    plot(an, sepYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    sepYearlyao=project2Data(9:12:422,40);
    ao = length(sepYearlyao);
    ao = 1:ao;
   
    plot(ao, sepYearlyao ,'k')
    title('Oranges and miscellaneous, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    sepYearlyap=project2Data(9:12:422,41);
    ap = length(sepYearlyap);
    ap = 1:ap;
   
    plot(ap, sepYearlyap ,'k')
    title('Palm Oil, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    sepYearlyaq=project2Data(9:12:422,42);
    aq = length(sepYearlyaq);
    aq = 1:aq;
   
    plot(aq, sepYearlyaq ,'k')
    title('Swine (pork), Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    sepYearlyar=project2Data(9:12:422,43);
    ar = length(sepYearlyar);
    ar = 1:ar;
   
    plot(ar, sepYearlyar ,'k')
    title('Poultry (chicken), Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    sepYearlyas=project2Data(9:12:422,44);
    as = length(sepYearlyas);
    as = 1:as;
   
    plot(as, sepYearlyas ,'k')
    title('Rice, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    sepYearlyat=project2Data(9:12:422,45);
    at = length(sepYearlyat);
    at = 1:at;
   
    plot(at, sepYearlyat ,'k')
    title('Rubber, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    sepYearlyau=project2Data(9:12:422,46);
    au = length(sepYearlyau);
    au = 1:au;
   
    plot(au, sepYearlyau ,'k')
    title('Fish (salmon), Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    sepYearlyav=project2Data(9:12:422,47);
    av = length(sepYearlyav);
    av = 1:av;
   
    plot(av, sepYearlyav ,'k')
    title('Hard Sawnwood, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    sepYearlyaw=project2Data(9:12:422,48);
    aw = length(sepYearlyaw);
    aw = 1:aw;
   
    plot(aw, sepYearlyaw ,'k')
    title('Soft Sawnwood, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    sepYearlyax=project2Data(9:12:422,49);
    ax = length(sepYearlyax);
    ax = 1:ax;
   
    plot(ax, sepYearlyax ,'k')
    title('Shrimp, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    sepYearlyay=project2Data(9:12:422,50)
    ay = length(sepYearlyay);
    ay = 1:ay;
   
    plot(ay, sepYearlyay ,'k')
    title('Soybean Meal, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    sepYearlyaz=project2Data(9:12:422,51);
    az = length(sepYearlyaz);
    az = 1:az;
   
    plot(az, sepYearlyaz ,'k')
    title('Soybean Oil, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    sepYearlyba=project2Data(9:12:422,52);
    ba = length(sepYearlyba);
    ba = 1:ba;
   
    plot(ba, sepYearlyba ,'k')
    title('Soybeans, US, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    sepYearlybb=project2Data(145:12:422,53);
    bb = length(sepYearlybb);
    bb = 1:bb;
   
    plot(bb, sepYearlybb ,'k')
    title('Sugar, Europe, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    sepYearlybc=project2Data(9:12:422,54);
    bc = length(sepYearlybc);
    bc = 1:bc;
   
    plot(bc, sepYearlybc ,'k')
    title('Sugar, Free Market , Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    sepYearlybd=project2Data(9:12:422,55);
    bd = length(sepYearlybd);
    bd = 1:bd;
   
    plot(bd, sepYearlybd ,'k')
    title('Sugar, US, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    sepYearlybe=project2Data(9:12:422,56);
    be = length(sepYearlybe);
    be = 1:be;
   
    plot(be, sepYearlybe ,'k')
    title('Sunflower oil, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    sepYearlybf=project2Data(9:12:422,57);
    bf = length(sepYearlybf);
    bf = 1:bf;
   
    plot(bf, sepYearlybf ,'k')
    title('Tea, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    sepYearlybg=project2Data(9:12:422,58);
    bg = length(sepYearlybg);
    bg = 1:bg;
   
    plot(bg, sepYearlybg ,'k')
    title('Tin, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    sepYearlybh=project2Data(9:12:422,59);
    bh = length(sepYearlybh);
    bh = 1:bh;
   
    plot(bh, sepYearlybh ,'k')
    title('Uranium, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 


if strcmp('wheat',c)
    sepYearlybi=project2Data(9:12:422,60);
    bi = length(sepYearlybi);
    bi = 1:bi;
   
    plot(bi, sepYearlybi ,'k')
    title('Wheat, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    sepYearlybj=project2Data(9:12:422,61);
    bj = length(sepYearlybj);
    bj = 1:bj;
   
    plot(bj, sepYearlybj ,'k')
    title('Wool, Coarse, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    sepYearlybk=project2Data(9:12:422,62);
    bk = length(sepYearlybk);
    bk = 1:bk;
   
    plot(bk, sepYearlybk ,'k')
    title('Wool, Fine, Month: Sep, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    sepYearlybl=project2Data(9:12:422,63);
    bl = length(sepYearlybl);
    bl = 1:bl;
   
    plot(bl, sepYearlybl ,'k')
    title('Zinc, Month: Sep, Years: 1991 - 2015',...
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


if strcmp('aluminum',c)
    octYearlyl=project2Data(10:12:422,11);
    l = length(octYearlyl);
    l = 1:l;
    
    plot(l, octYearlyl ,'k')
    title('Alluminum, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    octYearlym=project2Data(10:12:422,12);
    m = length(octYearlym);
    m = 1:m;
    
    plot(m, octYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    octYearlyn=project2Data(10:12:422,13);
    n = length(octYearlyn);
    n = 1:n;
    
    plot(n, octYearlyn ,'k')
    title('Barley, Canadian, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    octYearlyo=project2Data(10:12:422,14);
    o = length(octYearlyo);
    o = 1:o;
    
    plot(o, octYearlyo ,'k')
    title('Beef, Australia, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    octYearlyp=project2Data(10:12:422,15);
    p = length(octYearlyp);
    p = 1:p;
    
    plot(p, octYearlyp ,'k')
    title('Coal, Australia, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    octYearlyq=project2Data(10:12:422,16);
    q = length(octYearlyq);
    q = 1:q;
    
    plot(q, octYearlyq ,'k')
    title('Cocoa Beans, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    octYearlyr=project2Data(10:12:422,17);
    r = length(octYearlyr);
    r = 1:r;
    
    plot(r, octYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    octYearlys=project2Data(10:12:422,18);
    s = length(octYearlys);
    s = 1:s;
    
    plot(s, octYearlys ,'k')
    title('Coffee, Robusta, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    octYearlyt=project2Data(10:12:422,19);
    t = length(octYearlyt);
    t = 1:t;
    
    plot(t, octYearlyt ,'k')
    title('Rapseed oil, crude, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    octYearlyu=project2Data(10:12:422,20);
    u = length(octYearlyu);
    u = 1:u;
    
    plot(u, octYearlyu ,'k')
    title('Copper, grade A, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    octYearlyv=project2Data(10:12:422,21);
    v = length(octYearlyv);
    v = 1:v;
    
    plot(v, octYearlyv ,'k')
    title('Cotton, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    octYearlyw=project2Data(10:12:422,22)
    w = length(octYearlyw);
    w = 1:w;
    
    plot(w, octYearlyw ,'k')
    title('Fishmeal, Peru, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    octYearlyx=project2Data(10:12:422,23);
    x = length(octYearlyx);
    x = 1:x;
    
    plot(x, octYearlyx ,'k')
    title('Groundnuts (peanuts), Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    octYearlyy=project2Data(10:12:422,24);
    y = length(octYearlyy);
    y = 1:y;
    
    plot(y, octYearlyy ,'k')
    title('Hides, Heavy native steers, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    octYearlyz=project2Data(10:12:422,25);
    z = length(octYearlyz);
    z = 1:z;
    
    plot(z, octYearlyz ,'k')
    title('China import iron ore, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    octYearlyaa=project2Data(10:12:422,26);
    aa = length(octYearlyaa);
    aa = 1:aa;
    
    plot(aa, octYearlyaa ,'k')
    title('Lamb, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    octYearlyab=project2Data(10:12:422,27);
    ab = length(octYearlyab);
    ab = 1:ab;
   
    plot(ab, octYearlyab ,'k')
    title('Lead, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    octYearlyac=project2Data(10:12:422,28);
    ac = length(octYearlyac);
    ac = 1:ac;
   
    plot(ac, octYearlyac ,'k')
    title('Soft Logos, Average, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    octYearlyad=project2Data(10:12:422,29);
    ad = length(octYearlyad);
    ad = 1:ad;
   
    plot(ad, octYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    octYearlyae=project2Data(10:12:422,30);
    ae = length(octYearlyae);
    ae = 1:ae;
   
    plot(ae, octYearlyae ,'k')
    title('Maize (corn), Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    octYearlyaf=project2Data(10:12:422,31);
    af = length(octYearlyaf);
    af = 1:af;
   
    plot(af, octYearlyaf ,'k')
    title('Natural Gas, Russia, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    octYearlyag=project2Data(158:12:422,32);
    ag = length(octYearlyag);
    ag = 1:ag;
   
    plot(ag, octYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    octYearlyah=project2Data(146:12:422,33);
    ah = length(octYearlyah);
    ah = 1:ah;
   
    plot(ah, octYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    octYearlyai=project2Data(10:12:422,34);
    ai = length(octYearlyai);
    ai = 1:ai;
   
    plot(ai, octYearlyai ,'k')
    title('Nickel, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    octYearlyaj=project2Data(10:12:422,35);
    aj = length(octYearlyaj);
    aj = 1:aj;
   
    plot(aj, octYearlyaj ,'k')
    title('Crude Oil, Average, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    octYearlyak=project2Data(10:12:422,36);
    ak = length(octYearlyak);
    ak = 1:ak;
   
    plot(ak, octYearlyak ,'k')
    title('Crude Oil, UK, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    octYearlyal=project2Data(10:12:422,37);
    al = length(octYearlyal);
    al = 1:al;
   
    plot(al, octYearlyal ,'k')
    title('Oil, Dubai, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    octYearlyam=project2Data(10:12:422,38);
    am = length(octYearlyam);
    am = 1:am;
   
    plot(am, octYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    octYearlyan=project2Data(10:12:422,39);
    an = length(octYearlyan);
    an = 1:an;
   
    plot(an, octYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    octYearlyao=project2Data(10:12:422,40);
    ao = length(octYearlyao);
    ao = 1:ao;
   
    plot(ao, octYearlyao ,'k')
    title('Oranges and miscellaneous, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    octYearlyap=project2Data(10:12:422,41);
    ap = length(octYearlyap);
    ap = 1:ap;
   
    plot(ap, octYearlyap ,'k')
    title('Palm Oil, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    octYearlyaq=project2Data(10:12:422,42);
    aq = length(octYearlyaq);
    aq = 1:aq;
   
    plot(aq, octYearlyaq ,'k')
    title('Swine (pork), Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    octYearlyar=project2Data(10:12:422,43);
    ar = length(octYearlyar);
    ar = 1:ar;
   
    plot(ar, octYearlyar ,'k')
    title('Poultry (chicken), Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    octYearlyas=project2Data(10:12:422,44);
    as = length(octYearlyas);
    as = 1:as;
   
    plot(as, octYearlyas ,'k')
    title('Rice, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    octYearlyat=project2Data(10:12:422,45);
    at = length(octYearlyat);
    at = 1:at;
   
    plot(at, octYearlyat ,'k')
    title('Rubber, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    octYearlyau=project2Data(10:12:422,46);
    au = length(octYearlyau);
    au = 1:au;
   
    plot(au, octYearlyau ,'k')
    title('Fish (salmon), Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    octYearlyav=project2Data(10:12:422,47);
    av = length(octYearlyav);
    av = 1:av;
   
    plot(av, octYearlyav ,'k')
    title('Hard Sawnwood, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    octYearlyaw=project2Data(10:12:422,48);
    aw = length(octYearlyaw);
    aw = 1:aw;
   
    plot(aw, octYearlyaw ,'k')
    title('Soft Sawnwood, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    octYearlyax=project2Data(10:12:422,49);
    ax = length(octYearlyax);
    ax = 1:ax;
   
    plot(ax, octYearlyax ,'k')
    title('Shrimp, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    octYearlyay=project2Data(10:12:422,50)
    ay = length(octYearlyay);
    ay = 1:ay;
   
    plot(ay, octYearlyay ,'k')
    title('Soybean Meal, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    octYearlyaz=project2Data(10:12:422,51);
    az = length(octYearlyaz);
    az = 1:az;
   
    plot(az, octYearlyaz ,'k')
    title('Soybean Oil, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    octYearlyba=project2Data(10:12:422,52);
    ba = length(octYearlyba);
    ba = 1:ba;
   
    plot(ba, octYearlyba ,'k')
    title('Soybeans, US, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    octYearlybb=project2Data(146:12:422,53);
    bb = length(octYearlybb);
    bb = 1:bb;
   
    plot(bb, octYearlybb ,'k')
    title('Sugar, Europe, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    octYearlybc=project2Data(10:12:422,54);
    bc = length(octYearlybc);
    bc = 1:bc;
   
    plot(bc, octYearlybc ,'k')
    title('Sugar, Free Market , Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    octYearlybd=project2Data(10:12:422,55);
    bd = length(octYearlybd);
    bd = 1:bd;
   
    plot(bd, octYearlybd ,'k')
    title('Sugar, US, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    octYearlybe=project2Data(10:12:422,56);
    be = length(octYearlybe);
    be = 1:be;
   
    plot(be, octYearlybe ,'k')
    title('Sunflower oil, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    octYearlybf=project2Data(10:12:422,57);
    bf = length(octYearlybf);
    bf = 1:bf;
   
    plot(bf, octYearlybf ,'k')
    title('Tea, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    octYearlybg=project2Data(10:12:422,58);
    bg = length(octYearlybg);
    bg = 1:bg;
   
    plot(bg, octYearlybg ,'k')
    title('Tin, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    octYearlybh=project2Data(10:12:422,59);
    bh = length(octYearlybh);
    bh = 1:bh;
   
    plot(bh, octYearlybh ,'k')
    title('Uranium, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 


if strcmp('wheat',c)
    octYearlybi=project2Data(10:12:422,60);
    bi = length(octYearlybi);
    bi = 1:bi;
   
    plot(bi, octYearlybi ,'k')
    title('Wheat, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    octYearlybj=project2Data(10:12:422,61);
    bj = length(octYearlybj);
    bj = 1:bj;
   
    plot(bj, octYearlybj ,'k')
    title('Wool, Coarse, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    octYearlybk=project2Data(10:12:422,62);
    bk = length(octYearlybk);
    bk = 1:bk;
   
    plot(bk, octYearlybk ,'k')
    title('Wool, Fine, Month: Oct, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    octYearlybl=project2Data(10:12:422,63);
    bl = length(octYearlybl);
    bl = 1:bl;
   
    plot(bl, octYearlybl ,'k')
    title('Zinc, Month: Oct, Years: 1991 - 2015',...
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


if strcmp('aluminum',c)
    junYearlyl=project2Data(6:12:422,11);
    l = length(junYearlyl);
    l = 1:l;
    
    plot(l, junYearlyl ,'k')
    title('Alluminum, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    junYearlym=project2Data(6:12:422,12);
    m = length(junYearlym);
    m = 1:m;
    
    plot(m, junYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    junYearlyn=project2Data(6:12:422,13);
    n = length(junYearlyn);
    n = 1:n;
    
    plot(n, junYearlyn ,'k')
    title('Barley, Canadian, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    junYearlyo=project2Data(6:12:422,14);
    o = length(junYearlyo);
    o = 1:o;
    
    plot(o, junYearlyo ,'k')
    title('Beef, Australia, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    junYearlyp=project2Data(6:12:422,15);
    p = length(junYearlyp);
    p = 1:p;
    
    plot(p, junYearlyp ,'k')
    title('Coal, Australia, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    junYearlyq=project2Data(6:12:422,16);
    q = length(junYearlyq);
    q = 1:q;
    
    plot(q, junYearlyq ,'k')
    title('Cocoa Beans, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    junYearlyr=project2Data(6:12:422,17);
    r = length(junYearlyr);
    r = 1:r;
    
    plot(r, junYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    junYearlys=project2Data(6:12:422,18);
    s = length(junYearlys);
    s = 1:s;
    
    plot(s, junYearlys ,'k')
    title('Coffee, Robusta, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    junYearlyt=project2Data(6:12:422,19);
    t = length(junYearlyt);
    t = 1:t;
    
    plot(t, junYearlyt ,'k')
    title('Rapseed oil, crude, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    junYearlyu=project2Data(6:12:422,20);
    u = length(junYearlyu);
    u = 1:u;
    
    plot(u, junYearlyu ,'k')
    title('Copper, grade A, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    junYearlyv=project2Data(6:12:422,21);
    v = length(junYearlyv);
    v = 1:v;
    
    plot(v, junYearlyv ,'k')
    title('Cotton, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    junYearlyw=project2Data(6:12:422,22)
    w = length(junYearlyw);
    w = 1:w;
    
    plot(w, junYearlyw ,'k')
    title('Fishmeal, Peru, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    junYearlyx=project2Data(6:12:422,23);
    x = length(junYearlyx);
    x = 1:x;
    
    plot(x, junYearlyx ,'k')
    title('Groundnuts (peanuts), Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    junYearlyy=project2Data(6:12:422,24);
    y = length(junYearlyy);
    y = 1:y;
    
    plot(y, junYearlyy ,'k')
    title('Hides, Heavy native steers, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    junYearlyz=project2Data(6:12:422,25);
    z = length(junYearlyz);
    z = 1:z;
    
    plot(z, junYearlyz ,'k')
    title('China import iron ore, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    junYearlyaa=project2Data(6:12:422,26);
    aa = length(junYearlyaa);
    aa = 1:aa;
    
    plot(aa, junYearlyaa ,'k')
    title('Lamb, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    junYearlyab=project2Data(6:12:422,27);
    ab = length(junYearlyab);
    ab = 1:ab;
   
    plot(ab, junYearlyab ,'k')
    title('Lead, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    junYearlyac=project2Data(6:12:422,28);
    ac = length(junYearlyac);
    ac = 1:ac;
   
    plot(ac, junYearlyac ,'k')
    title('Soft Logos, Average, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    junYearlyad=project2Data(6:12:422,29);
    ad = length(junYearlyad);
    ad = 1:ad;
   
    plot(ad, junYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    junYearlyae=project2Data(6:12:422,30);
    ae = length(junYearlyae);
    ae = 1:ae;
   
    plot(ae, junYearlyae ,'k')
    title('Maize (corn), Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    junYearlyaf=project2Data(70:12:422,31);
    af = length(junYearlyaf);
    af = 1:af;
   
    plot(af, junYearlyaf ,'k')
    title('Natural Gas, Russia, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    junYearlyag=project2Data(154:12:422,32);
    ag = length(junYearlyag);
    ag = 1:ag;
   
    plot(ag, junYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    junYearlyah=project2Data(142:12:422,33);
    ah = length(junYearlyah);
    ah = 1:ah;
   
    plot(ah, junYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    junYearlyai=project2Data(6:12:422,34);
    ai = length(junYearlyai);
    ai = 1:ai;
   
    plot(ai, junYearlyai ,'k')
    title('Nickel, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    junYearlyaj=project2Data(6:12:422,35);
    aj = length(junYearlyaj);
    aj = 1:aj;
   
    plot(aj, junYearlyaj ,'k')
    title('Crude Oil, Average, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    junYearlyak=project2Data(6:12:422,36);
    ak = length(junYearlyak);
    ak = 1:ak;
   
    plot(ak, junYearlyak ,'k')
    title('Crude Oil, UK, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    junYearlyal=project2Data(6:12:422,37);
    al = length(junYearlyal);
    al = 1:al;
   
    plot(al, junYearlyal ,'k')
    title('Oil, Dubai, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    junYearlyam=project2Data(6:12:422,38);
    am = length(junYearlyam);
    am = 1:am;
   
    plot(am, junYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    junYearlyan=project2Data(6:12:422,39);
    an = length(junYearlyan);
    an = 1:an;
   
    plot(an, junYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    junYearlyao=project2Data(6:12:422,40);;
    ao = length(junYearlyao);
    ao = 1:ao;
   
    plot(ao, junYearlyao ,'k')
    title('Oranges and miscellaneous, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    junYearlyap=project2Data(6:12:422,41);
    ap = length(junYearlyap);
    ap = 1:ap;
   
    plot(ap, junYearlyap ,'k')
    title('Palm Oil, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    junYearlyaq=project2Data(6:12:422,42);
    aq = length(junYearlyaq);
    aq = 1:aq;
   
    plot(aq, junYearlyaq ,'k')
    title('Swine (pork), Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    junYearlyar=project2Data(6:12:422,43);
    ar = length(junYearlyar);
    ar = 1:ar;
   
    plot(ar, junYearlyar ,'k')
    title('Poultry (chicken), Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    junYearlyas=project2Data(6:12:422,44);
    as = length(junYearlyas);
    as = 1:as;
   
    plot(as, junYearlyas ,'k')
    title('Rice, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    junYearlyat=project2Data(6:12:422,45);
    at = length(junYearlyat);
    at = 1:at;
   
    plot(at, junYearlyat ,'k')
    title('Rubber, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    junYearlyau=project2Data(6:12:422,46);
    au = length(junYearlyau);
    au = 1:au;
   
    plot(au, junYearlyau ,'k')
    title('Fish (salmon), Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    junYearlyav=project2Data(6:12:422,47);
    av = length(junYearlyav);
    av = 1:av;
   
    plot(av, junYearlyav ,'k')
    title('Hard Sawnwood, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    junYearlyaw=project2Data(6:12:422,48);
    aw = length(junYearlyaw);
    aw = 1:aw;
   
    plot(aw, junYearlyaw ,'k')
    title('Soft Sawnwood, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    junYearlyax=project2Data(6:12:422,49);
    ax = length(junYearlyax);
    ax = 1:ax;
   
    plot(ax, junYearlyax ,'k')
    title('Shrimp, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    junYearlyay=project2Data(6:12:422,50)
    ay = length(junYearlyay);
    ay = 1:ay;
   
    plot(ay, junYearlyay ,'k')
    title('Soybean Meal, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    junYearlyaz=project2Data(6:12:422,51);
    az = length(junYearlyaz);
    az = 1:az;
   
    plot(az, junYearlyaz ,'k')
    title('Soybean Oil, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    junYearlyba=project2Data(6:12:422,52);
    ba = length(junYearlyba);
    ba = 1:ba;
   
    plot(ba, junYearlyba ,'k')
    title('Soybeans, US, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    junYearlybb=project2Data(142:12:422,53);
    bb = length(junYearlybb);
    bb = 1:bb;
   
    plot(bb, junYearlybb ,'k')
    title('Sugar, Europe, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    junYearlybc=project2Data(6:12:422,54);
    bc = length(junYearlybc);
    bc = 1:bc;
   
    plot(bc, junYearlybc ,'k')
    title('Sugar, Free Market , Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    junYearlybd=project2Data(6:12:422,55);
    bd = length(junYearlybd);
    bd = 1:bd;
   
    plot(bd, junYearlybd ,'k')
    title('Sugar, US, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    junYearlybe=project2Data(6:12:422,56);
    be = length(junYearlybe);
    be = 1:be;
   
    plot(be, junYearlybe ,'k')
    title('Sunflower oil, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    junYearlybf=project2Data(6:12:422,57);
    bf = length(junYearlybf);
    bf = 1:bf;
   
    plot(bf, junYearlybf ,'k')
    title('Tea, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    junYearlybg=project2Data(6:12:422,58);
    bg = length(junYearlybg);
    bg = 1:bg;
   
    plot(bg, junYearlybg ,'k')
    title('Tin, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    junYearlybh=project2Data(6:12:422,59);
    bh = length(junYearlybh);
    bh = 1:bh;
   
    plot(bh, junYearlybh ,'k')
    title('Uranium, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 


if strcmp('wheat',c)
    junYearlybi=project2Data(6:12:422,60);
    bi = length(junYearlybi);
    bi = 1:bi;
   
    plot(bi, junYearlybi ,'k')
    title('Wheat, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    junYearlybj=project2Data(6:12:422,61);
    bj = length(junYearlybj);
    bj = 1:bj;
   
    plot(bj, junYearlybj ,'k')
    title('Wool, Coarse, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    junYearlybk=project2Data(6:12:422,62);
    bk = length(junYearlybk);
    bk = 1:bk;
   
    plot(bk, junYearlybk ,'k')
    title('Wool, Fine, Month: Jun, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    junYearlybl=project2Data(6:12:422,63);
    bl = length(junYearlybl);
    bl = 1:bl;
   
    plot(bl, junYearlybl ,'k')
    title('Zinc, Month: Jun, Years: 1991 - 2015',...
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



if strcmp('aluminum',c)
    novYearlyl=project2Data(11:12:422,11);
    l = length(novYearlyl);
    l = 1:l;
    
    plot(l, novYearlyl ,'k')
    title('Alluminum, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    novYearlym=project2Data(11:12:422,12);
    m = length(novYearlym);
    m = 1:m;
    
    plot(m, novYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    novYearlyn=project2Data(11:12:422,13);
    n = length(novYearlyn);
    n = 1:n;
    
    plot(n, novYearlyn ,'k')
    title('Barley, Canadian, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    novYearlyo=project2Data(11:12:422,14);
    o = length(novYearlyo);
    o = 1:o;
    
    plot(o, novYearlyo ,'k')
    title('Beef, Australia, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    novYearlyp=project2Data(11:12:422,15);
    p = length(novYearlyp);
    p = 1:p;
    
    plot(p, novYearlyp ,'k')
    title('Coal, Australia, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    novYearlyq=project2Data(11:12:422,16);
    q = length(novYearlyq);
    q = 1:q;
    
    plot(q, novYearlyq ,'k')
    title('Cocoa Beans, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    novYearlyr=project2Data(11:12:422,17);
    r = length(novYearlyr);
    r = 1:r;
    
    plot(r, novYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    novYearlys=project2Data(11:12:422,18);
    s = length(novYearlys);
    s = 1:s;
    
    plot(s, novYearlys ,'k')
    title('Coffee, Robusta, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    novYearlyt=project2Data(11:12:422,19);
    t = length(novYearlyt);
    t = 1:t;
    
    plot(t, novYearlyt ,'k')
    title('Rapseed oil, crude, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    novYearlyu=project2Data(11:12:422,20);
    u = length(novYearlyu);
    u = 1:u;
    
    plot(u, novYearlyu ,'k')
    title('Copper, grade A, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    novYearlyv=project2Data(11:12:422,21);
    v = length(novYearlyv);
    v = 1:v;
    
    plot(v, novYearlyv ,'k')
    title('Cotton, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    novYearlyw=project2Data(11:12:422,22)
    w = length(novYearlyw);
    w = 1:w;
    
    plot(w, novYearlyw ,'k')
    title('Fishmeal, Peru, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    novYearlyx=project2Data(11:12:422,23);
    x = length(novYearlyx);
    x = 1:x;
    
    plot(x, novYearlyx ,'k')
    title('Groundnuts (peanuts), Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    novYearlyy=project2Data(11:12:422,24);
    y = length(novYearlyy);
    y = 1:y;
    
    plot(y, novYearlyy ,'k')
    title('Hides, Heavy native steers, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    novYearlyz=project2Data(11:12:422,25);
    z = length(novYearlyz);
    z = 1:z;
    
    plot(z, novYearlyz ,'k')
    title('China import iron ore, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    novYearlyaa=project2Data(11:12:422,26);
    aa = length(novYearlyaa);
    aa = 1:aa;
    
    plot(aa, novYearlyaa ,'k')
    title('Lamb, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    novYearlyab=project2Data(11:12:422,27);
    ab = length(novYearlyab);
    ab = 1:ab;
   
    plot(ab, novYearlyab ,'k')
    title('Lead, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    novYearlyac=project2Data(11:12:422,28);
    ac = length(novYearlyac);
    ac = 1:ac;
   
    plot(ac, novYearlyac ,'k')
    title('Soft Logos, Average, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    novYearlyad=project2Data(11:12:422,29);
    ad = length(novYearlyad);
    ad = 1:ad;
   
    plot(ad, novYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    novYearlyae=project2Data(11:12:422,30);
    ae = length(novYearlyae);
    ae = 1:ae;
   
    plot(ae, novYearlyae ,'k')
    title('Maize (corn), Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    novYearlyaf=project2Data(11:12:422,31);
    af = length(novYearlyaf);
    af = 1:af;
   
    plot(af, novYearlyaf ,'k')
    title('Natural Gas, Russia, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    novYearlyag=project2Data(159:12:422,32);
    ag = length(novYearlyag);
    ag = 1:ag;
   
    plot(ag, novYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    novYearlyah=project2Data(147:12:422,33);
    ah = length(novYearlyah);
    ah = 1:ah;
   
    plot(ah, novYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    novYearlyai=project2Data(11:12:422,34);
    ai = length(novYearlyai);
    ai = 1:ai;
   
    plot(ai, novYearlyai ,'k')
    title('Nickel, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    novYearlyaj=project2Data(11:12:422,35);
    aj = length(novYearlyaj);
    aj = 1:aj;
   
    plot(aj, novYearlyaj ,'k')
    title('Crude Oil, Average, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    novYearlyak=project2Data(11:12:422,36);
    ak = length(novYearlyak);
    ak = 1:ak;
   
    plot(ak, novYearlyak ,'k')
    title('Crude Oil, UK, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    novYearlyal=project2Data(11:12:422,37);
    al = length(novYearlyal);
    al = 1:al;
   
    plot(al, novYearlyal ,'k')
    title('Oil, Dubai, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    novYearlyam=project2Data(11:12:422,38);
    am = length(novYearlyam);
    am = 1:am;
   
    plot(am, novYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    novYearlyan=project2Data(11:12:422,39);
    an = length(novYearlyan);
    an = 1:an;
   
    plot(an, novYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    novYearlyao=project2Data(11:12:422,40);
    ao = length(novYearlyao);
    ao = 1:ao;
   
    plot(ao, novYearlyao ,'k')
    title('Oranges and miscellaneous, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    novYearlyap=project2Data(11:12:422,41);
    ap = length(novYearlyap);
    ap = 1:ap;
   
    plot(ap, novYearlyap ,'k')
    title('Palm Oil, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    novYearlyaq=project2Data(11:12:422,42);
    aq = length(novYearlyaq);
    aq = 1:aq;
   
    plot(aq, novYearlyaq ,'k')
    title('Swine (pork), Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    novYearlyar=project2Data(11:12:422,43);
    ar = length(novYearlyar);
    ar = 1:ar;
   
    plot(ar, novYearlyar ,'k')
    title('Poultry (chicken), Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    novYearlyas=project2Data(11:12:422,44);
    as = length(novYearlyas);
    as = 1:as;
   
    plot(as, novYearlyas ,'k')
    title('Rice, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    novYearlyat=project2Data(11:12:422,45);
    at = length(novYearlyat);
    at = 1:at;
   
    plot(at, novYearlyat ,'k')
    title('Rubber, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    novYearlyau=project2Data(11:12:422,46);
    au = length(novYearlyau);
    au = 1:au;
   
    plot(au, novYearlyau ,'k')
    title('Fish (salmon), Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    novYearlyav=project2Data(11:12:422,47);
    av = length(novYearlyav);
    av = 1:av;
   
    plot(av, novYearlyav ,'k')
    title('Hard Sawnwood, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    novYearlyaw=project2Data(11:12:422,48);
    aw = length(novYearlyaw);
    aw = 1:aw;
   
    plot(aw, novYearlyaw ,'k')
    title('Soft Sawnwood, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    novYearlyax=project2Data(11:12:422,49);
    ax = length(novYearlyax);
    ax = 1:ax;
   
    plot(ax, novYearlyax ,'k')
    title('Shrimp, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    novYearlyay=project2Data(11:12:422,50)
    ay = length(novYearlyay);
    ay = 1:ay;
   
    plot(ay, novYearlyay ,'k')
    title('Soybean Meal, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    novYearlyaz=project2Data(11:12:422,51);
    az = length(novYearlyaz);
    az = 1:az;
   
    plot(az, novYearlyaz ,'k')
    title('Soybean Oil, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    novYearlyba=project2Data(11:12:422,52);
    ba = length(novYearlyba);
    ba = 1:ba;
   
    plot(ba, novYearlyba ,'k')
    title('Soybeans, US, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    novYearlybb=project2Data(147:12:422,53);
    bb = length(novYearlybb);
    bb = 1:bb;
   
    plot(bb, novYearlybb ,'k')
    title('Sugar, Europe, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    novYearlybc=project2Data(11:12:422,54);
    bc = length(novYearlybc);
    bc = 1:bc;
   
    plot(bc, novYearlybc ,'k')
    title('Sugar, Free Market , Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    novYearlybd=project2Data(11:12:422,55);
    bd = length(novYearlybd);
    bd = 1:bd;
   
    plot(bd, novYearlybd ,'k')
    title('Sugar, US, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    novYearlybe=project2Data(11:12:422,56);
    be = length(novYearlybe);
    be = 1:be;
   
    plot(be, novYearlybe ,'k')
    title('Sunflower oil, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    novYearlybf=project2Data(11:12:422,57);
    bf = length(novYearlybf);
    bf = 1:bf;
   
    plot(bf, novYearlybf ,'k')
    title('Tea, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    novYearlybg=project2Data(11:12:422,58);
    bg = length(novYearlybg);
    bg = 1:bg;
   
    plot(bg, novYearlybg ,'k')
    title('Tin, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    novYearlybh=project2Data(11:12:422,59);
    bh = length(novYearlybh);
    bh = 1:bh;
   
    plot(bh, novYearlybh ,'k')
    title('Uranium, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 


if strcmp('wheat',c)
    novYearlybi=project2Data(11:12:422,60);
    bi = length(novYearlybi);
    bi = 1:bi;
   
    plot(bi, novYearlybi ,'k')
    title('Wheat, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    novYearlybj=project2Data(11:12:422,61);
    bj = length(novYearlybj);
    bj = 1:bj;
   
    plot(bj, novYearlybj ,'k')
    title('Wool, Coarse, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    novYearlybk=project2Data(11:12:422,62);
    bk = length(novYearlybk);
    bk = 1:bk;
   
    plot(bk, novYearlybk ,'k')
    title('Wool, Fine, Month: Nov, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    novYearlybl=project2Data(11:12:422,63);
    bl = length(novYearlybl);
    bl = 1:bl;
   
    plot(bl, novYearlybl ,'k')
    title('Zinc, Month: Nov, Years: 1991 - 2015',...
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
if strcmp('aluminum',c)
    julYearlyl=project2Data(7:12:422,11);
    l = length(julYearlyl);
    l = 1:l;
    
    plot(l, julYearlyl ,'k')
    title('Alluminum, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    julYearlym=project2Data(7:12:422,12);
    m = length(julYearlym);
    m = 1:m;
    
    plot(m, julYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    julYearlyn=project2Data(7:12:422,13);
    n = length(julYearlyn);
    n = 1:n;
    
    plot(n, julYearlyn ,'k')
    title('Barley, Canadian, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    julYearlyo=project2Data(7:12:422,14);
    o = length(julYearlyo);
    o = 1:o;
    
    plot(o, julYearlyo ,'k')
    title('Beef, Australia, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    julYearlyp=project2Data(7:12:422,15);
    p = length(julYearlyp);
    p = 1:p;
    
    plot(p, julYearlyp ,'k')
    title('Coal, Australia, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    julYearlyq=project2Data(7:12:422,16);
    q = length(julYearlyq);
    q = 1:q;
    
    plot(q, julYearlyq ,'k')
    title('Cocoa Beans, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    julYearlyr=project2Data(7:12:422,17);
    r = length(julYearlyr);
    r = 1:r;
    
    plot(r, julYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    julYearlys=project2Data(7:12:422,18);
    s = length(julYearlys);
    s = 1:s;
    
    plot(s, julYearlys ,'k')
    title('Coffee, Robusta, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    julYearlyt=project2Data(7:12:422,19);
    t = length(julYearlyt);
    t = 1:t;
    
    plot(t, julYearlyt ,'k')
    title('Rapseed oil, crude, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    julYearlyu=project2Data(7:12:422,20);
    u = length(julYearlyu);
    u = 1:u;
    
    plot(u, julYearlyu ,'k')
    title('Copper, grade A, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    julYearlyv=project2Data(7:12:422,21);
    v = length(julYearlyv);
    v = 1:v;
    
    plot(v, julYearlyv ,'k')
    title('Cotton, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    julYearlyw=project2Data(7:12:422,22)
    w = length(julYearlyw);
    w = 1:w;
    
    plot(w, julYearlyw ,'k')
    title('Fishmeal, Peru, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    julYearlyx=project2Data(7:12:422,23);
    x = length(julYearlyx);
    x = 1:x;
    
    plot(x, julYearlyx ,'k')
    title('Groundnuts (peanuts), Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    julYearlyy=project2Data(7:12:422,24);
    y = length(julYearlyy);
    y = 1:y;
    
    plot(y, julYearlyy ,'k')
    title('Hides, Heavy native steers, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    julYearlyz=project2Data(7:12:422,25);
    z = length(julYearlyz);
    z = 1:z;
    
    plot(z, julYearlyz ,'k')
    title('China import iron ore, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    julYearlyaa=project2Data(7:12:422,26);
    aa = length(julYearlyaa);
    aa = 1:aa;
    
    plot(aa, julYearlyaa ,'k')
    title('Lamb, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    julYearlyab=project2Data(7:12:422,27);
    ab = length(julYearlyab);
    ab = 1:ab;
   
    plot(ab, julYearlyab ,'k')
    title('Lead, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    julYearlyac=project2Data(7:12:422,28);
    ac = length(julYearlyac);
    ac = 1:ac;
   
    plot(ac, julYearlyac ,'k')
    title('Soft Logos, Average, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    julYearlyad=project2Data(7:12:422,29);
    ad = length(julYearlyad);
    ad = 1:ad;
   
    plot(ad, julYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    julYearlyae=project2Data(7:12:422,30);
    ae = length(julYearlyae);
    ae = 1:ae;
   
    plot(ae, julYearlyae ,'k')
    title('Maize (corn), Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    julYearlyaf=project2Data(70:12:422,31);
    af = length(julYearlyaf);
    af = 1:af;
   
    plot(af, julYearlyaf ,'k')
    title('Natural Gas, Russia, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    julYearlyag=project2Data(154:12:422,32);
    ag = length(julYearlyag);
    ag = 1:ag;
   
    plot(ag, julYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    julYearlyah=project2Data(142:12:422,33);
    ah = length(julYearlyah);
    ah = 1:ah;
   
    plot(ah, julYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    julYearlyai=project2Data(7:12:422,34);
    ai = length(julYearlyai);
    ai = 1:ai;
   
    plot(ai, julYearlyai ,'k')
    title('Nickel, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    julYearlyaj=project2Data(7:12:422,35);
    aj = length(julYearlyaj);
    aj = 1:aj;
   
    plot(aj, julYearlyaj ,'k')
    title('Crude Oil, Average, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    julYearlyak=project2Data(7:12:422,36);
    ak = length(julYearlyak);
    ak = 1:ak;
   
    plot(ak, julYearlyak ,'k')
    title('Crude Oil, UK, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    julYearlyal=project2Data(7:12:422,37);
    al = length(julYearlyal);
    al = 1:al;
   
    plot(al, julYearlyal ,'k')
    title('Oil, Dubai, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    julYearlyam=project2Data(7:12:422,38);
    am = length(julYearlyam);
    am = 1:am;
   
    plot(am, julYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    julYearlyan=project2Data(7:12:422,39);
    an = length(julYearlyan);
    an = 1:an;
   
    plot(an, julYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    julYearlyao=project2Data(7:12:422,40);;
    ao = length(julYearlyao);
    ao = 1:ao;
   
    plot(ao, julYearlyao ,'k')
    title('Oranges and miscellaneous, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    julYearlyap=project2Data(7:12:422,41);
    ap = length(julYearlyap);
    ap = 1:ap;
   
    plot(ap, julYearlyap ,'k')
    title('Palm Oil, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    julYearlyaq=project2Data(7:12:422,42);
    aq = length(julYearlyaq);
    aq = 1:aq;
   
    plot(aq, julYearlyaq ,'k')
    title('Swine (pork), Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    julYearlyar=project2Data(7:12:422,43);
    ar = length(julYearlyar);
    ar = 1:ar;
   
    plot(ar, julYearlyar ,'k')
    title('Poultry (chicken), Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    julYearlyas=project2Data(7:12:422,44);
    as = length(julYearlyas);
    as = 1:as;
   
    plot(as, julYearlyas ,'k')
    title('Rice, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    julYearlyat=project2Data(7:12:422,45);
    at = length(julYearlyat);
    at = 1:at;
   
    plot(at, julYearlyat ,'k')
    title('Rubber, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    julYearlyau=project2Data(7:12:422,47);
    au = length(julYearlyau);
    au = 1:au;
   
    plot(au, julYearlyau ,'k')
    title('Fish (salmon), Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    julYearlyav=project2Data(7:12:422,47);
    av = length(julYearlyav);
    av = 1:av;
   
    plot(av, julYearlyav ,'k')
    title('Hard Sawnwood, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    julYearlyaw=project2Data(7:12:422,48);
    aw = length(julYearlyaw);
    aw = 1:aw;
   
    plot(aw, julYearlyaw ,'k')
    title('Soft Sawnwood, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    julYearlyax=project2Data(7:12:422,49);
    ax = length(julYearlyax);
    ax = 1:ax;
   
    plot(ax, julYearlyax ,'k')
    title('Shrimp, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    julYearlyay=project2Data(7:12:422,50)
    ay = length(julYearlyay);
    ay = 1:ay;
   
    plot(ay, julYearlyay ,'k')
    title('Soybean Meal, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    julYearlyaz=project2Data(7:12:422,51);
    az = length(julYearlyaz);
    az = 1:az;
   
    plot(az, julYearlyaz ,'k')
    title('Soybean Oil, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    julYearlyba=project2Data(7:12:422,52);
    ba = length(julYearlyba);
    ba = 1:ba;
   
    plot(ba, julYearlyba ,'k')
    title('Soybeans, US, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    julYearlybb=project2Data(143:12:422,53);
    bb = length(julYearlybb);
    bb = 1:bb;
   
    plot(bb, julYearlybb ,'k')
    title('Sugar, Europe, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    julYearlybc=project2Data(7:12:422,54);
    bc = length(julYearlybc);
    bc = 1:bc;
   
    plot(bc, julYearlybc ,'k')
    title('Sugar, Free Market , Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    julYearlybd=project2Data(7:12:422,55);
    bd = length(julYearlybd);
    bd = 1:bd;
   
    plot(bd, julYearlybd ,'k')
    title('Sugar, US, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    julYearlybe=project2Data(7:12:422,57);
    be = length(julYearlybe);
    be = 1:be;
   
    plot(be, julYearlybe ,'k')
    title('Sunflower oil, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    julYearlybf=project2Data(7:12:422,57);
    bf = length(julYearlybf);
    bf = 1:bf;
   
    plot(bf, julYearlybf ,'k')
    title('Tea, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    julYearlybg=project2Data(7:12:422,58);
    bg = length(julYearlybg);
    bg = 1:bg;
   
    plot(bg, julYearlybg ,'k')
    title('Tin, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    julYearlybh=project2Data(7:12:422,59);
    bh = length(julYearlybh);
    bh = 1:bh;
   
    plot(bh, julYearlybh ,'k')
    title('Uranium, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 


if strcmp('wheat',c)
    julYearlybi=project2Data(7:12:422,70);
    bi = length(julYearlybi);
    bi = 1:bi;
   
    plot(bi, julYearlybi ,'k')
    title('Wheat, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    julYearlybj=project2Data(7:12:422,71);
    bj = length(julYearlybj);
    bj = 1:bj;
   
    plot(bj, julYearlybj ,'k')
    title('Wool, Coarse, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    julYearlybk=project2Data(7:12:422,72);
    bk = length(julYearlybk);
    bk = 1:bk;
   
    plot(bk, julYearlybk ,'k')
    title('Wool, Fine, Month: Jul, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    julYearlybl=project2Data(7:12:422,73);
    bl = length(julYearlybl);
    bl = 1:bl;
   
    plot(bl, julYearlybl ,'k')
    title('Zinc, Month: Jul, Years: 1991 - 2015',...
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


if strcmp('aluminum',c)
    decYearlyl=project2Data(12:12:422,11);
    l = length(decYearlyl);
    l = 1:l;
    
    plot(l, decYearlyl ,'k')
    title('Alluminum, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    decYearlym=project2Data(12:12:422,12);
    m = length(decYearlym);
    m = 1:m;
    
    plot(m, decYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    decYearlyn=project2Data(12:12:422,13);
    n = length(decYearlyn);
    n = 1:n;
    
    plot(n, decYearlyn ,'k')
    title('Barley, Canadian, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    decYearlyo=project2Data(12:12:422,14);
    o = length(decYearlyo);
    o = 1:o;
    
    plot(o, decYearlyo ,'k')
    title('Beef, Australia, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    decYearlyp=project2Data(12:12:422,15);
    p = length(decYearlyp);
    p = 1:p;
    
    plot(p, decYearlyp ,'k')
    title('Coal, Australia, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    decYearlyq=project2Data(12:12:422,16);
    q = length(decYearlyq);
    q = 1:q;
    
    plot(q, decYearlyq ,'k')
    title('Cocoa Beans, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    decYearlyr=project2Data(12:12:422,17);
    r = length(decYearlyr);
    r = 1:r;
    
    plot(r, decYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    decYearlys=project2Data(12:12:422,18);
    s = length(decYearlys);
    s = 1:s;
    
    plot(s, decYearlys ,'k')
    title('Coffee, Robusta, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    decYearlyt=project2Data(12:12:422,19);
    t = length(decYearlyt);
    t = 1:t;
    
    plot(t, decYearlyt ,'k')
    title('Rapseed oil, crude, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    decYearlyu=project2Data(12:12:422,20);
    u = length(decYearlyu);
    u = 1:u;
    
    plot(u, decYearlyu ,'k')
    title('Copper, grade A, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    decYearlyv=project2Data(12:12:422,21);
    v = length(decYearlyv);
    v = 1:v;
    
    plot(v, decYearlyv ,'k')
    title('Cotton, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    decYearlyw=project2Data(12:12:422,22)
    w = length(decYearlyw);
    w = 1:w;
    
    plot(w, decYearlyw ,'k')
    title('Fishmeal, Peru, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    decYearlyx=project2Data(12:12:422,23);
    x = length(decYearlyx);
    x = 1:x;
    
    plot(x, decYearlyx ,'k')
    title('Groundnuts (peanuts), Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    decYearlyy=project2Data(12:12:422,24);
    y = length(decYearlyy);
    y = 1:y;
    
    plot(y, decYearlyy ,'k')
    title('Hides, Heavy native steers, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    decYearlyz=project2Data(12:12:422,25);
    z = length(decYearlyz);
    z = 1:z;
    
    plot(z, decYearlyz ,'k')
    title('China import iron ore, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    decYearlyaa=project2Data(12:12:422,26);
    aa = length(decYearlyaa);
    aa = 1:aa;
    
    plot(aa, decYearlyaa ,'k')
    title('Lamb, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    decYearlyab=project2Data(12:12:422,27);
    ab = length(decYearlyab);
    ab = 1:ab;
   
    plot(ab, decYearlyab ,'k')
    title('Lead, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    decYearlyac=project2Data(12:12:422,28);
    ac = length(decYearlyac);
    ac = 1:ac;
   
    plot(ac, decYearlyac ,'k')
    title('Soft Logos, Average, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    decYearlyad=project2Data(12:12:422,29);
    ad = length(decYearlyad);
    ad = 1:ad;
   
    plot(ad, decYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    decYearlyae=project2Data(12:12:422,30);
    ae = length(decYearlyae);
    ae = 1:ae;
   
    plot(ae, decYearlyae ,'k')
    title('Maize (corn), Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    decYearlyaf=project2Data(12:12:422,31);
    af = length(decYearlyaf);
    af = 1:af;
   
    plot(af, decYearlyaf ,'k')
    title('Natural Gas, Russia, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    decYearlyag=project2Data(160:12:422,32);
    ag = length(decYearlyag);
    ag = 1:ag;
   
    plot(ag, decYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    decYearlyah=project2Data(148:12:422,33);
    ah = length(decYearlyah);
    ah = 1:ah;
   
    plot(ah, decYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    decYearlyai=project2Data(12:12:422,34);
    ai = length(decYearlyai);
    ai = 1:ai;
   
    plot(ai, decYearlyai ,'k')
    title('Nickel, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    decYearlyaj=project2Data(12:12:422,35);
    aj = length(decYearlyaj);
    aj = 1:aj;
   
    plot(aj, decYearlyaj ,'k')
    title('Crude Oil, Average, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    decYearlyak=project2Data(12:12:422,36);
    ak = length(decYearlyak);
    ak = 1:ak;
   
    plot(ak, decYearlyak ,'k')
    title('Crude Oil, UK, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    decYearlyal=project2Data(12:12:422,37);
    al = length(decYearlyal);
    al = 1:al;
   
    plot(al, decYearlyal ,'k')
    title('Oil, Dubai, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    decYearlyam=project2Data(12:12:422,38);
    am = length(decYearlyam);
    am = 1:am;
   
    plot(am, decYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    decYearlyan=project2Data(12:12:422,39);
    an = length(decYearlyan);
    an = 1:an;
   
    plot(an, decYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    decYearlyao=project2Data(12:12:422,40);
    ao = length(decYearlyao);
    ao = 1:ao;
   
    plot(ao, decYearlyao ,'k')
    title('Oranges and miscellaneous, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    decYearlyap=project2Data(12:12:422,41);
    ap = length(decYearlyap);
    ap = 1:ap;
   
    plot(ap, decYearlyap ,'k')
    title('Palm Oil, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    decYearlyaq=project2Data(12:12:422,42);
    aq = length(decYearlyaq);
    aq = 1:aq;
   
    plot(aq, decYearlyaq ,'k')
    title('Swine (pork), Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    decYearlyar=project2Data(12:12:422,43);
    ar = length(decYearlyar);
    ar = 1:ar;
   
    plot(ar, decYearlyar ,'k')
    title('Poultry (chicken), Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    decYearlyas=project2Data(12:12:422,44);
    as = length(decYearlyas);
    as = 1:as;
   
    plot(as, decYearlyas ,'k')
    title('Rice, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    decYearlyat=project2Data(12:12:422,45);
    at = length(decYearlyat);
    at = 1:at;
   
    plot(at, decYearlyat ,'k')
    title('Rubber, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    decYearlyau=project2Data(12:12:422,46);
    au = length(decYearlyau);
    au = 1:au;
   
    plot(au, decYearlyau ,'k')
    title('Fish (salmon), Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    decYearlyav=project2Data(12:12:422,47);
    av = length(decYearlyav);
    av = 1:av;
   
    plot(av, decYearlyav ,'k')
    title('Hard Sawnwood, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    decYearlyaw=project2Data(12:12:422,48);
    aw = length(decYearlyaw);
    aw = 1:aw;
   
    plot(aw, decYearlyaw ,'k')
    title('Soft Sawnwood, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    decYearlyax=project2Data(12:12:422,49);
    ax = length(decYearlyax);
    ax = 1:ax;
   
    plot(ax, decYearlyax ,'k')
    title('Shrimp, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    decYearlyay=project2Data(12:12:422,50)
    ay = length(decYearlyay);
    ay = 1:ay;
   
    plot(ay, decYearlyay ,'k')
    title('Soybean Meal, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    decYearlyaz=project2Data(12:12:422,51);
    az = length(decYearlyaz);
    az = 1:az;
   
    plot(az, decYearlyaz ,'k')
    title('Soybean Oil, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    decYearlyba=project2Data(12:12:422,52);
    ba = length(decYearlyba);
    ba = 1:ba;
   
    plot(ba, decYearlyba ,'k')
    title('Soybeans, US, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    decYearlybb=project2Data(148:12:422,53);
    bb = length(decYearlybb);
    bb = 1:bb;
   
    plot(bb, decYearlybb ,'k')
    title('Sugar, Europe, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    decYearlybc=project2Data(12:12:422,54);
    bc = length(decYearlybc);
    bc = 1:bc;
   
    plot(bc, decYearlybc ,'k')
    title('Sugar, Free Market , Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    decYearlybd=project2Data(12:12:422,55);
    bd = length(decYearlybd);
    bd = 1:bd;
   
    plot(bd, decYearlybd ,'k')
    title('Sugar, US, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    decYearlybe=project2Data(12:12:422,56);
    be = length(decYearlybe);
    be = 1:be;
   
    plot(be, decYearlybe ,'k')
    title('Sunflower oil, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    decYearlybf=project2Data(12:12:422,57);
    bf = length(decYearlybf);
    bf = 1:bf;
   
    plot(bf, decYearlybf ,'k')
    title('Tea, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    decYearlybg=project2Data(12:12:422,58);
    bg = length(decYearlybg);
    bg = 1:bg;
   
    plot(bg, decYearlybg ,'k')
    title('Tin, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    decYearlybh=project2Data(12:12:422,59);
    bh = length(decYearlybh);
    bh = 1:bh;
   
    plot(bh, decYearlybh ,'k')
    title('Uranium, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 


if strcmp('wheat',c)
    decYearlybi=project2Data(12:12:422,60);
    bi = length(decYearlybi);
    bi = 1:bi;
   
    plot(bi, decYearlybi ,'k')
    title('Wheat, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    decYearlybj=project2Data(12:12:422,61);
    bj = length(decYearlybj);
    bj = 1:bj;
   
    plot(bj, decYearlybj ,'k')
    title('Wool, Coarse, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    decYearlybk=project2Data(12:12:422,62);
    bk = length(decYearlybk);
    bk = 1:bk;
   
    plot(bk, decYearlybk ,'k')
    title('Wool, Fine, Month: Dec, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    decYearlybl=project2Data(12:12:422,63);
    bl = length(decYearlybl);
    bl = 1:bl;
   
    plot(bl, decYearlybl ,'k')
    title('Zinc, Month: Dec, Years: 1991 - 2015',...
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


if strcmp('aluminum',c)
    augYearlyl=project2Data(8:12:422,11);
    l = length(augYearlyl);
    l = 1:l;
    
    plot(l, augYearlyl ,'k')
    title('Alluminum, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end

if strcmp('banana',c)
    augYearlym=project2Data(8:12:422,12);
    m = length(augYearlym);
    m = 1:m;
    
    plot(m, augYearlym ,'k')
    title('Bananas,Central American and Ecuador, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
        
if strcmp('barley',c)
    augYearlyn=project2Data(8:12:422,13);
    n = length(augYearlyn);
    n = 1:n;
    
    plot(n, augYearlyn ,'k')
    title('Barley, Canadian, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    augYearlyo=project2Data(8:12:422,14);
    o = length(augYearlyo);
    o = 1:o;
    
    plot(o, augYearlyo ,'k')
    title('Beef, Australia, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    augYearlyp=project2Data(8:12:422,15);
    p = length(augYearlyp);
    p = 1:p;
    
    plot(p, augYearlyp ,'k')
    title('Coal, Australia, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    augYearlyq=project2Data(8:12:422,16);
    q = length(augYearlyq);
    q = 1:q;
    
    plot(q, augYearlyq ,'k')
    title('Cocoa Beans, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    augYearlyr=project2Data(8:12:422,17);
    r = length(augYearlyr);
    r = 1:r;
    
    plot(r, augYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    augYearlys=project2Data(8:12:422,18);
    s = length(augYearlys);
    s = 1:s;
    
    plot(s, augYearlys ,'k')
    title('Coffee, Robusta, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    augYearlyt=project2Data(8:12:422,19);
    t = length(augYearlyt);
    t = 1:t;
    
    plot(t, augYearlyt ,'k')
    title('Rapseed oil, crude, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    augYearlyu=project2Data(8:12:422,20);
    u = length(augYearlyu);
    u = 1:u;
    
    plot(u, augYearlyu ,'k')
    title('Copper, grade A, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    augYearlyv=project2Data(8:12:422,21);
    v = length(augYearlyv);
    v = 1:v;
    
    plot(v, augYearlyv ,'k')
    title('Cotton, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    augYearlyw=project2Data(8:12:422,22)
    w = length(augYearlyw);
    w = 1:w;
    
    plot(w, augYearlyw ,'k')
    title('Fishmeal, Peru, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    augYearlyx=project2Data(8:12:422,23);
    x = length(augYearlyx);
    x = 1:x;
    
    plot(x, augYearlyx ,'k')
    title('Groundnuts (peanuts), Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    augYearlyy=project2Data(8:12:422,24);
    y = length(augYearlyy);
    y = 1:y;
    
    plot(y, augYearlyy ,'k')
    title('Hides, Heavy native steers, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    augYearlyz=project2Data(8:12:422,25);
    z = length(augYearlyz);
    z = 1:z;
    
    plot(z, augYearlyz ,'k')
    title('China import iron ore, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    augYearlyaa=project2Data(8:12:422,26);
    aa = length(augYearlyaa);
    aa = 1:aa;
    
    plot(aa, augYearlyaa ,'k')
    title('Lamb, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    augYearlyab=project2Data(8:12:422,27);
    ab = length(augYearlyab);
    ab = 1:ab;
   
    plot(ab, augYearlyab ,'k')
    title('Lead, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    augYearlyac=project2Data(8:12:422,28);
    ac = length(augYearlyac);
    ac = 1:ac;
   
    plot(ac, augYearlyac ,'k')
    title('Soft Logos, Average, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    augYearlyad=project2Data(8:12:422,29);
    ad = length(augYearlyad);
    ad = 1:ad;
   
    plot(ad, augYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    augYearlyae=project2Data(8:12:422,30);
    ae = length(augYearlyae);
    ae = 1:ae;
   
    plot(ae, augYearlyae ,'k')
    title('Maize (corn), Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    augYearlyaf=project2Data(80:12:422,31);
    af = length(augYearlyaf);
    af = 1:af;
   
    plot(af, augYearlyaf ,'k')
    title('Natural Gas, Russia, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    augYearlyag=project2Data(155:12:422,32);
    ag = length(augYearlyag);
    ag = 1:ag;
   
    plot(ag, augYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    augYearlyah=project2Data(143:12:422,33);
    ah = length(augYearlyah);
    ah = 1:ah;
   
    plot(ah, augYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    augYearlyai=project2Data(8:12:422,34);
    ai = length(augYearlyai);
    ai = 1:ai;
   
    plot(ai, augYearlyai ,'k')
    title('Nickel, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    augYearlyaj=project2Data(8:12:422,35);
    aj = length(augYearlyaj);
    aj = 1:aj;
   
    plot(aj, augYearlyaj ,'k')
    title('Crude Oil, Average, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    augYearlyak=project2Data(8:12:422,36);
    ak = length(augYearlyak);
    ak = 1:ak;
   
    plot(ak, augYearlyak ,'k')
    title('Crude Oil, UK, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    augYearlyal=project2Data(8:12:422,37);
    al = length(augYearlyal);
    al = 1:al;
   
    plot(al, augYearlyal ,'k')
    title('Oil, Dubai, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    augYearlyam=project2Data(8:12:422,38);
    am = length(augYearlyam);
    am = 1:am;
   
    plot(am, augYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    augYearlyan=project2Data(8:12:422,39);
    an = length(augYearlyan);
    an = 1:an;
   
    plot(an, augYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    augYearlyao=project2Data(8:12:422,40);
    ao = length(augYearlyao);
    ao = 1:ao;
   
    plot(ao, augYearlyao ,'k')
    title('Oranges and miscellaneous, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    augYearlyap=project2Data(8:12:422,41);
    ap = length(augYearlyap);
    ap = 1:ap;
   
    plot(ap, augYearlyap ,'k')
    title('Palm Oil, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    augYearlyaq=project2Data(8:12:422,42);
    aq = length(augYearlyaq);
    aq = 1:aq;
   
    plot(aq, augYearlyaq ,'k')
    title('Swine (pork), Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    augYearlyar=project2Data(8:12:422,43);
    ar = length(augYearlyar);
    ar = 1:ar;
   
    plot(ar, augYearlyar ,'k')
    title('Poultry (chicken), Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    augYearlyas=project2Data(8:12:422,44);
    as = length(augYearlyas);
    as = 1:as;
   
    plot(as, augYearlyas ,'k')
    title('Rice, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    augYearlyat=project2Data(8:12:422,45);
    at = length(augYearlyat);
    at = 1:at;
   
    plot(at, augYearlyat ,'k')
    title('Rubber, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    augYearlyau=project2Data(8:12:422,46);
    au = length(augYearlyau);
    au = 1:au;
   
    plot(au, augYearlyau ,'k')
    title('Fish (salmon), Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    augYearlyav=project2Data(8:12:422,47);
    av = length(augYearlyav);
    av = 1:av;
   
    plot(av, augYearlyav ,'k')
    title('Hard Sawnwood, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    augYearlyaw=project2Data(8:12:422,48);
    aw = length(augYearlyaw);
    aw = 1:aw;
   
    plot(aw, augYearlyaw ,'k')
    title('Soft Sawnwood, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    augYearlyax=project2Data(8:12:422,49);
    ax = length(augYearlyax);
    ax = 1:ax;
   
    plot(ax, augYearlyax ,'k')
    title('Shrimp, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    augYearlyay=project2Data(8:12:422,50)
    ay = length(augYearlyay);
    ay = 1:ay;
   
    plot(ay, augYearlyay ,'k')
    title('Soybean Meal, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    augYearlyaz=project2Data(8:12:422,51);
    az = length(augYearlyaz);
    az = 1:az;
   
    plot(az, augYearlyaz ,'k')
    title('Soybean Oil, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    augYearlyba=project2Data(8:12:422,52);
    ba = length(augYearlyba);
    ba = 1:ba;
   
    plot(ba, augYearlyba ,'k')
    title('Soybeans, US, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    augYearlybb=project2Data(144:12:422,53);
    bb = length(augYearlybb);
    bb = 1:bb;
   
    plot(bb, augYearlybb ,'k')
    title('Sugar, Europe, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    augYearlybc=project2Data(8:12:422,54);
    bc = length(augYearlybc);
    bc = 1:bc;
   
    plot(bc, augYearlybc ,'k')
    title('Sugar, Free Market , Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    augYearlybd=project2Data(8:12:422,55);
    bd = length(augYearlybd);
    bd = 1:bd;
   
    plot(bd, augYearlybd ,'k')
    title('Sugar, US, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    augYearlybe=project2Data(8:12:422,56);
    be = length(augYearlybe);
    be = 1:be;
   
    plot(be, augYearlybe ,'k')
    title('Sunflower oil, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    augYearlybf=project2Data(8:12:422,57);
    bf = length(augYearlybf);
    bf = 1:bf;
   
    plot(bf, augYearlybf ,'k')
    title('Tea, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    augYearlybg=project2Data(8:12:422,58);
    bg = length(augYearlybg);
    bg = 1:bg;
   
    plot(bg, augYearlybg ,'k')
    title('Tin, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    augYearlybh=project2Data(8:12:422,59);
    bh = length(augYearlybh);
    bh = 1:bh;
   
    plot(bh, augYearlybh ,'k')
    title('Uranium, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 


if strcmp('wheat',c)
    augYearlybi=project2Data(8:12:422,60);
    bi = length(augYearlybi);
    bi = 1:bi;
   
    plot(bi, augYearlybi ,'k')
    title('Wheat, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    augYearlybj=project2Data(8:12:422,61);
    bj = length(augYearlybj);
    bj = 1:bj;
   
    plot(bj, augYearlybj ,'k')
    title('Wool, Coarse, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    augYearlybk=project2Data(8:12:422,62);
    bk = length(augYearlybk);
    bk = 1:bk;
   
    plot(bk, augYearlybk ,'k')
    title('Wool, Fine, Month: Aug, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    augYearlybl=project2Data(8:12:422,63);
    bl = length(augYearlybl);
    bl = 1:bl;
   
    plot(bl, augYearlybl ,'k')
    title('Zinc, Month: Aug, Years: 1991 - 2015',...
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
    aprYearlyn=project2Data(4:12:422,13);
    n = length(aprYearlyn);
    n = 1:n;
    
    plot(n, aprYearlyn ,'k')
    title('Barley, Canadian, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('beef',c)
    aprYearlyo=project2Data(4:12:422,14);
    o = length(aprYearlyo);
    o = 1:o;
    
    plot(o, aprYearlyo ,'k')
    title('Beef, Australia, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coal',c)
    aprYearlyp=project2Data(4:12:422,15);
    p = length(aprYearlyp);
    p = 1:p;
    
    plot(p, aprYearlyp ,'k')
    title('Coal, Australia, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cocoa',c)
    aprYearlyq=project2Data(4:12:422,16);
    q = length(aprYearlyq);
    q = 1:q;
    
    plot(q, aprYearlyq ,'k')
    title('Cocoa Beans, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeearab',c)
    aprYearlyr=project2Data(4:12:422,17);
    r = length(aprYearlyr);
    r = 1:r;
    
    plot(r, aprYearlyr ,'k')
    title('Coffee and other mild Arabicas, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('coffeerob',c)
    aprYearlys=project2Data(4:12:422,18);
    s = length(aprYearlys);
    s = 1:s;
    
    plot(s, aprYearlys ,'k')
    title('Coffee, Robusta, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rapeseed',c)
    aprYearlyt=project2Data(4:12:422,19);
    t = length(aprYearlyt);
    t = 1:t;
    
    plot(t, aprYearlyt ,'k')
    title('Rapseed oil, crude, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('copper',c)
    aprYearlyu=project2Data(4:12:422,20);
    u = length(aprYearlyu);
    u = 1:u;
    
    plot(u, aprYearlyu ,'k')
    title('Copper, grade A, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('cotton',c)
    aprYearlyv=project2Data(4:12:422,21);
    v = length(aprYearlyv);
    v = 1:v;
    
    plot(v, aprYearlyv ,'k')
    title('Cotton, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('fishmeal',c)
    aprYearlyw=project2Data(4:12:422,22)
    w = length(aprYearlyw);
    w = 1:w;
    
    plot(w, aprYearlyw ,'k')
    title('Fishmeal, Peru, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nuts',c)
    aprYearlyx=project2Data(4:12:422,23);
    x = length(aprYearlyx);
    x = 1:x;
    
    plot(x, aprYearlyx ,'k')
    title('Groundnuts (peanuts), Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hides',c)
    aprYearlyy=project2Data(4:12:422,24);
    y = length(aprYearlyy);
    y = 1:y;
    
    plot(y, aprYearlyy ,'k')
    title('Hides, Heavy native steers, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('china',c)
    aprYearlyz=project2Data(4:12:422,25);
    z = length(aprYearlyz);
    z = 1:z;
    
    plot(z, aprYearlyz ,'k')
    title('China import iron ore, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lamb',c)
    aprYearlyaa=project2Data(4:12:422,26);
    aa = length(aprYearlyaa);
    aa = 1:aa;
    
    plot(aa, aprYearlyaa ,'k')
    title('Lamb, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('lead',c)
    aprYearlyab=project2Data(4:12:422,27);
    ab = length(aprYearlyab);
    ab = 1:ab;
   
    plot(ab, aprYearlyab ,'k')
    title('Lead, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softlogs',c)
    aprYearlyac=project2Data(4:12:422,28);
    ac = length(aprYearlyac);
    ac = 1:ac;
   
    plot(ac, aprYearlyac ,'k')
    title('Soft Logos, Average, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardlogs',c)
    aprYearlyad=project2Data(4:12:422,29);
    ad = length(aprYearlyad);
    ad = 1:ad;
   
    plot(ad, aprYearlyad ,'k')
    title('Hard Logos, Best Quality, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('maize',c)
    aprYearlyae=project2Data(4:12:422,30);
    ae = length(aprYearlyae);
    ae = 1:ae;
   
    plot(ae, aprYearlyae ,'k')
    title('Maize (corn), Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasrussia',c)
    aprYearlyaf=project2Data(68:12:422,31);
    af = length(aprYearlyaf);
    af = 1:af;
   
    plot(af, aprYearlyaf ,'k')
    title('Natural Gas, Russia, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gasindo',c)
    aprYearlyag=project2Data(152:12:422,32);
    ag = length(aprYearlyag);
    ag = 1:ag;
   
    plot(ag, aprYearlyag ,'k')
    title('Natural Gas, Indonesia, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('gaslouis',c)
    aprYearlyah=project2Data(140:12:422,33);
    ah = length(aprYearlyah);
    ah = 1:ah;
   
    plot(ah, aprYearlyah ,'k')
    title('Natural Gas, Louisiana, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('nickel',c)
    aprYearlyai=project2Data(4:12:422,34);
    ai = length(aprYearlyai);
    ai = 1:ai;
   
    plot(ai, aprYearlyai ,'k')
    title('Nickel, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeavg',c)
    aprYearlyaj=project2Data(4:12:422,35);
    aj = length(aprYearlyaj);
    aj = 1:aj;
   
    plot(aj, aprYearlyaj ,'k')
    title('Crude Oil, Average, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeuk',c)
    aprYearlyak=project2Data(4:12:422,36);
    ak = length(aprYearlyak);
    ak = 1:ak;
   
    plot(ak, aprYearlyak ,'k')
    title('Crude Oil, UK, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oildubai',c)
    aprYearlyal=project2Data(4:12:422,37);
    al = length(aprYearlyal);
    al = 1:al;
   
    plot(al, aprYearlyal ,'k')
    title('Oil, Dubai, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('crudeint',c)
    aprYearlyam=project2Data(4:12:422,38);
    am = length(aprYearlyam);
    am = 1:am;
   
    plot(am, aprYearlyam ,'k')
    title('Crude Oil, Intermediate, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('oliveoil',c)
    aprYearlyan=project2Data(4:12:422,39);
    an = length(aprYearlyan);
    an = 1:an;
   
    plot(an, aprYearlyan ,'k')
    title('Olive Oil, Extra Virgin, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('orange',c)
    aprYearlyao=project2Data(4:12:422,40);;
    ao = length(aprYearlyao);
    ao = 1:ao;
   
    plot(ao, aprYearlyao ,'k')
    title('Oranges and miscellaneous, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('palmoil',c)
    aprYearlyap=project2Data(4:12:422,41);
    ap = length(aprYearlyap);
    ap = 1:ap;
   
    plot(ap, aprYearlyap ,'k')
    title('Palm Oil, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('pork',c)
    aprYearlyaq=project2Data(4:12:422,42);
    aq = length(aprYearlyaq);
    aq = 1:aq;
   
    plot(aq, aprYearlyaq ,'k')
    title('Swine (pork), Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('chicken',c)
    aprYearlyar=project2Data(4:12:422,43);
    ar = length(aprYearlyar);
    ar = 1:ar;
   
    plot(ar, aprYearlyar ,'k')
    title('Poultry (chicken), Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rice',c)
    aprYearlyas=project2Data(4:12:422,44);
    as = length(aprYearlyas);
    as = 1:as;
   
    plot(as, aprYearlyas ,'k')
    title('Rice, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('rubber',c)
    aprYearlyat=project2Data(4:12:422,45);
    at = length(aprYearlyat);
    at = 1:at;
   
    plot(at, aprYearlyat ,'k')
    title('Rubber, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('salmon',c)
    aprYearlyau=project2Data(4:12:422,46);
    au = length(aprYearlyau);
    au = 1:au;
   
    plot(au, aprYearlyau ,'k')
    title('Fish (salmon), Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('hardwood',c)
    aprYearlyav=project2Data(4:12:422,47);
    av = length(aprYearlyav);
    av = 1:av;
   
    plot(av, aprYearlyav ,'k')
    title('Hard Sawnwood, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('softwood',c)
    aprYearlyaw=project2Data(4:12:422,48);
    aw = length(aprYearlyaw);
    aw = 1:aw;
   
    plot(aw, aprYearlyaw ,'k')
    title('Soft Sawnwood, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('shrimp',c)
    aprYearlyax=project2Data(4:12:422,49);
    ax = length(aprYearlyax);
    ax = 1:ax;
   
    plot(ax, aprYearlyax ,'k')
    title('Shrimp, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soymeal',c)
    aprYearlyay=project2Data(4:12:422,50)
    ay = length(aprYearlyay);
    ay = 1:ay;
   
    plot(ay, aprYearlyay ,'k')
    title('Soybean Meal, Month: March, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyoil',c)
    aprYearlyaz=project2Data(4:12:422,51);
    az = length(aprYearlyaz);
    az = 1:az;
   
    plot(az, aprYearlyaz ,'k')
    title('Soybean Oil, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('soyus',c)
    aprYearlyba=project2Data(4:12:422,52);
    ba = length(aprYearlyba);
    ba = 1:ba;
   
    plot(ba, aprYearlyba ,'k')
    title('Soybeans, US, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugareuro',c)
    aprYearlybb=project2Data(140:12:422,53);
    bb = length(aprYearlybb);
    bb = 1:bb;
   
    plot(bb, aprYearlybb ,'k')
    title('Sugar, Europe, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugafree',c)
    aprYearlybc=project2Data(4:12:422,54);
    bc = length(aprYearlybc);
    bc = 1:bc;
   
    plot(bc, aprYearlybc ,'k')
    title('Sugar, Free Market , Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sugarus',c)
    aprYearlybd=project2Data(4:12:422,55);
    bd = length(aprYearlybd);
    bd = 1:bd;
   
    plot(bd, aprYearlybd ,'k')
    title('Sugar, US, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('sunflower',c)
    aprYearlybe=project2Data(4:12:422,56);
    be = length(aprYearlybe);
    be = 1:be;
   
    plot(be, aprYearlybe ,'k')
    title('Sunflower oil, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tea',c)
    aprYearlybf=project2Data(4:12:422,57);
    bf = length(aprYearlybf);
    bf = 1:bf;
   
    plot(bf, aprYearlybf ,'k')
    title('Tea, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('tin',c)
    aprYearlybg=project2Data(4:12:422,58);
    bg = length(aprYearlybg);
    bg = 1:bg;
   
    plot(bg, aprYearlybg ,'k')
    title('Tin, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('uranium',c)
    aprYearlybh=project2Data(4:12:422,59);
    bh = length(aprYearlybh);
    bh = 1:bh;
   
    plot(bh, aprYearlybh ,'k')
    title('Uranium, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('wheat',c)
    aprYearlybi=project2Data(4:12:422,60);
    bi = length(aprYearlybi);
    bi = 1:bi;
   
    plot(bi, aprYearlybi ,'k')
    title('Wheat, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolcoarse',c)
    aprYearlybj=project2Data(4:12:422,61);
    bj = length(aprYearlybj);
    bj = 1:bj;
   
    plot(bj, aprYearlybj ,'k')
    title('Wool, Coarse, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('woolfine',c)
    aprYearlybk=project2Data(4:12:422,62);
    bk = length(aprYearlybk);
    bk = 1:bk;
   
    plot(bk, aprYearlybk ,'k')
    title('Wool, Fine, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 

if strcmp('zinc',c)
    aprYearlybl=project2Data(4:12:422,63);
    bl = length(aprYearlybl);
    bl = 1:bl;
   
    plot(bl, aprYearlybl ,'k')
    title('Zinc, Month: April, Years: 1991 - 2015',...
        'FontSize', 15)
    xlabel('Years','FontSize',15)
    ylabel('Index Number', 'FontSize', 15)
end 
