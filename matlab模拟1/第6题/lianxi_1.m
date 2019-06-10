function varargout = lianxi_1(varargin)
% LIANXI_1 MATLAB code for lianxi_1.fig
%      LIANXI_1, by itself, creates a new LIANXI_1 or raises the existing
%      singleton*.
%
%      H = LIANXI_1 returns the handle to a new LIANXI_1 or the handle to
%      the existing singleton*.
%
%      LIANXI_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LIANXI_1.M with the given input arguments.
%
%      LIANXI_1('Property','Value',...) creates a new LIANXI_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lianxi_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lianxi_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lianxi_1

% Last Modified by GUIDE v2.5 08-Jun-2019 17:03:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lianxi_1_OpeningFcn, ...
                   'gui_OutputFcn',  @lianxi_1_OutputFcn, ...
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


% --- Executes just before lianxi_1 is made visible.
function lianxi_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lianxi_1 (see VARARGIN)

% Choose default command line output for lianxi_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

global t x tt;
x =10;
tt=handles.text2;
t = timer('TimerFcn',@timefun, 'Period', 1, 'ExecutionMode', 'fixedSpacing', 'TasksToExecute',10 );
set(handles.text2,'String','请点击左右或直接按空格','units','pixels','fontsize',15);
set(handles.pushbutton1,'String','left','units','pixels','fontsize',10);
set(handles.pushbutton2,'String','right','units','pixels','fontsize',10);

% UIWAIT makes lianxi_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lianxi_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t x;
stop(t);
x=10;
set(handles.text2,'String','left');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t x;
stop(t);
x=10;
set(handles.text2,'String','right');


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
global t x;
if double(get(gcf,'CurrentCharacter'))==32   %如果按下的是回车(13)
    start(t);
end

function timefun(hObject, eventdata)
    global t tt x; 
    
    x=x-1;
    set(tt,'String',x);
    
    if x==0;
        stop(t);
        set(tt,'String','最爱红云姐');
        x=10;
    end


% --- Executes on key press with focus on pushbutton1 and none of its controls.
function pushbutton1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
global t x;
if double(get(gcf,'CurrentCharacter'))==32   %如果按下的是回车(13)
    start(t);
end

function pushbutton2_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
global t x;
if double(get(gcf,'CurrentCharacter'))==32   %如果按下的是回车(13)
    start(t);
end


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
stop(t);
% Hint: delete(hObject) closes the figure
delete(hObject);
