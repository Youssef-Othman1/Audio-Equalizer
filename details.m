function varargout = details(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @details_OpeningFcn, ...
                   'gui_OutputFcn',  @details_OutputFcn, ...
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
% --- Executes just before details is made visible.
function details_OpeningFcn(hObject, eventdata, handles, varargin)
% Choose default command line output for details
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% --- Outputs from this function are returned to the command line.
function varargout = details_OutputFcn(hObject, eventdata, handles) 
h=findobj('tag','project');
N=getappdata(0,'a');
ord = strcat('Order: ',num2str(N));
set(handles.order,'String',ord);% Get default command line output from handles structure
band=getappdata(0,'b');
set(handles.band,'String',band);
den=getappdata(0,'e');
num=getappdata(0,'d');
fs=getappdata(0,'f');
system= tf(num,den,1/fs);
axes(handles.step);
s = stepz(num,den);
stem(s);
axes(handles.imp);
h=impz(num,den);
stem(h);
axes(handles.zp);
pzmap(system);
H1=freqz(num,den,512,fs);
fin = linspace(0,18000,512);
axes(handles.gp);
yyaxis left
plot(fin,20*log10(abs(H1)));
ylabel('Magnitude (dB)');
yyaxis right
plot(fin,angle(H1));
ylabel('Angle (radian)');
varargout{1} = handles.output;
% --- Executes during object creation, after setting all properties.
function order_CreateFcn(hObject, eventdata, handles)
function bandd_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function bandd_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
