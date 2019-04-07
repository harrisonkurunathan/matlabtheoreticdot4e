function varargout = TSCH(varargin)
% TSCH MATLAB code for TSCH.fig
%      TSCH, by itself, creates a new TSCH or raises the existing
%      singleton*.
%
%      H = TSCH returns the handle to a new TSCH or the handle to
%      the existing singleton*.
%
%      TSCH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TSCH.M with the given input arguments.
%
%      TSCH('Property','Value',...) creates a new TSCH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TSCH_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TSCH_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TSCH

% Last Modified by GUIDE v2.5 03-May-2016 19:03:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TSCH_OpeningFcn, ...
                   'gui_OutputFcn',  @TSCH_OutputFcn, ...
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


% --- Executes just before TSCH is made visible.
function TSCH_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TSCH (see VARARGIN)

% Choose default command line output for TSCH
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TSCH wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TSCH_OutputFcn(hObject, eventdata, handles) 
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
a1= str2num(get(handles.C,'string'));
a2= str2num(get(handles.Tcycle,'string'));
a3= str2num(get(handles.b,'string'));
a4= str2num(get(handles.n,'string'));
a5= ((2.8/str2num(get(handles.Tcycle,'string')))*str2num(get(handles.C,'string')))/str2num(get(handles.n,'string'))
a6=  str2num(get(handles.n,'string'))*((str2num(get(handles.b,'string'))/str2num(get(handles.C,'string')))*(str2num(get(handles.Tcycle,'string'))-10))
set(handles.C,'string',a1)
set(handles.Tcycle,'string',a2)
set(handles.b,'string',a3)
set(handles.n,'string',a4)
set(handles.Throughput,'string',a5)
set(handles.Delay,'string',a6)

axes(handles.axes1);
w=a2;
t=a5;
plot(w,t);
grid on
stem(w,t);
xlabel('Tcycle');
ylabel('throughput');

axes(handles.axes2);
o=a2;
p=a6;
plot(o,p);
grid on
stem(o,p);
xlabel('Tcycle');
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



function Tcycle_Callback(hObject, eventdata, handles)
% hObject    handle to Tcycle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tcycle as text
%        str2double(get(hObject,'String')) returns contents of Tcycle as a double


% --- Executes during object creation, after setting all properties.
function Tcycle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tcycle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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



function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
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
