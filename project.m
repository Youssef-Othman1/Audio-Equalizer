function varargout = project(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
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
function project_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
function varargout = project_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
function filepath_Callback(hObject, eventdata, handles)
function filepath_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes on button press in iir.
function iir_Callback(hObject, eventdata, handles)
if get(handles.fir,'value')==1
    set(handles.fir,'value',0)
end
% --- Executes on button press in fir.
function fir_Callback(hObject, eventdata, handles)
if get(handles.iir,'value')==1
    set(handles.iir,'value',0)
end
function samplingFrequency_Callback(hObject, eventdata, handles)
function samplingFrequency_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes on slider movement.
function f1_Callback(hObject, eventdata, handles)

function f1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on slider movement.
function f2_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function f2_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on slider movement.
function f3_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function f3_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on slider movement.
function f9_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function f9_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on slider movement.
function f4_Callback(hObject, eventdata, handles)
function f4_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on slider movement.
function f5_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function f5_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on slider movement.
function f6_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function f6_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on slider movement.
function f7_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function f7_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on slider movement.
function f8_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function f8_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global a1;global b1;global N1;global fs;
myband1='0 - 170 Hz';
setappdata(0,'a',N1);
setappdata(0,'b',myband1);
setappdata(0,'d',b1);
setappdata(0,'e',a1);
setappdata(0,'f',fs);
details;
% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
global a2;global b2;global N2;global fs;
myband1='170 - 310 Hz';
setappdata(0,'a',N2);
setappdata(0,'b',myband1);
setappdata(0,'d',b2);
setappdata(0,'e',a2);
setappdata(0,'f',fs);
details;
% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
global a3;global b3;global N3;global fs;
myband1='310 - 600 Hz';
setappdata(0,'a',N3);
setappdata(0,'b',myband1);
setappdata(0,'d',b3);
setappdata(0,'e',a3);
setappdata(0,'f',fs);
details;
% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
global a4;global b4;global N4;global fs;
myband1='600 - 1000 Hz';
setappdata(0,'a',N4);
setappdata(0,'b',myband1);
setappdata(0,'d',b4);
setappdata(0,'e',a4);
setappdata(0,'f',fs);
details;
% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
global a5;global b5;global N5;global fs;
myband1='1 - 3 kHz';
setappdata(0,'a',N5);
setappdata(0,'b',myband1);
setappdata(0,'d',b5);
setappdata(0,'e',a5);
setappdata(0,'f',fs);
details;
% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
global a6;global b6;global N6;global fs;
myband1='3 - 6 kHz';
setappdata(0,'a',N6);
setappdata(0,'b',myband1);
setappdata(0,'d',b6);
setappdata(0,'e',a6);
setappdata(0,'f',fs);
details;
% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
global a7;global b7;global N7;global fs;
myband1='6 - 12 kHz';
setappdata(0,'a',N7);
setappdata(0,'b',myband1);
setappdata(0,'d',b7);
setappdata(0,'e',a7);
setappdata(0,'f',fs);
details;
% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
global a8;global b8;global N8;global fs;
myband1='12 - 14 kHz';
setappdata(0,'a',N8);
setappdata(0,'b',myband1);
setappdata(0,'d',b8);
setappdata(0,'e',a8);
setappdata(0,'f',fs);
details;
% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
global a9;global b9;global N9;global fs;
myband1='14 - 16 kHz';
setappdata(0,'a',N9);
setappdata(0,'b',myband1);
setappdata(0,'d',b9);
setappdata(0,'e',a9);
setappdata(0,'f',fs);
details;
% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
name=get(handles.filepath,'String');
[y, org_fs] = audioread(name);
global fs;
fs=str2num(get(handles.samplingFrequency,'String'));
if length(fs) == 0
    fs = org_fs;
end 
radio_iir=get(handles.iir,'value');
global b1;global b2;global b3;global b4;global b5;global b6;global b7;global b8;global b9;
global a1;global a2;global a3;global a4;global a5;global a6;global a7;global a8;global a9;
global N1;global N2;global N3;global N4;global N5;global N6;global N7;global N8;global N9;
g1=10^(get(handles.f1,'value') / 20);
g2=10^(get(handles.f2,'value') / 20);
g3=10^(get(handles.f3,'value') / 20);
g4=10^(get(handles.f4,'value') / 20);
g5=10^(get(handles.f5,'value') / 20);
g6=10^(get(handles.f6,'value') / 20);
g7=10^(get(handles.f7,'value') / 20);
g8=10^(get(handles.f8,'value') / 20);
g9=10^(get(handles.f9,'value') / 20);
radio_timebutton=get(handles.timebutton,'value');
radio_freqbutton=get(handles.freqbutton,'value');
radio_magbutton=get(handles.mag,'value');
radio_phasebutton=get(handles.phase,'value');
duration = length(y)/fs; 
tx = linspace(0, duration, length(y));        
fmax = fs/2;
if radio_iir == 1
    %Design IIR Filters.
    N1=6;[b1, a1] = butter(N1,170/fmax);
    N2=4;[b2, a2] = butter(N2/2,[170/fmax, 310/fmax]);
    N3=4;[b3, a3] = butter(N3/2,[310/fmax, 600/fmax]);
    N4=2;[b4, a4] = butter(N4/2,[600/fmax, 1000/fmax]);
    N5=6;[b5, a5] = butter(N5/2,[1000/fmax, 3000/fmax]);
    N6=10;[b6, a6] = butter(N6/2,[3000/fmax, 6000/fmax]);
    N7=14;[b7, a7] = butter(N7/2,[6000/fmax, 12000/fmax]);
    N8=12;[b8, a8] = butter(N8/2,[12000/fmax, 14000/fmax]);
    N9=10;[b9, a9] = butter(N9/2,[14000/fmax, 16000/fmax]);
else
    %Design FIR Filters.
    N1=450;N2=450;N3=450;N4=450;N5=450;N6=450;N7=450;N8=450;N9=450;
    b1 = fir1(N1,170/fmax);
    a1=1;
    b2 = fir1(N2,[170/fmax, 310/fmax]);
    a2=1;
    b3 = fir1(N3,[310/fmax, 600/fmax]);
    a3=1;
    b4 = fir1(N4,[600/fmax, 1000/fmax]);
    a4=1;
    b5 = fir1(N5,[1000/fmax, 3000/fmax]);
    a5=1;
    b6 = fir1(N6,[3000/fmax, 6000/fmax]);
    a6=1;
    b7 = fir1(N7,[6000/fmax, 12000/fmax]);
    a7=1;
    b8 = fir1(N8,[12000/fmax, 14000/fmax]);
    a8=1;
    b9 = fir1(N9,[14000/fmax, 16000/fmax]);
    a9=1;    
end
    b1=g1*b1;b2=g2*b2;b3=g3*b3;
    b4=g4*b4;b5=g5*b5;b6=g6*b6;
    b7=g7*b7;b8=g8*b8;b9=g9*b9;
y1 = filter(b1,a1,y);
y2 = filter(b2,a2,y);
y3 = filter(b3,a3,y);
y4 = filter(b4,a4,y);
y5 = filter(b5,a5,y);
y6 = filter(b6,a6,y);
y7 = filter(b7,a7,y);
y8 = filter(b8,a8,y);
y9 = filter(b9,a9,y);                
yout = y1+y2+y3+y4+y5+y6+y7+y8+y9;
if radio_timebutton==1
    set(handles.mag,'visible','off');
    set(handles.phase,'visible','off');
    set(handles.magphase,'visible','off');
    cla(handles.filter1,'reset');
    cla(handles.filter2,'reset');
    cla(handles.filter3,'reset');   
    cla(handles.filter4,'reset');
    cla(handles.filter5,'reset');
    cla(handles.filter6,'reset');
    cla(handles.filter7,'reset');
    cla(handles.filter8,'reset');
    cla(handles.filter9,'reset');
    cla(handles.inputSignal,'reset');
    cla(handles.outputSignal,'reset');  
    axes(handles.inputSignal);
    plot(tx,y);ylim([-1 1]);   
    axes(handles.filter1);plot(tx,y1);
    axes(handles.filter2);plot(tx,y2);
    axes(handles.filter3);plot(tx,y3);
    axes(handles.filter4);plot(tx,y4);
    axes(handles.filter5);plot(tx,y5);
    axes(handles.filter6);plot(tx,y6);
    axes(handles.filter7);plot(tx,y7);
    axes(handles.filter8);plot(tx,y8);
    axes(handles.filter9);plot(tx,y9);
    axes(handles.outputSignal);plot(tx,yout)
end
if radio_freqbutton==1
        set(handles.mag,'visible','on');
        set(handles.phase,'visible','on');
        set(handles.magphase,'visible','on');
        fvec= linspace(0, duration, duration*fs);
        fin = linspace(0, duration, 512);
        fftSignalinp=fftshift(fft(y));
        fftSignalop=fftshift(fft(yout));
        if radio_magbutton==1
            cla(handles.inputSignal,'reset');
            cla(handles.outputSignal,'reset');
            axes(handles.inputSignal);
            plot(fvec,20*log10(abs(fftSignalinp)));    
            ylabel('Magnitude (dB)');
            axes(handles.outputSignal);
            plot(fvec,20*log10(abs(fftSignalop)));    
            ylabel('Magnitude (dB)');
        elseif radio_phasebutton==1
            cla(handles.inputSignal,'reset');
            cla(handles.outputSignal,'reset');
            axes(handles.inputSignal);
            plot(fvec,angle(fftSignalinp));
            ylabel('Angle (radian)');
            axes(handles.outputSignal);
            plot(fvec,angle(fftSignalop));
            ylabel('Angle (radian)');
        else    
            cla(handles.inputSignal,'reset');
            cla(handles.outputSignal,'reset');    
            set(handles.magphase,'value',1);    
            axes(handles.inputSignal);
            yyaxis left
            plot(fvec,20*log10(abs(fftSignalinp)));    
            ylabel('Magnitude (dB)');
            yyaxis right
            plot(fvec,angle(fftSignalinp));
            ylabel('Angle (radian)');
            axes(handles.outputSignal);
            yyaxis left
            plot(fvec,20*log10(abs(fftSignalop)));    
            ylabel('Magnitude (dB)');
            yyaxis right
            plot(fvec,angle(fftSignalop));
            ylabel('Angle (radian)');
        end
        %Plot filters in freq.
        H1=freqz(b1,a1,512,fs);
        axes(handles.filter1);
        yyaxis left
        plot(fin,20*log10(abs(H1)));    
        ylabel('Magnitude (dB)');
        yyaxis right
        plot(fin,angle(H1));
        ylabel('Angle (radian)');
        
        H2=freqz(b2,a2,512,fs);
        axes(handles.filter2);
        yyaxis left
        plot(fin,20*log10(abs(H2)));    
        ylabel('Magnitude (dB)');
        yyaxis right
        plot(fin,angle(H2));
        ylabel('Angle (radian)');
        
        H3=freqz(b3,a3,512,fs);
        axes(handles.filter3);
        yyaxis left
        plot(fin,20*log10(abs(H3)));    
        ylabel('Magnitude (dB)');
        yyaxis right
        plot(fin,angle(H3));
        ylabel('Angle (radian)');
        
        H4=freqz(b4,a4,512,fs);
        axes(handles.filter4);
        yyaxis left
        plot(fin,20*log10(abs(H4)));    
        ylabel('Magnitude (dB)');
        yyaxis right
        plot(fin,angle(H4));
        ylabel('Angle (radian)');
        
        H5=freqz(b5,a5,512,fs);
        axes(handles.filter5);
        yyaxis left
        plot(fin,20*log10(abs(H5)));    
        ylabel('Magnitude (dB)');
        yyaxis right
        plot(fin,angle(H5));
        ylabel('Angle (radian)');
        
        H6=freqz(b6,a6,512,fs);
        axes(handles.filter6);
        yyaxis left
        plot(fin,20*log10(abs(H6)));    
        ylabel('Magnitude (dB)');
        yyaxis right
        plot(fin,angle(H6));
        ylabel('Angle (radian)');
        
        H7=freqz(b7,a7,512,fs);
        axes(handles.filter7);
        yyaxis left
        plot(fin,20*log10(abs(H7)));    
        ylabel('Magnitude (dB)');
        yyaxis right
        plot(fin,angle(H7));
        ylabel('Angle (radian)');
        
        H8=freqz(b8,a8,512,fs);
        axes(handles.filter8);
        yyaxis left
        plot(fin,20*log10(abs(H8)));    
        ylabel('Magnitude (dB)');
        yyaxis right
        plot(fin,angle(H8));
        ylabel('Angle (radian)');
        
        H9=freqz(b9,a9,512,fs);
        axes(handles.filter9);
        yyaxis left
        plot(fin,20*log10(abs(H9)));    
        ylabel('Magnitude (dB)');
        yyaxis right
        plot(fin,angle(H9));
        ylabel('Angle (radian)');    
end    
%sound(y, fs);
audiowrite('finalfile.wav',yout,fs);
% --- Executes on button press in pushbutton29.

function pushbutton29_Callback(hObject, eventdata, handles)
s=[];
set(handles.mag,'visible','off');
set(handles.phase,'visible','off');
set(handles.magphase,'visible','off');
set(handles.iir,'value',0);
set(handles.fir,'value',0);
set(handles.freqbutton,'value',0);
set(handles.timebutton,'value',0);
set(handles.samplingFrequency,'string',s);
set(handles.f1,'value',0);
set(handles.f2,'value',0);
set(handles.f3,'value',0);
set(handles.f4,'value',0);
set(handles.f5,'value',0);
set(handles.f6,'value',0);
set(handles.f7,'value',0);
set(handles.f8,'value',0);
set(handles.f9,'value',0);
cla(handles.filter1,'reset');
cla(handles.filter2,'reset');
cla(handles.filter3,'reset');
cla(handles.filter4,'reset');
cla(handles.filter5,'reset');
cla(handles.filter6,'reset');
cla(handles.filter7,'reset');
cla(handles.filter8,'reset');
cla(handles.filter9,'reset');
cla(handles.inputSignal,'reset');
cla(handles.outputSignal,'reset');
% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, ~, handles)
% --- Executes on button press in freqbutton.
function freqbutton_Callback(hObject, eventdata, handles)
if get(handles.timebutton,'value')==1
    set(handles.timebutton,'value',0)
end
% --- Executes on button press in timebutton.
function timebutton_Callback(hObject, eventdata, handles)
if get(handles.freqbutton,'value')==1
    set(handles.freqbutton,'value',0)
end
% --- Executes on button press in mag.
function mag_Callback(hObject, eventdata, handles)
if get(handles.mag,'value')==1
    set(handles.phase,'value',0)
    set(handles.magphase,'value',0)
end    
% --- Executes on button press in phase.
function phase_Callback(hObject, eventdata, handles)
if get(handles.phase,'value')==1
    set(handles.mag,'value',0)
    set(handles.magphase,'value',0)
end 
% --- Executes on button press in magphase.
function magphase_Callback(hObject, eventdata, handles)
if get(handles.magphase,'value')==1
    set(handles.phase,'value',0)
    set(handles.mag,'value',0)
end 
% hObject    handle to magphase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of magphase
