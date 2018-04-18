function varargout = finalProjecctfig(varargin)
% FINALPROJECCTFIG MATLAB code for finalProjecctfig.fig
%      FINALPROJECCTFIG, by itself, creates a new FINALPROJECCTFIG or raises the existing
%      singleton*.
%
%      H = FINALPROJECCTFIG returns the handle to a new FINALPROJECCTFIG or the handle to
%      the existing singleton*.
%
%      FINALPROJECCTFIG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALPROJECCTFIG.M with the given input arguments.
%
%      FINALPROJECCTFIG('Property','Value',...) creates a new FINALPROJECCTFIG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before finalProjecctfig_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to finalProjecctfig_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help finalProjecctfig

% Last Modified by GUIDE v2.5 17-Apr-2018 16:16:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @finalProjecctfig_OpeningFcn, ...
                   'gui_OutputFcn',  @finalProjecctfig_OutputFcn, ...
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


% --- Executes just before finalProjecctfig is made visible.
function finalProjecctfig_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to finalProjecctfig (see VARARGIN)

% Choose default command line output for finalProjecctfig
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes finalProjecctfig wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = finalProjecctfig_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function initialTemp_Callback(hObject, eventdata, handles)
% hObject    handle to initialTemp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initialTemp as text
%        str2double(get(hObject,'String')) returns contents of initialTemp as a double


% --- Executes during object creation, after setting all properties.
function initialTemp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initialTemp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function finalTemp_Callback(hObject, eventdata, handles)
% hObject    handle to finalTemp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of finalTemp as text
%        str2double(get(hObject,'String')) returns contents of finalTemp as a double


% --- Executes during object creation, after setting all properties.
function finalTemp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to finalTemp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in material.
function material_Callback(hObject, eventdata, handles)
% hObject    handle to material (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns material contents as cell array
%        contents{get(hObject,'Value')} returns selected item from material


% --- Executes during object creation, after setting all properties.
function material_CreateFcn(hObject, eventdata, handles)
% hObject    handle to material (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in planetEarth.
function planetEarth_Callback(hObject, eventdata, handles)
% hObject    handle to planetEarth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of planetEarth


% --- Executes on button press in pauseButton.
function pause_Callback(hObject, eventdata, handles)
% hObject    handle to pauseButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pauseButton


% --- Executes on button press in goButton.
function goButton_Callback(hObject, eventdata, handles)
% hObject    handle to goButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global xv;
xv = false;
global pausew;
pausew = false;
global done;
done = false;

set(handles.pauseButton,'value',0);

a = get(handles.material,'Value');
switch a
    case 1
        alpha = 23.1;
    case 2
        alpha = 19;
    case 3
        alpha = 14;
    case 4
        alpha = 54;
    case 5
        alpha = 9;
    case 6
        alpha = 150;
    case 7
        alpha = .59;
    case 8
        alpha = 8.6;
end
alpha = alpha*10^-6;
if get(handles.planetEarth,'Value')
    g = 9.81;
elseif get(handles.planetMoon,'Value')
    g = 1.62;
else
    g = 3.711;
end
ogLength = .2400615;
time = [0:1:14*24*60*60]; %2 weeks, update every second
ogTemp = str2double(get(handles.initialTemp,'String'));
fTemp = str2double(get(handles.finalTemp,'String'));
newTemp = linspace(ogTemp,fTemp,length(time));
newLength = alpha*ogLength*(newTemp-ogTemp)+ogLength;
if(isnan(ogTemp)||isnan(fTemp))
    msgbox('One or more temperatures not defined','Error','error','modal');
    return;
end
if(ogTemp<-273.15||fTemp<-273.15)
    msgbox('One or more temperatures is less than absolute zero','Error','error','modal');
    return;
end
if(ogTemp>1.41678571*10^32||fTemp>1.41678571*10^32)
    msgbox('One or more temperatures is greater than absolute hot','Error','error','modal');
    return;
end


initial_angle = deg2rad(30);
periodCorrect = 2*pi*sqrt(ogLength/g)*(1+(1/16)*initial_angle*initial_angle + (11/3072)*initial_angle*initial_angle*initial_angle*initial_angle);
periodError = 2*pi*sqrt(newLength/g)*(1+(1/16)*initial_angle*initial_angle + (11/3072)*initial_angle*initial_angle*initial_angle*initial_angle);

%periodError = 2*pi()*(newLength/g).^.5;
totalError(1) = 0;
for r=2:length(time)
    totalError(r)=totalError(r-1)+periodError(r)-periodCorrect;
end
axes(handles.errorGraph);
yyaxis left
plot(time/3600/24,periodError,time/3600/24,zeros(1,length(time))+periodCorrect);
title('Error of pendulum')
xlabel('time (days)')
ylabel('Period of pendulum (s)')
yyaxis right
plot(time/3600/24,totalError)
ylabel('Total error (s)')

axes(handles.pendulumGraph);
l = ogLength;
olength = l;
gravity = g;
deltaT = .05;
mass = 4;

initial_angle = deg2rad(30);
T = 2*pi*sqrt(l/gravity)*(1+(1/16)*initial_angle*initial_angle + (11/3072)*initial_angle*initial_angle*initial_angle*initial_angle);
angle = initial_angle;
velocity = 0;
time = 0;
linVx = velocity*l*cos(angle);
linVy = velocity*l*sin(angle);
linV = sqrt(linVx*linVx +linVy*linVy);
KEold = linV*linV*.5*mass;

PE = mass*gravity*(-cos(angle)*l+l);
    
totalEnergyMax = KEold + PE;

periods = [T];
tic;
n = 0;
xv=true;
totPaused = 0;
while(xv)
    while(pausew)
        initi = toc;
        drawnow();
        totPaused = (toc-initi)+totPaused;
    end
    %maxVelocity = sqrt(2*totalEnergyMax/mass)/l;
    
    acc = (-1 * gravity/l) * sin(angle)*deltaT;
    velocity = velocity + acc;
    angle = mod(angle + velocity*deltaT+pi,2*pi)-pi;
    time = time + deltaT;
    x(1) = 0;
    y(1) = 0;

    x(2) = sin(angle)*(.2400615+.2400615*((l-ogLength)/(newLength(end)-newLength(1))));
    y(2) = -cos(angle)*(.2400615+.2400615*((l-ogLength)/(newLength(end)-newLength(1))));
    plot(x,y);
    xlabel('*Length not to scale','fontsize',8);
    set(gca,'xtick',[])
    set(gca,'ytick',[])
    xlim([-olength*2 olength*2]);
    ylim([-1.5*olength*2 .5*olength*2]);
    pos = [x(2)-.05 y(2)-.05 .1 .1]; 
    rectangle('Position',pos,'Curvature',[1 1],'FaceColor','b');
    text(-olength*2,-1.1*olength*2,strcat('Period:',num2str(mean(periods)),' s'));
    text(-olength*2,-1.3*olength*2,strcat('Length:',num2str(l),' m'));
    pbaspect([1 1 1]);
    l = changeLength(ogLength,newLength(end),toc-totPaused);
    %fprintf('Angle:%g Velocity:%g Time:%g\n',angle,velocity,toc);
    [totalEnergyMax, T] = sliderCallback( velocity, l, angle, mass, gravity);
    if(length(periods)==25)
        periods = periods(2:end);
        periods(end + 1) = T;
    else
        periods(end + 1) = T;
    end
    n2 = toc;
    %fprintf('%g, ',(n2-n));
    pause(deltaT-(n2-n));
    n = toc;
    drawnow();
end
if(~done)
    axes(handles.pendulumGraph);
    cla reset;
    axes(handles.errorGraph);
    cla reset;
    axes(handles.errorGraph);
    cla reset;
end

function [totalEnergyMax, T] = sliderCallback( velocity, length, angle, mass, gravity)
    linV = velocity*length;
    KEold = linV*linV*.5*mass;

    PE = mass*gravity*(-cos(angle)*length+length);

    totalEnergyMax = KEold + PE;

    initial_angle = acos(-((totalEnergyMax/mass/gravity)-length)/length);
    %fprintf('PE:%g Tot: %g\n',PE,totalEnergyMax);
    T = 2*pi*sqrt(length/gravity)*(1+(1/16)*initial_angle*initial_angle + (11/3072)*initial_angle*initial_angle*initial_angle*initial_angle);


% --- Executes on button press in clearButton.
function clearButton_Callback(hObject, eventdata, handles)
% hObject    handle to clearButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(handles.finalTemp,'');
%set(handles.initialTemp,'');
global xv;
xv = false;
global pausew;
if(pausew)
    pausew = false;
    set(handles.pauseButton,'value',0);
end



% --- Executes on button press in stopButton.
function pauseButton_Callback(hObject, eventdata, handles)
% hObject    handle to stopButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pausew;
if(pausew)
    pausew = false;
else
    pausew = true;
end


function figure1_CloseRequestFcn(hObject, eventdata, handles)
global xv;
global done;
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: delete(hObject) closes the figure
xv=false;
done = true;
delete(hObject);
close all;


