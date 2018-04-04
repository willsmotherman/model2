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

% Last Modified by GUIDE v2.5 04-Apr-2018 15:31:58

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


% --- Executes on button press in errorToggle.
function errorToggle_Callback(hObject, eventdata, handles)
% hObject    handle to errorToggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of errorToggle


% --- Executes on button press in goButton.
function goButton_Callback(hObject, eventdata, handles)
% hObject    handle to goButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.pendulumGraph);
plot([.2,.3,.4],[.7,.4,.3])
if(get(handles.errorToggle,'Value')==0)
    plot([.2,.3,.4],[.7,.4,.8])
else
    plot([.4,.3,.4],[.7,.4,.8])
end

% --- Executes on button press in clearButton.
function clearButton_Callback(hObject, eventdata, handles)
% hObject    handle to clearButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.finalTemp,'');
set(handles.initialTemp,'');
axes(handles.pendulumGraph);
cla;
axes(handles.errorGraph);
cla;


% --- Executes on button press in stopButton.
function stopButton_Callback(hObject, eventdata, handles)
% hObject    handle to stopButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
