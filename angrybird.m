function varargout = angrybird(varargin)
% ANGRYBIRD MATLAB code for angrybird.fig
%      ANGRYBIRD, by itself, creates a new ANGRYBIRD or raises the existing
%      singleton*.
%
%      H = ANGRYBIRD returns the handle to a new ANGRYBIRD or the handle to
%      the existing singleton*.
%
%      ANGRYBIRD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANGRYBIRD.M with the given input arguments.
%
%      ANGRYBIRD('Property','Value',...) creates a new ANGRYBIRD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before angrybird_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to angrybird_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help angrybird

% Last Modified by GUIDE v2.5 07-Jun-2019 23:45:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @angrybird_OpeningFcn, ...
                   'gui_OutputFcn',  @angrybird_OutputFcn, ...
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


% --- Executes just before angrybird is made visible.
function angrybird_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to angrybird (see VARARGIN)

% Choose default command line output for angrybird
handles.output = hObject;
set(handles.figure1,'unit','pixels','position',[100 100 600 400]);
set(handles.axes1,'unit','pixels','position',[1 1 600 400]);
set(handles.axes2,'parent',handles.figure1,'unit','pixels','position',[0 160 80 80]);
set(handles.axes3,'parent',handles.figure1,'unit','pixels','position',[260 160 80 80]);
fin = imread('../01flags/Finland.jpg');
imshow(fin,'parent',handles.axes1);
hold on;
[image, map, alpha] = imread('../06timer/livelybird.png');
livelybirdleft = imshow(image,'parent',handles.axes2);
livelybirdmid = imshow(image,'parent',handles.axes3);
set(livelybirdleft,'alphadata',alpha);
set(livelybirdmid,'alphadata',alpha);
global t v timeperiod
v = 0;
timeperiod = 0.01;
mcell{1} = handles.axes2; 
mcell{2} = handles.axes3;
t = timer('timerFcn',{@birdmove,mcell},'period',timeperiod,...
    'executionmode','fixeddelay');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes angrybird wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = angrybird_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t
pos = get(handles.axes1,'currentpoint');
if pos(1)>=0 & pos(1)<=80 & pos(3)>=120 & pos(3)<=200
    start(t);
end

function birdmove(hObject, eventdata, mcell)
global v timeperiod
posleft = get(mcell{1},'position');
if v>=0
v = v + 1000*timeperiod;
end
    if posleft(1)>=180
       v = -v;
    end
    if v<0
    posmid = get(mcell{2},'position');
    posmid(1) = posmid(1) - v*timeperiod;
    set(mcell{2},'position',posmid);
    end
posleft(1) = posleft(1) + v*timeperiod;
set(mcell{1},'position',posleft);

           



% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3
