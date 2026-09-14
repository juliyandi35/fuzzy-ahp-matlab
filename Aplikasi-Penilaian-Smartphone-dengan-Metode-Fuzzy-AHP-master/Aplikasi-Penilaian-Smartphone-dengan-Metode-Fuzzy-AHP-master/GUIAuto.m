function varargout = GUIAuto(varargin)
% GUIAUTO MATLAB code for GUIAuto.fig
%      GUIAUTO, by itself, creates a new GUIAUTO or raises the existing
%      singleton*.
%
%      H = GUIAUTO returns the handle to a new GUIAUTO or the handle to
%      the existing singleton*.
%
%      GUIAUTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIAUTO.M with the given input arguments.
%
%      GUIAUTO('Property','Value',...) creates a new GUIAUTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIAuto_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIAuto_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIAuto

% Last Modified by GUIDE v2.5 04-Jun-2020 21:58:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIAuto_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIAuto_OutputFcn, ...
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


% --- Executes just before GUIAuto is made visible.
function GUIAuto_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIAuto (see VARARGIN)

% Choose default command line output for GUIAuto
handles.output = hObject;

hback = axes('unit','normalized','position',[0 0 1 1]);
back = imread('background-6.jpg');
imagesc(back);
set(hback,'handlevisibility','off','visible','off');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIAuto wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIAuto_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function merk1_Callback(hObject, eventdata, handles)
% hObject    handle to merk1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of merk1 as text
%        str2double(get(hObject,'String')) returns contents of merk1 as a double


% --- Executes during object creation, after setting all properties.
function merk1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to merk1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function merk2_Callback(hObject, eventdata, handles)
% hObject    handle to merk2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of merk2 as text
%        str2double(get(hObject,'String')) returns contents of merk2 as a double


% --- Executes during object creation, after setting all properties.
function merk2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to merk2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function merk3_Callback(hObject, eventdata, handles)
% hObject    handle to merk3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of merk3 as text
%        str2double(get(hObject,'String')) returns contents of merk3 as a double


% --- Executes during object creation, after setting all properties.
function merk3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to merk3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function price1_Callback(hObject, eventdata, handles)
% hObject    handle to price1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of price1 as text
%        str2double(get(hObject,'String')) returns contents of price1 as a double


% --- Executes during object creation, after setting all properties.
function price1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to price1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function price2_Callback(hObject, eventdata, handles)
% hObject    handle to price2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of price2 as text
%        str2double(get(hObject,'String')) returns contents of price2 as a double


% --- Executes during object creation, after setting all properties.
function price2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to price2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function price3_Callback(hObject, eventdata, handles)
% hObject    handle to price3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of price3 as text
%        str2double(get(hObject,'String')) returns contents of price3 as a double


% --- Executes during object creation, after setting all properties.
function price3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to price3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function score1_Callback(hObject, eventdata, handles)
% hObject    handle to score1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of score1 as text
%        str2double(get(hObject,'String')) returns contents of score1 as a double


% --- Executes during object creation, after setting all properties.
function score1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to score1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function score2_Callback(hObject, eventdata, handles)
% hObject    handle to score2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of score2 as text
%        str2double(get(hObject,'String')) returns contents of score2 as a double


% --- Executes during object creation, after setting all properties.
function score2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to score2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function score3_Callback(hObject, eventdata, handles)
% hObject    handle to score3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of score3 as text
%        str2double(get(hObject,'String')) returns contents of score3 as a double


% --- Executes during object creation, after setting all properties.
function score3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to score3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ram1_Callback(hObject, eventdata, handles)
% hObject    handle to ram1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ram1 as text
%        str2double(get(hObject,'String')) returns contents of ram1 as a double


% --- Executes during object creation, after setting all properties.
function ram1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ram1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ram2_Callback(hObject, eventdata, handles)
% hObject    handle to ram2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ram2 as text
%        str2double(get(hObject,'String')) returns contents of ram2 as a double


% --- Executes during object creation, after setting all properties.
function ram2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ram2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ram3_Callback(hObject, eventdata, handles)
% hObject    handle to ram3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ram3 as text
%        str2double(get(hObject,'String')) returns contents of ram3 as a double


% --- Executes during object creation, after setting all properties.
function ram3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ram3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_proses.
function btn_proses_Callback(hObject, eventdata, handles)
% hObject    handle to btn_proses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

Merk = {merk1 merk2 merk3};

harga1 = str2num(get(handles.price1,'string'));
harga2 = str2num(get(handles.price2,'string'));
harga3 = str2num(get(handles.price3,'string'));

skore1 = str2num(get(handles.score1,'string'));
skore2 = str2num(get(handles.score2,'string'));
skore3 = str2num(get(handles.score3,'string'));

ram1 = str2num(get(handles.ram1,'string'));
ram2 = str2num(get(handles.ram2,'string'));
ram3 = str2num(get(handles.ram3,'string'));

baterai1 = str2num(get(handles.battery1,'string'));
baterai2 = str2num(get(handles.battery2,'string'));
baterai3 = str2num(get(handles.battery3,'string'));

kamera1 = str2num(get(handles.camera1,'string'));
kamera2 = str2num(get(handles.camera2,'string'));
kamera3 = str2num(get(handles.camera3,'string'));

maksHarga = str2num(get(handles.uangsaya,'string'));

% Mengecek Data
if harga1<1 || harga2<1 || harga3<1 || skore1 <1 || skore2 <1 || skore3 <1 || ram1 <1 || ram2 <1 || ram3 <1 || baterai1 <1 || baterai2 <1 || baterai3 <1 || kamera1 <1 || kamera2 <1 || kamera3 <1 || maksHarga<1 
    set(handles.error,'string','Input Salah');
    set(handles.error,'BackgroundColor','r');
    set(handles.error,'Visible','On');
else
    % Menentukan nilai maks tiap kategori
     
    if harga1 > maksHarga
        harga1 = maksHarga-(harga1-maksHarga);
    end
    if harga2 > maksHarga
        harga2 = maksHarga-(harga2-maksHarga);
    end
    if harga3 > maksHarga
        harga3 = maksHarga-(harga3-maksHarga);
    end
        
    Skor = [skore1 skore2 skore3];
    maksSkor = max(Skor) + 20000;
    Ram = [ram1 ram2 ram3];
    maksRam = max(Ram);
    Baterai = [baterai1 baterai2 baterai3];
    maksBaterai = max(Baterai)+500;
    Kamera = [kamera1 kamera2 kamera3];
    maksKamera = max(Kamera);
    
    data = [ harga1 skore1 ram1 baterai1 kamera1
         harga2 skore2 ram2 baterai2 kamera2
         harga3 skore3 ram3 baterai3 kamera3];

    data(:,1) = data(:,1) / maksHarga;
    data(:,2) = data(:,2) / maksSkor;
    data(:,3) = data(:,3) / maksRam;
    data(:,4) = data(:,4) / maksBaterai;
    data(:,5) = data(:,5) / maksKamera;

    relasiAntarKriteria = [ 1     4     4     4     4
                            0     1     3     3     3
                            0     0     1     2     2
                            0     0     0     1     2
                            0     0     0     0     1];


    TFN = {[-100/3 0     100/3]     [3/100  0     -3/100]
           [0      100/3 200/3]     [3/200  3/100 0     ]
           [100/3  200/3 300/3]     [3/300  3/200 3/100 ]
           [200/3  300/3 400/3]     [3/400  3/300 3/200 ]};


    RasioKonsistensi = HitungKonsistensiAHP(relasiAntarKriteria);


    if RasioKonsistensi < 0.10
        % Metode Fuzzy AHP
        [bobotAntarKriteria, ~] = FuzzyAHP(relasiAntarKriteria, TFN);    

        % Hitung nilai skor akhir 
        ahp = data * bobotAntarKriteria';

        kualitas4 = 'Kurang';
        kualitas3 = 'Cukup';
        kualitas2 = 'Baik';
        kualitas1 = 'Sangat Baik';
        isi = {'Kurang' 'Cukup' 'Baik' 'Sangat Baik'};

        for i = 1:size(ahp, 1)
            if ahp(i) < 0.4
                status(i) = isi(1);
            elseif ahp(i) < 0.7
                status(i) = isi(2);
            elseif ahp(i) < 0.8
                status(i) = isi(3);
            else
                status(i) = isi(4);
            end
        end

        set(handles.merek1,'string',(char(Merk(1))))
        set(handles.merek2,'string',(char(Merk(2))))
        set(handles.merek3,'string',(char(Merk(3))))

        set(handles.skor1,'string',(num2str(ahp(1))))
        set(handles.skor2,'string',(num2str(ahp(2))))
        set(handles.skor3,'string',(num2str(ahp(3))))

        set(handles.status1,'string',(char(status(1))))
        set(handles.status2,'string',(char(status(2))))
        set(handles.status3,'string',(char(status(3))))
        
        status1 = get(handles.status1,'string');
        status2 = get(handles.status2,'string');
        status3 = get(handles.status3,'string');
               
        if isequal(status1,kualitas4)
            set(handles.status1,'BackgroundColor','r')
        elseif isequal( status1,kualitas3)
            set(handles.status1,'BackgroundColor','y')
        elseif isequal(status1,kualitas2)
            set(handles.status1,'BackgroundColor','c')
        elseif isequal(status1,kualitas1)
            set(handles.status1,'BackgroundColor','g')
        end
        
        if isequal(status2,kualitas4)
            set(handles.status2,'BackgroundColor','r')
        elseif isequal(status2,kualitas3)
            set(handles.status2,'BackgroundColor','y')
        elseif isequal(status2,kualitas2)
            set(handles.status2,'BackgroundColor','c')
        elseif isequal(status2,kualitas1)
            set(handles.status2,'BackgroundColor','g')
        end
        
        if isequal(status3,kualitas4)
            set(handles.status3,'BackgroundColor','r')
        elseif isequal(status3,kualitas3)
            set(handles.status3,'BackgroundColor','y')
        elseif isequal(status3,kualitas2)
            set(handles.status3,'BackgroundColor','c')
        elseif isequal(status3,kualitas1)
            set(handles.status3,'BackgroundColor','g')
        end
    end

end

% --- Executes on button press in btn_refresh1.
function btn_refresh1_Callback(hObject, eventdata, handles)
% hObject    handle to btn_refresh1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kosong = '';

set(handles.merek1,'string',(kosong))
set(handles.skor1,'string',(kosong))
set(handles.status1,'string',(kosong))
set(handles.merk1,'string',(kosong))
set(handles.price1,'string',(kosong))
set(handles.score1,'string',(kosong))
set(handles.ram1,'string',(kosong))
set(handles.battery1,'string',(kosong))
set(handles.camera1,'string',(kosong))
set(handles.status1,'BackgroundColor','w')

function battery1_Callback(hObject, eventdata, handles)
% hObject    handle to battery1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of battery1 as text
%        str2double(get(hObject,'String')) returns contents of battery1 as a double


% --- Executes during object creation, after setting all properties.
function battery1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to battery1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function battery2_Callback(hObject, eventdata, handles)
% hObject    handle to battery2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of battery2 as text
%        str2double(get(hObject,'String')) returns contents of battery2 as a double


% --- Executes during object creation, after setting all properties.
function battery2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to battery2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function battery3_Callback(hObject, eventdata, handles)
% hObject    handle to battery3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of battery3 as text
%        str2double(get(hObject,'String')) returns contents of battery3 as a double


% --- Executes during object creation, after setting all properties.
function battery3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to battery3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function camera1_Callback(hObject, eventdata, handles)
% hObject    handle to camera1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of camera1 as text
%        str2double(get(hObject,'String')) returns contents of camera1 as a double


% --- Executes during object creation, after setting all properties.
function camera1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to camera1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function camera2_Callback(hObject, eventdata, handles)
% hObject    handle to camera2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of camera2 as text
%        str2double(get(hObject,'String')) returns contents of camera2 as a double


% --- Executes during object creation, after setting all properties.
function camera2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to camera2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function camera3_Callback(hObject, eventdata, handles)
% hObject    handle to camera3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of camera3 as text
%        str2double(get(hObject,'String')) returns contents of camera3 as a double


% --- Executes during object creation, after setting all properties.
function camera3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to camera3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function uangsaya_Callback(hObject, eventdata, handles)
% hObject    handle to uangsaya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of uangsaya as text
%        str2double(get(hObject,'String')) returns contents of uangsaya as a double


% --- Executes during object creation, after setting all properties.
function uangsaya_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uangsaya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_back.
function btn_back_Callback(hObject, eventdata, handles)
% hObject    handle to btn_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MenuUtama;
close('GUIAuto');

% --- Executes on button press in btn_refresh2.
function btn_refresh2_Callback(hObject, eventdata, handles)
% hObject    handle to btn_refresh2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kosong = '';

set(handles.merek2,'string',(kosong))
set(handles.skor2,'string',(kosong))
set(handles.status2,'string',(kosong))
set(handles.merk2,'string',(kosong))
set(handles.price2,'string',(kosong))
set(handles.score2,'string',(kosong))
set(handles.ram2,'string',(kosong))
set(handles.battery2,'string',(kosong))
set(handles.camera2,'string',(kosong))
set(handles.status2,'BackgroundColor','w')

% --- Executes on button press in btn_refresh3.
function btn_refresh3_Callback(hObject, eventdata, handles)
% hObject    handle to btn_refresh3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kosong = '';

set(handles.merek3,'string',(kosong))
set(handles.skor3,'string',(kosong))
set(handles.status3,'string',(kosong))
set(handles.merk3,'string',(kosong))
set(handles.price3,'string',(kosong))
set(handles.score3,'string',(kosong))
set(handles.ram3,'string',(kosong))
set(handles.battery3,'string',(kosong))
set(handles.camera3,'string',(kosong))
set(handles.status3,'BackgroundColor','w')

% --- Executes on button press in redmin8.
function redmin8_Callback(hObject, eventdata, handles)
% hObject    handle to redmin8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Redmi Note 8';
harga = '2149000';
score = '174016';
ram = '4';
battery = '4000';
camera = '48';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end

% --- Executes on button press in redmin8p.
function redmin8p_Callback(hObject, eventdata, handles)
% hObject    handle to redmin8p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Redmi Note 8 Pro';
harga = '3299000';
score = '291785';
ram = '6';
battery = '4500';
camera = '64';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end

% --- Executes on button press in mi10p.
function mi10p_Callback(hObject, eventdata, handles)
% hObject    handle to mi10p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Mi 10 Pro';
harga = '16000000';
score = '590838';
ram = '8';
battery = '4500';
camera = '108';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end


% --- Executes on button press in samsunga51.
function samsunga51_Callback(hObject, eventdata, handles)
% hObject    handle to samsunga51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Samsung A51';
harga = '4399000';
score = '189442';
ram = '8';
battery = '4000';
camera = '48';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end


% --- Executes on button press in samsungs9.
function samsungs9_Callback(hObject, eventdata, handles)
% hObject    handle to samsungs9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Samsung S9';
harga = '10999000';
score = '285489';
ram = '4';
battery = '3000';
camera = '12';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end

% --- Executes on button press in samsungs20p.
function samsungs20p_Callback(hObject, eventdata, handles)
% hObject    handle to samsungs20p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Samsung S20 +';
harga = '14499000';
score = '506204';
ram = '8';
battery = '4500';
camera = '12';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end

% --- Executes on button press in realme5i.
function realme5i_Callback(hObject, eventdata, handles)
% hObject    handle to realme5i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Realme 5i';
harga = '2000000';
score = '170606';
ram = '4';
battery = '5000';
camera = '12';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end

% --- Executes on button press in realmeXT.
function realmeXT_Callback(hObject, eventdata, handles)
% hObject    handle to realmeXT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Realme XT';
harga = '4499000';
score = '235193';
ram = '8';
battery = '4000';
camera = '64';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end

% --- Executes on button press in realmeX2p.
function realmeX2p_Callback(hObject, eventdata, handles)
% hObject    handle to realmeX2p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Realme X2 Pro';
harga = '7799000';
score = '500573';
ram = '12';
battery = '4000';
camera = '64';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end

% --- Executes on button press in vivoZ1p.
function vivoZ1p_Callback(hObject, eventdata, handles)
% hObject    handle to vivoZ1p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Vivo Z1 Pro';
harga = '3699000';
score = '226815';
ram = '6';
battery = '5000';
camera = '16';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end

% --- Executes on button press in huaweiN5T.
function huaweiN5T_Callback(hObject, eventdata, handles)
% hObject    handle to huaweiN5T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Huawei Nova 5 T';
harga = '4999000';
score = '398222';
ram = '8';
battery = '3750';
camera = '48';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end

% --- Executes on button press in rog2.
function rog2_Callback(hObject, eventdata, handles)
% hObject    handle to rog2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

merk1 = get(handles.merk1,'string');
merk2 = get(handles.merk2,'string');
merk3 = get(handles.merk3,'string');

judul = 'Asus ROG Phone 2';
harga = '12499000';
score = '510146';
ram = '12';
battery = '6000';
camera = '48';

if merk1 == ""
    set(handles.merk1,'string',(judul))
    set(handles.merek1,'string',(judul))
    set(handles.price1,'string',(harga))
    set(handles.score1,'string',(score))
    set(handles.ram1,'string',(ram))
    set(handles.battery1,'string',(battery))
    set(handles.camera1,'string',(camera))
else
    if merk2 == ""
        set(handles.merk2,'string',(judul))
        set(handles.merek2,'string',(judul))
        set(handles.price2,'string',(harga))
        set(handles.score2,'string',(score))
        set(handles.ram2,'string',(ram))
        set(handles.battery2,'string',(battery))
        set(handles.camera2,'string',(camera))
    else
        if merk3 == ""
            set(handles.merk3,'string',(judul))
            set(handles.merek3,'string',(judul))
            set(handles.price3,'string',(harga))
            set(handles.score3,'string',(score))
            set(handles.ram3,'string',(ram))
            set(handles.battery3,'string',(battery))
            set(handles.camera3,'string',(camera))
        end
    end
end
