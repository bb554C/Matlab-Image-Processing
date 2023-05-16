function varargout = imageProcessingDesign(varargin)
% IMAGEPROCESSINGDESIGN MATLAB code for imageProcessingDesign.fig
%      IMAGEPROCESSINGDESIGN, by itself, creates a new IMAGEPROCESSINGDESIGN or raises the existing
%      singleton*.
%
%      H = IMAGEPROCESSINGDESIGN returns the handle to a new IMAGEPROCESSINGDESIGN or the handle to
%      the existing singleton*.
%
%      IMAGEPROCESSINGDESIGN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMAGEPROCESSINGDESIGN.M with the given input arguments.
%
%      IMAGEPROCESSINGDESIGN('Property','Value',...) creates a new IMAGEPROCESSINGDESIGN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before imageProcessingDesign_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to imageProcessingDesign_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help imageProcessingDesign

% Last Modified by GUIDE v2.5 10-Jul-2019 14:32:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @imageProcessingDesign_OpeningFcn, ...
                   'gui_OutputFcn',  @imageProcessingDesign_OutputFcn, ...
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


% --- Executes just before imageProcessingDesign is made visible.
function imageProcessingDesign_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to imageProcessingDesign (see VARARGIN)

% Choose default command line output for imageProcessingDesign
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes imageProcessingDesign wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = imageProcessingDesign_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
set(handles.BI_Val,'Enable','off')
set(handles.BI_valNum,'Enable','off')
set(handles.index_Val,'Enable','off')
set(handles.index_valNum,'Enable','off')
set(handles.apply_Hsize,'Enable','off')
set(handles.hsize_Val,'Enable','off')
set(handles.apply_Binary,'Enable','off')
set(handles.apply_Index,'Enable','off')
set(handles.apply_Intensity,'Enable','off')
set(handles.lowVal,'Enable','off')
set(handles.highVal,'Enable','off')
set(handles.stringBox,'Enable','off')
set(handles.thresh_Val,'Enable','off');
set(handles.threshVal,'Enable','off');
set(handles.apply_Threshold,'Enable','off');
set(handles.multi_Row,'Enable','off');
set(handles.multi_Col,'Enable','off');
set(handles.apply_Multif,'Enable','off');
set(handles.sharp_Val,'Enable','off');
set(handles.sharpVal,'Enable','off');
set(handles.apply_Sharp,'Enable','off');
set(handles.apply_Para,'Enable','off');
set(handles.contrs_Val,'Enable','off');
set(handles.contrsVal,'Enable','off');
set(handles.apply_Contrs,'Enable','off');
set(handles.morph_Type,'Enable','off')



%==============================================================================%
%=============================INITIALIZATION===================================%
%==============================================================================%

% --- Executes during object creation, after setting all properties.
function RGB_R_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RGB_R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes during object creation, after setting all properties.
function RGB_G_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RGB_G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes during object creation, after setting all properties.
function RGB_B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RGB_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes during object creation, after setting all properties.
function redValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to redValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function blueValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blueValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function greenValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to greenValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function BI_Val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BI_Val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes during object creation, after setting all properties.
function BI_valNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BI_valNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function index_Val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to index_Val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function index_valNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BI_valNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function hsize_Val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hsize_Val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function sigma_Val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma_Val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes during object creation, after setting all properties.
function sigmaValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigmaValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function thresh_Val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thresh_Val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes during object creation, after setting all properties.
function threshVal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to threshVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function highVal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to highVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function lowVal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lowVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function stringBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stringBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function multi_Col_CreateFcn(hObject, eventdata, handles)
% hObject    handle to multi_Col (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function multi_Row_CreateFcn(hObject, eventdata, handles)
% hObject    handle to multi_Row (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function sharpVal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sharpVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function sharp_Val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sharp_Val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function morph_Type_CreateFcn(hObject, eventdata, handles)
% hObject    handle to morph_Type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function contrsVal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to contrsVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function contrs_Val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to contrs_Val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes during object creation, after setting all properties.
function subtrVal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to subtrVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%==============================================================================%
%================================CALLBACKS=====================================%
%==============================================================================%



function retrieveImage_Callback(hObject, eventdata, handles)
global origImage
[filename, pathname] = uigetfile('*.m', 'Pick a MATLAB code file');
    if isequal(filename,0) || isequal(pathname,0)
       disp('User pressed cancel')
    else
       origImage=imread(filename);
       axes(handles.axes1);
       imshow(origImage);
    end
    
function saveImage_Callback(hObject, eventdata, handles)
% hObject    handle to saveImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filImage
imwrite(filImage,'Filtered_Image.jpg');

function filterImage_Callback(hObject, eventdata, handles)
global filImage origImage
axes(handles.axes2);
imshow(filImage);

% --- Executes on button press in reset_Filter.
function reset_Filter_Callback(hObject, eventdata, handles)
global filImage origImage;
filImage=origImage;
axes(handles.axes2);
imshow(filImage);

function RGB_Callback(hObject, eventdata, handles)
set(handles.RGB_R,'Enable','on')  
set(handles.RGB_G,'Enable','on') 
set(handles.RGB_B,'Enable','on')
set(handles.RGB_Apply,'Enable','on')
set(handles.redValue,'Enable','on')  
set(handles.greenValue,'Enable','on') 
set(handles.blueValue,'Enable','on')
set(handles.BI_Val,'Enable','off')
set(handles.BI_valNum,'Enable','off')
set(handles.index_Val,'Enable','off')
set(handles.index_valNum,'Enable','off')
set(handles.apply_Para,'Enable','off')
set(handles.apply_Hsize,'Enable','off')
set(handles.hsize_Val,'Enable','off')
set(handles.apply_Binary,'Enable','off')
set(handles.apply_Index,'Enable','off')
set(handles.apply_Intensity,'Enable','off')
set(handles.highVal,'Enable','off')
set(handles.apply_Intensity,'Enable','off')
set(handles.lowVal,'Enable','off')
set(handles.highVal,'Enable','off')
set(handles.stringBox,'Enable','off')
set(handles.morph_Type,'Enable','off')

function RGB_R_Callback(hObject, eventdata, handles)
global origImage rV
maxSliderValue = get(handles.RGB_R, 'Max');
minSliderValue = get(handles.RGB_R, 'Min');
theRange = maxSliderValue - minSliderValue;
steps = [1/theRange, 10/theRange];
set(handles.RGB_R, 'SliderStep', steps);
rV=get(hObject,'Value');
rNum=num2str(rV);
set(handles.redValue,'String',rNum);

function RGB_G_Callback(hObject, eventdata, handles)
global origImage gV
maxSliderValue = get(handles.RGB_G, 'Max');
minSliderValue = get(handles.RGB_G, 'Min');
theRange = maxSliderValue - minSliderValue;
steps = [1/theRange, 10/theRange];
set(handles.RGB_G, 'SliderStep', steps);
gV=get(hObject,'Value');
gNum=num2str(gV);
set(handles.greenValue,'String',gNum);

function RGB_B_Callback(hObject, eventdata, handles)
global origImage bV
maxSliderValue = get(handles.RGB_B, 'Max');
minSliderValue = get(handles.RGB_B, 'Min');
theRange = maxSliderValue - minSliderValue;
steps = [1/theRange, 10/theRange];
set(handles.RGB_B, 'SliderStep', steps);
bV=get(hObject,'Value');
bNum=num2str(bV);
set(handles.blueValue,'String',bNum);

function RGB_Apply_Callback(hObject, eventdata, handles)
global filImage origImage rV gV bV
temp=origImage;
temp(:,:,1)=temp(:,:,1)+rV;
temp(:,:,2)=temp(:,:,2)+gV;
temp(:,:,3)=temp(:,:,3)+bV;
filImage=temp;

function binary_Image_Callback(hObject, eventdata, handles)
set(handles.BI_Val,'Enable','on')
set(handles.BI_valNum,'Enable','on')
set(handles.apply_Binary,'Enable','on')
set(handles.RGB_R,'Enable','off')  
set(handles.RGB_G,'Enable','off') 
set(handles.RGB_B,'Enable','off')
set(handles.RGB_Apply,'Enable','off')
set(handles.redValue,'Enable','off')  
set(handles.greenValue,'Enable','off') 
set(handles.blueValue,'Enable','off')
set(handles.index_Val,'Enable','off')
set(handles.index_valNum,'Enable','off')
set(handles.apply_Para,'Enable','off')
set(handles.apply_Hsize,'Enable','off')
set(handles.hsize_Val,'Enable','off')
set(handles.apply_Index,'Enable','off')
set(handles.apply_Intensity,'Enable','off')
set(handles.highVal,'Enable','off')
set(handles.apply_Intensity,'Enable','off')
set(handles.lowVal,'Enable','off')
set(handles.highVal,'Enable','off')
set(handles.stringBox,'Enable','off')
set(handles.morph_Type,'Enable','off')


function BI_Val_Callback(hObject, eventdata, handles)
global binary
binary=get(hObject,'Value');
binNum=num2str(binary);
set(handles.BI_valNum,'String',binNum);

function apply_Binary_Callback(hObject, eventdata, handles)
global temp filImage origImage binary
temp=origImage;
temp=im2bw(origImage,binary);
filImage=temp;

function indexed_Image_Callback(hObject, eventdata, handles)
set(handles.index_Val,'Enable','on')
set(handles.index_valNum,'Enable','on')
set(handles.apply_Index,'Enable','on')
set(handles.RGB_R,'Enable','off')  
set(handles.RGB_G,'Enable','off') 
set(handles.RGB_B,'Enable','off')
set(handles.RGB_Apply,'Enable','off')
set(handles.redValue,'Enable','off')  
set(handles.greenValue,'Enable','off') 
set(handles.blueValue,'Enable','off')
set(handles.BI_Val,'Enable','off')
set(handles.BI_valNum,'Enable','off')
set(handles.apply_Para,'Enable','off')
set(handles.apply_Hsize,'Enable','off')
set(handles.apply_Binary,'Enable','off')
set(handles.hsize_Val,'Enable','off')
set(handles.apply_Intensity,'Enable','off')
set(handles.highVal,'Enable','off')
set(handles.apply_Intensity,'Enable','off')
set(handles.lowVal,'Enable','off')
set(handles.highVal,'Enable','off')
set(handles.stringBox,'Enable','off')
set(handles.morph_Type,'Enable','off')


function index_Val_Callback(hObject, eventdata, handles)
global indVal
maxSliderValue = get(handles.index_Val, 'Max');
minSliderValue = get(handles.index_Val, 'Min');
theRange = maxSliderValue - minSliderValue;
steps = [1/theRange, 10/theRange];
set(handles.index_Val, 'SliderStep', steps);
indVal=get(hObject,'Value');
bNum=num2str(indVal);
set(handles.index_valNum,'String',bNum);

function index_valNum_Callback(hObject, eventdata, handles)
% hObject    handle to index_valNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function apply_Index_Callback(hObject, eventdata, handles)
global temp filImage origImage indVal
temp=origImage;
[temp,map]=rgb2ind(origImage,indVal);
filImage=temp;

function morpho_Open_Callback(hObject, eventdata, handles)
set(handles.apply_Para,'Enable','on')
set(handles.morph_Type,'Enable','on')
set(handles.RGB_R,'Enable','off')  
set(handles.RGB_G,'Enable','off') 
set(handles.RGB_B,'Enable','off')
set(handles.RGB_Apply,'Enable','off')
set(handles.redValue,'Enable','off')  
set(handles.greenValue,'Enable','off') 
set(handles.blueValue,'Enable','off')
set(handles.BI_Val,'Enable','off')
set(handles.BI_valNum,'Enable','off')
set(handles.index_Val,'Enable','off')
set(handles.index_valNum,'Enable','off')
set(handles.apply_Hsize,'Enable','off')
set(handles.hsize_Val,'Enable','off')
set(handles.apply_Binary,'Enable','off')
set(handles.apply_Index,'Enable','off')
set(handles.apply_Intensity,'Enable','off')
set(handles.highVal,'Enable','off')
set(handles.apply_Intensity,'Enable','off')
set(handles.lowVal,'Enable','off')
set(handles.highVal,'Enable','off')
set(handles.stringBox,'Enable','off')

% --- Executes on button press in apply_Para.
function apply_Para_Callback(hObject, eventdata, handles)
global morphNum origImage filImage
a=morphNum;
b=origImage;
if a==1
    SE=strel('diamond',21);
elseif a==2
    SE=strel('disk',21);
elseif a==3
    SE=strel('octagon',21);
elseif a==4
   SE=strel('line',17,45);
elseif a==5
   SE=strel('rectangle',[14 14]);
elseif a==6
    SE=strel('square',21);
elseif a==7
    SE=strel('cube',21);
elseif a==8
    SE=strel('cuboid',[17 13 14]);
elseif a==9
    SE=strel('sphere',5);
end
temp=imopen(b,SE);
filImage=temp;

% --- Executes on selection change in morph_Type.
function morph_Type_Callback(hObject, eventdata, handles)
global morphNum
contents=cellstr(get(hObject,'String'));
morphChoice=contents(get(hObject,'Value'));
if (strcmp(morphChoice,'Diamond'))
    morphNum=1;
elseif (strcmp(morphChoice,'Disk'))
    morphNum=2;
elseif (strcmp(morphChoice,'Octagon'))
    morphNum=3; 
elseif (strcmp(morphChoice,'Line'))
    morphNum=4;
elseif (strcmp(morphChoice,'Rectangle'))
    morphNum=5;
elseif (strcmp(morphChoice,'Square'))
    morphNum=6;
elseif (strcmp(morphChoice,'Cube'))
    morphNum=7;
elseif (strcmp(morphChoice,'Cuboid'))
    morphNum=8;
elseif (strcmp(morphChoice,'Sphere'))
    morphNum=9;
end

    
% --- Executes on button press in ave_Fil.
function ave_Fil_Callback(hObject, eventdata, handles)
set(handles.apply_Hsize,'Enable','on')
set(handles.hsize_Val,'Enable','on')
set(handles.RGB_R,'Enable','off')  
set(handles.RGB_G,'Enable','off') 
set(handles.RGB_B,'Enable','off')
set(handles.RGB_Apply,'Enable','off')
set(handles.redValue,'Enable','off')  
set(handles.greenValue,'Enable','off') 
set(handles.blueValue,'Enable','off')
set(handles.BI_Val,'Enable','off')
set(handles.BI_valNum,'Enable','off')
set(handles.index_Val,'Enable','off')
set(handles.index_valNum,'Enable','off')
set(handles.apply_Para,'Enable','off')
set(handles.apply_Binary,'Enable','off')
set(handles.apply_Index,'Enable','off')
set(handles.apply_Intensity,'Enable','off')
set(handles.lowVal,'Enable','off')
set(handles.highVal,'Enable','off')
set(handles.stringBox,'Enable','off')
set(handles.morph_Type,'Enable','off')


% --- Executes on button press in apply_Hsize.
function apply_Hsize_Callback(hObject, eventdata, handles)
global temp filImage origImage
temp2=rgb2gray(origImage);
hsize=str2double(handles.hsize_Val.String);
temp=filter2(fspecial('average', hsize), temp2)/255;
filImage=temp;

function hsize_Val_Callback(hObject, eventdata, handles)
% hObject    handle to hsize_Val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in color_Thresh.
function color_Thresh_Callback(hObject, eventdata, handles)
% hObject    handle to color_Thresh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filImage
a=get(hObject,'Value');
if a==1
    set(handles.thresh_Val,'Enable','on');
    set(handles.threshVal,'Enable','on');
    set(handles.apply_Threshold,'Enable','on');
elseif a==0
    set(handles.thresh_Val,'Enable','off');
    set(handles.threshVal,'Enable','off');
    set(handles.apply_Threshold,'Enable','off');
end

% Hint: get(hObject,'Value') returns toggle state of color_Thresh


% --- Executes on slider movement.
function thresh_Val_Callback(hObject, eventdata, handles)
global thresh
maxSliderValue = get(handles.thresh_Val, 'Max');
minSliderValue = get(handles.thresh_Val, 'Min');
theRange = maxSliderValue - minSliderValue;
steps = [1/theRange, 10/theRange];
set(handles.thresh_Val, 'SliderStep', steps);
thresh=get(hObject,'Value');
threshNum=num2str(thresh);
set(handles.threshVal,'String',threshNum);


function threshVal_Callback(hObject, eventdata, handles)
% hObject    handle to thresh_Val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes on button press in apply_Threshold.
function apply_Threshold_Callback(hObject, eventdata, handles)
global thresh filImage
thresh_Image=filImage;
threshRGB = multithresh(thresh_Image,7);
value = [0 threshRGB(2:end) thresh];
filImage=imquantize(thresh_Image, threshRGB, value);


% --- Executes on button press in apply_Intensity.
function apply_Intensity_Callback(hObject, eventdata, handles)
global origImage filImage temp
highVal=str2double(handles.highVal.String);
lowVal=str2double(handles.lowVal.String);
if(highVal<lowVal||highVal==lowVal)
    string1='Error: Set Low<High';
    set(handles.stringBox,'String',string1);
elseif(highVal>=1||lowVal<=0)
    string2='Error: Set 0.1~0.9';
    set(handles.stringBox,'String',string2);
else
    string4='Valid Input!';
    set(handles.stringBox,'String',string4);
    a=origImage;
    temp=imadjust(a,[lowVal highVal]);
    filImage=temp;
end


% --- Executes on button press in intensity_Image.
function intensity_Image_Callback(hObject, eventdata, handles)
set(handles.apply_Intensity,'Enable','on')
set(handles.lowVal,'Enable','on')
set(handles.highVal,'Enable','on')
set(handles.stringBox,'Enable','on')
set(handles.RGB_R,'Enable','off')  
set(handles.RGB_G,'Enable','off') 
set(handles.RGB_B,'Enable','off')
set(handles.RGB_Apply,'Enable','off')
set(handles.redValue,'Enable','off')  
set(handles.greenValue,'Enable','off') 
set(handles.blueValue,'Enable','off')
set(handles.BI_Val,'Enable','off')
set(handles.BI_valNum,'Enable','off')
set(handles.index_Val,'Enable','off')
set(handles.index_valNum,'Enable','off')
set(handles.apply_Para,'Enable','off')
set(handles.apply_Hsize,'Enable','off')
set(handles.hsize_Val,'Enable','off')
set(handles.apply_Binary,'Enable','off')
set(handles.apply_Index,'Enable','off')
set(handles.morph_Type,'Enable','off')

function highVal_Callback(hObject, eventdata, handles)
% hObject    handle to highVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of highVal as text
%        str2double(get(hObject,'String')) returns contents of highVal as a double



function lowVal_Callback(hObject, eventdata, handles)
% hObject    handle to lowVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lowVal as text
%        str2double(get(hObject,'String')) returns contents of lowVal as a double



function stringBox_Callback(hObject, eventdata, handles)
% hObject    handle to stringBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stringBox as text
%        str2double(get(hObject,'String')) returns contents of stringBox as a double



function multi_Row_Callback(hObject, eventdata, handles)
% hObject    handle to multi_Row (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of multi_Row as text
%        str2double(get(hObject,'String')) returns contents of multi_Row as a double



function multi_Col_Callback(hObject, eventdata, handles)
% hObject    handle to multi_Col (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of multi_Col as text
%        str2double(get(hObject,'String')) returns contents of multi_Col as a double



% --- Executes on button press in apply_Multif.
function apply_Multif_Callback(hObject, eventdata, handles)
global filImage
rowNum=str2double(handles.multi_Row.String);
colNum=str2double(handles.multi_Col.String);
mFrame=repmat(filImage, rowNum, colNum);
figure(1); imshow(mFrame)


% --- Executes on button press in multi_Frame.
function multi_Frame_Callback(hObject, eventdata, handles)
a=get(hObject,'Value');
if a==1
    set(handles.multi_Row,'Enable','on');
    set(handles.multi_Col,'Enable','on');
    set(handles.apply_Multif,'Enable','on');
elseif a==0
    set(handles.multi_Row,'Enable','off');
    set(handles.multi_Col,'Enable','off');
    set(handles.apply_Multif,'Enable','off');
end


% --- Executes on button press in image_Sharp.
function image_Sharp_Callback(hObject, eventdata, handles)
a=get(hObject,'Value');
if a==1
    set(handles.sharp_Val,'Enable','on');
    set(handles.sharpVal,'Enable','on');
    set(handles.apply_Sharp,'Enable','on');
elseif a==0
    set(handles.sharp_Val,'Enable','off');
    set(handles.sharpVal,'Enable','off');
    set(handles.apply_Sharp,'Enable','off');
end


% --- Executes on slider movement.
function sharp_Val_Callback(hObject, eventdata, handles)
global sharpness
maxSliderValue = get(handles.sharp_Val, 'Max');
minSliderValue = get(handles.sharp_Val, 'Min');
theRange = maxSliderValue - minSliderValue;
steps = [1/theRange, 10/theRange];
set(handles.sharp_Val, 'SliderStep', steps);
sharpness=get(hObject,'Value');
sharpNum=num2str(sharpness);
set(handles.sharpVal,'String',sharpNum);


% --- Executes on button press in apply_Sharp.
function apply_Sharp_Callback(hObject, eventdata, handles)
global sharpness filImage
sharp_Image=filImage;
filImage=imsharpen(sharp_Image,'Amount',sharpness);



function sharpVal_Callback(hObject, eventdata, handles)
% hObject    handle to sharpVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sharpVal as text
%        str2double(get(hObject,'String')) returns contents of sharpVal as a double


% --- Executes on button press in image_Contrast.
function image_Contrast_Callback(hObject, eventdata, handles)
a=get(hObject,'Value');
if a==1
    set(handles.contrs_Val,'Enable','on');
    set(handles.contrsVal,'Enable','on');
    set(handles.apply_Contrs,'Enable','on');
elseif a==0
    set(handles.contrs_Val,'Enable','off');
    set(handles.contrsVal,'Enable','off');
    set(handles.apply_Contrs,'Enable','off');
end


% --- Executes on slider movement.
function contrs_Val_Callback(hObject, eventdata, handles)
global contrast
contrast=get(hObject,'Value');
contrsNum=num2str(contrast);
set(handles.contrsVal,'String',contrsNum);

function contrsVal_Callback(hObject, eventdata, handles)
% hObject    handle to contrsVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of contrsVal as text
%        str2double(get(hObject,'String')) returns contents of contrsVal as a double


% --- Executes on button press in apply_Contrs.
function apply_Contrs_Callback(hObject, eventdata, handles)
global contrast filImage
ctrs=contrast;
temps=filImage;
for i=1:size(temps,1)
    for j=1:size(temps,2)
        temp(i,j,1)=temps(i,j,1)*ctrs;
        temp(i,j,2)=temps(i,j,2)*ctrs;
        temp(i,j,3)=temps(i,j,3)*ctrs;
    end
end
filImage=temp;


% --- Executes on button press in img_Subtrc.
function img_Subtrc_Callback(hObject, eventdata, handles)
global filImage temp;
a=get(hObject,'Value');
if a==1
    temp=filImage;
    bG=imopen(temp,strel('sphere',5));
    filImage=imsubtract(temp,bG);
    axes(handles.axes2);
    imshow(filImage);
    string1='Online';
    set(handles.subtrVal,'String',string1);
elseif a==0
    filImage=temp;
    axes(handles.axes2);
    imshow(filImage);
    string1='Offline';
    set(handles.subtrVal,'String',string1);
end



function subtrVal_Callback(hObject, eventdata, handles)
% hObject    handle to subtrVal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
