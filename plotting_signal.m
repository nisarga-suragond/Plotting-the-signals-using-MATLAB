function varargout = plotting_signal(varargin)
% PLOTTING_SIGNAL MATLAB code for plotting_signal.fig
%      PLOTTING_SIGNAL, by itself, creates a new PLOTTING_SIGNAL or raises the existing
%      singleton*.
%
%      H = PLOTTING_SIGNAL returns the handle to a new PLOTTING_SIGNAL or the handle to
%      the existing singleton*.
%
%      PLOTTING_SIGNAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLOTTING_SIGNAL.M with the given input arguments.
%
%      PLOTTING_SIGNAL('Property','Value',...) creates a new PLOTTING_SIGNAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before plotting_signal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to plotting_signal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help plotting_signal

% Last Modified by GUIDE v2.5 15-Aug-2025 11:07:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @plotting_signal_OpeningFcn, ...
                   'gui_OutputFcn',  @plotting_signal_OutputFcn, ...
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


% --- Executes just before plotting_signal is made visible.
function plotting_signal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to plotting_signal (see VARARGIN)

% Choose default command line output for plotting_signal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes plotting_signal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = plotting_signal_OutputFcn(hObject, eventdata, handles) 
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
Fs=1000;
t=0:1/Fs:1;
f=5;
s=sin(2*pi*f*t);
axes(handles.axes1),plot(s)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Fs=1000;
t=0:1/Fs:1;
f=5;
square_sig = square(2*pi*f*t);
axes(handles.axes2),plot(square_sig)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Fs=1000;
t=0:1/Fs:1;
f=5;
s=sin(2*pi*f*t);
square_sig = square(2*pi*f*t);
triangular_sig = sawtooth(2*pi*f*t, 0.5);% 0.5 duty  ? triangular wave

axes(handles.axes3),plot(triangular_sig)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Fs=1000;
t=0:1/Fs:1;
f=5;
s=sin(2*pi*f*t);
square_sig = square(2*pi*f*t);
triangular_sig = sawtooth(2*pi*f*t, 0.5);        % 0.5 duty  ? triangular wave
composite_sig = s + square_sig + triangular_sig;                  % mix 

axes(handles.axes4),plot(composite_sig)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close