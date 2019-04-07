function varargout = DSME(varargin)
% DSME MATLAB code for DSME.fig
%      DSME, by itself, creates a new DSME or raises the existing
%      singleton*.
%
%      H = DSME returns the handle to a new DSME or the handle to
%      the existing singleton*.
%
%      DSME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DSME.M with the given input arguments.
%
%      DSME('Property','Value',...) creates a new DSME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DSME_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DSME_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DSME

% Last Modified by GUIDE v2.5 02-May-2016 17:39:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DSME_OpeningFcn, ...
                   'gui_OutputFcn',  @DSME_OutputFcn, ...
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


% --- Executes just before DSME is made visible.
function DSME_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DSME (see VARARGIN)

% Choose default command line output for DSME
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DSME wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DSME_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_Callback(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r as text
%        str2double(get(hObject,'String')) returns contents of r as a double


% --- Executes during object creation, after setting all properties.
function r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SO_Callback(hObject, eventdata, handles)
% hObject    handle to SO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SO as text
%        str2double(get(hObject,'String')) returns contents of SO as a double


% --- Executes during object creation, after setting all properties.
function SO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BO_Callback(hObject, eventdata, handles)
% hObject    handle to BO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BO as text
%        str2double(get(hObject,'String')) returns contents of BO as a double


% --- Executes during object creation, after setting all properties.
function BO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BI_Callback(hObject, eventdata, handles)
% hObject    handle to BI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BI as text
%        str2double(get(hObject,'String')) returns contents of BI as a double


% --- Executes during object creation, after setting all properties.
function BI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ts_Callback(hObject, eventdata, handles)
% hObject    handle to Ts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ts as text
%        str2double(get(hObject,'String')) returns contents of Ts as a double


% --- Executes during object creation, after setting all properties.
function Ts_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Throughput_Callback(hObject, eventdata, handles)
% hObject    handle to Throughput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Throughput as text
%        str2double(get(hObject,'String')) returns contents of Throughput as a double


% --- Executes during object creation, after setting all properties.
function Throughput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Throughput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Delay_Callback(hObject, eventdata, handles)
% hObject    handle to Delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Delay as text
%        str2double(get(hObject,'String')) returns contents of Delay as a double


% --- Executes during object creation, after setting all properties.
function Delay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Delay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a1= str2num(get(handles.SO,'string'));
a2= 15.36* 2^(str2num(get(handles.b,'string')))
a3= 15.36* 2^(str2num(get(handles.b,'string'))-4)
a4= ((str2num(get(handles.b,'string')))+ ((str2num(get(handles.r,'string')))*(str2num(get(handles.Ts,'string')))))/(str2num(get(handles.BI,'string')))
a5=  ((str2num(get(handles.b,'string')))/(str2num(get(handles.C,'string'))))*((str2num(get(handles.BI,'string')))-(str2num(get(handles.Ts,'string'))))
a6=  str2num(get(handles.r,'string'))
set(handles.BO,'string',a1)
set(handles.BI,'string',a2)
set(handles.Ts,'string',a3)
set(handles.Throughput,'string',a4)
set(handles.Delay,'string',a5)

axes(handles.axes1);
w=a6;
t=a4;
plot(w,t);
grid on
stem(w,t);
xlabel('arrival rate');
ylabel('throughput');

axes(handles.axes2);
o=a6;
p=a5;
plot(o,p);
grid on
stem(o,p);
xlabel('arrival rate');
ylabel('Delay');

guidata(hObject,handles);







function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C as text
%        str2double(get(hObject,'String')) returns contents of C as a double


% --- Executes during object creation, after setting all properties.
function C_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
