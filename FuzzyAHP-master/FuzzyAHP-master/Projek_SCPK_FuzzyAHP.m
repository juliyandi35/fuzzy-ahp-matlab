function varargout = Projek_SCPK_FuzzyAHP(varargin)
% PROJEK_SCPK_FUZZYAHP MATLAB code for Projek_SCPK_FuzzyAHP.fig
%      PROJEK_SCPK_FUZZYAHP, by itself, creates a new PROJEK_SCPK_FUZZYAHP or raises the existing
%      singleton*.
%
%      H = PROJEK_SCPK_FUZZYAHP returns the handle to a new PROJEK_SCPK_FUZZYAHP or the handle to
%      the existing singleton*.
%
%      PROJEK_SCPK_FUZZYAHP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJEK_SCPK_FUZZYAHP.M with the given input arguments.
%
%      PROJEK_SCPK_FUZZYAHP('Property','Value',...) creates a new PROJEK_SCPK_FUZZYAHP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Projek_SCPK_FuzzyAHP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Projek_SCPK_FuzzyAHP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Projek_SCPK_FuzzyAHP

% Last Modified by GUIDE v2.5 09-Jun-2021 18:18:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Projek_SCPK_FuzzyAHP_OpeningFcn, ...
                   'gui_OutputFcn',  @Projek_SCPK_FuzzyAHP_OutputFcn, ...
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


% --- Executes just before Projek_SCPK_FuzzyAHP is made visible.
function Projek_SCPK_FuzzyAHP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Projek_SCPK_FuzzyAHP (see VARARGIN)

% Choose default command line output for Projek_SCPK_FuzzyAHP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Projek_SCPK_FuzzyAHP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Projek_SCPK_FuzzyAHP_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in input.
function input_Callback(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ke1 = str2num(get(handles.kecepatan1,'string'));
ke2 = str2num(get(handles.kecepatan2,'string'));
ke3 = str2num(get(handles.kecepatan3,'string'));
si1 = str2num(get(handles.sikap1,'string'));
si2 = str2num(get(handles.sikap2,'string'));
si3 = str2num(get(handles.sikap3,'string'));
ku1 = str2num(get(handles.kualitas1,'string'));
ku2 = str2num(get(handles.kualitas2,'string'));
ku3 = str2num(get(handles.kualitas3,'string'));
namaPelayan = {'Doni' 'Rangto' 'Lisa'};
maksKecepatan = 10;
maksSikap = 10;
maksKualitas = 10;
data = [ ke1 si1 ku1
         ke2 si2 ku2
         ke3 si3 ku3];
data(:,1) = data(:,1)/maksKecepatan;
data(:,2) = data(:,2)/maksSikap;
data(:,3) = data(:,3)/maksKualitas;
relasiAntarKriteria = [ 1 2 2
                        0 1 4
                        0 0 1];
TFN = {[-100/3 0     100/3] [3/100 0     -3/100]
       [0      100/3 200/3] [3/200 3/100 0     ]
       [100/3  200/3 300/3] [3/300 3/200 3/100 ]
       [200/3  300/3 400/3] [3/400 3/300 3/200 ]};
indeksAcak = [0 0 0.58 0.9 1.12 1.24 1.32 1.41 1.45 1.49]; %5a
[op, jumlahKriteria] = size(relasiAntarKriteria); %5b
[opp, lambda] = eig(relasiAntarKriteria); %5c
maksLambda = max(max(lambda)); %5d
IndeksKonsistensi = (maksLambda - jumlahKriteria)/(jumlahKriteria - 1); %5e
RasioKonsistensi = IndeksKonsistensi / indeksAcak(1,jumlahKriteria); %5f 
if RasioKonsistensi > 0.10
    str = 'Matriks yang dievaluasi tidak konsisten!';
    str = printf(str,RasioKonsistensi);
    disp(str);
end
if RasioKonsistensi < 0.10
    fuzzyRelasi = {};
[jumlahData, jumlahKriteria] = size(relasiAntarKriteria);

for i = 1:jumlahData %6a
    for j =1+1:jumlahData
        relasiAntarKriteria(j,i) = 1 / relasiAntarKriteria(i,j);
    end
end
for i = 1:jumlahData %6b
    for j = 1:jumlahKriteria
        kriteria = relasiAntarKriteria(i,j);
        if kriteria >= 1
            fuzzyRelasi{i,j} = TFN{kriteria ,1};
        else
            fuzzyRelasi{i,j} = TFN{round(kriteria^-1) ,2};
        end
    end
end
for i = 1:jumlahData %6c
    barisRelasi = [fuzzyRelasi{i,:}];
    jumlahRelasiPerBaris{1,i} = sum (reshape(barisRelasi,3,[])');
end

RelasiPerData = [jumlahRelasiPerBaris{1,:}];
jumlahRelasiPerKolom = sum(reshape(RelasiPerData,3,[])');

for i = 1:jumlahData %6d
    RelasiPerData = [jumlahRelasiPerBaris{1,i}];
    for j =1:3
        nilaiRelasiPerKolom = jumlahRelasiPerKolom(1,j);
        jumlahPerKolom(1,j) = (RelasiPerData(1,j)) * (1/nilaiRelasiPerKolom);
    end
    jumlahRelasiPerBaris{1,i} = jumlahPerKolom;
end

derajatKemungkinan = zeros(jumlahData*(jumlahData-1),3);
idxBaris = 1;

for i=1:jumlahData %6e
    for j=1:jumlahData
        if i~=j
            derajatKemungkinan(idxBaris,[1 2]) = [i j]; %6f
            M1 = jumlahRelasiPerBaris{1,i};
            M2 = jumlahRelasiPerBaris{1,j};
            if M1(1,2) >= M2(1,2) %6g
                derajatKemungkinan(idxBaris,3) = 1;
            elseif M2(1,1) >= M1(1,3)
                derajatKemungkinan(idxBaris,3) = 0;
            else
                derajatKemungkinan(idxBaris,3) = (M2(1,1)- M1(1,3))/((M1(1,2)-M1(1,3))-(M2(1,2)-M2(1,1)));
            end
        idxBaris = idxBaris + 1;
        end
    end
end

bobotAntarKriteria = zeros(1,jumlahData); %6h
for i=1:jumlahData,
    bobotAntarKriteria(1,i) = min(derajatKemungkinan([find(derajatKemungkinan(:,1) == i)],[3]));
end

bobotAntarKriteria = bobotAntarKriteria/sum(bobotAntarKriteria); %6i
    ahp = data * bobotAntarKriteria';
    for i = 1:size(ahp, 1)
        if ahp(i) < 0.5
            status = 'Kurang';
        elseif ahp(i) < 0.65
            status = 'Cukup';
        elseif ahp(i) < 0.8
            status = 'Baik';
        else
            status = 'Sangat Baik';
        end
        %disp([char(namaPelayan(i)), blanks(13 - cellfun('length',namaPelayan(i))), ', ', num2str(ahp(i)), blanks(10 - length(num2str(ahp(i)))), ', ', char(status)])
        skor(i) = ahp(i);
        if i == 1
            set(handles.hasilstatus1,'string',(status));
        elseif i == 2
            set(handles.hasilstatus2,'string',(status));
        elseif i == 3
            set(handles.hasilstatus3,'string',(status));
        end
    end
    set(handles.hasilskor1,'string',(skor(1)));
    set(handles.hasilskor2,'string',(skor(2)));
    set(handles.hasilskor3,'string',(skor(3)));
end



function nama1_Callback(hObject, eventdata, handles)
% hObject    handle to nama1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nama1 as text
%        str2double(get(hObject,'String')) returns contents of nama1 as a double


% --- Executes during object creation, after setting all properties.
function nama1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nama1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kecepatan1_Callback(hObject, eventdata, handles)
% hObject    handle to kecepatan1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kecepatan1 as text
%        str2double(get(hObject,'String')) returns contents of kecepatan1 as a double


% --- Executes during object creation, after setting all properties.
function kecepatan1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kecepatan1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sikap1_Callback(hObject, eventdata, handles)
% hObject    handle to sikap1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sikap1 as text
%        str2double(get(hObject,'String')) returns contents of sikap1 as a double


% --- Executes during object creation, after setting all properties.
function sikap1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sikap1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kualitas1_Callback(hObject, eventdata, handles)
% hObject    handle to kualitas1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kualitas1 as text
%        str2double(get(hObject,'String')) returns contents of kualitas1 as a double


% --- Executes during object creation, after setting all properties.
function kualitas1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kualitas1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nama2_Callback(hObject, eventdata, handles)
% hObject    handle to nama2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nama2 as text
%        str2double(get(hObject,'String')) returns contents of nama2 as a double


% --- Executes during object creation, after setting all properties.
function nama2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nama2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nama3_Callback(hObject, eventdata, handles)
% hObject    handle to nama3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nama3 as text
%        str2double(get(hObject,'String')) returns contents of nama3 as a double


% --- Executes during object creation, after setting all properties.
function nama3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nama3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kecepatan2_Callback(hObject, eventdata, handles)
% hObject    handle to kecepatan2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kecepatan2 as text
%        str2double(get(hObject,'String')) returns contents of kecepatan2 as a double


% --- Executes during object creation, after setting all properties.
function kecepatan2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kecepatan2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kecepatan3_Callback(hObject, eventdata, handles)
% hObject    handle to kecepatan3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kecepatan3 as text
%        str2double(get(hObject,'String')) returns contents of kecepatan3 as a double


% --- Executes during object creation, after setting all properties.
function kecepatan3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kecepatan3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sikap2_Callback(hObject, eventdata, handles)
% hObject    handle to sikap2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sikap2 as text
%        str2double(get(hObject,'String')) returns contents of sikap2 as a double


% --- Executes during object creation, after setting all properties.
function sikap2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sikap2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sikap3_Callback(hObject, eventdata, handles)
% hObject    handle to sikap3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sikap3 as text
%        str2double(get(hObject,'String')) returns contents of sikap3 as a double


% --- Executes during object creation, after setting all properties.
function sikap3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sikap3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kualitas2_Callback(hObject, eventdata, handles)
% hObject    handle to kualitas2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kualitas2 as text
%        str2double(get(hObject,'String')) returns contents of kualitas2 as a double


% --- Executes during object creation, after setting all properties.
function kualitas2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kualitas2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kualitas3_Callback(hObject, eventdata, handles)
% hObject    handle to kualitas3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kualitas3 as text
%        str2double(get(hObject,'String')) returns contents of kualitas3 as a double


% --- Executes during object creation, after setting all properties.
function kualitas3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kualitas3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilnama1_Callback(hObject, eventdata, handles)
% hObject    handle to hasilnama1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilnama1 as text
%        str2double(get(hObject,'String')) returns contents of hasilnama1 as a double


% --- Executes during object creation, after setting all properties.
function hasilnama1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilnama1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilnama2_Callback(hObject, eventdata, handles)
% hObject    handle to hasilnama2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilnama2 as text
%        str2double(get(hObject,'String')) returns contents of hasilnama2 as a double


% --- Executes during object creation, after setting all properties.
function hasilnama2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilnama2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilnama3_Callback(hObject, eventdata, handles)
% hObject    handle to hasilnama3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilnama3 as text
%        str2double(get(hObject,'String')) returns contents of hasilnama3 as a double


% --- Executes during object creation, after setting all properties.
function hasilnama3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilnama3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilstatus1_Callback(hObject, eventdata, handles)
% hObject    handle to hasilstatus1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilstatus1 as text
%        str2double(get(hObject,'String')) returns contents of hasilstatus1 as a double


% --- Executes during object creation, after setting all properties.
function hasilstatus1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilstatus1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilstatus2_Callback(hObject, eventdata, handles)
% hObject    handle to hasilstatus2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilstatus2 as text
%        str2double(get(hObject,'String')) returns contents of hasilstatus2 as a double


% --- Executes during object creation, after setting all properties.
function hasilstatus2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilstatus2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilstatus3_Callback(hObject, eventdata, handles)
% hObject    handle to hasilstatus3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilstatus3 as text
%        str2double(get(hObject,'String')) returns contents of hasilstatus3 as a double


% --- Executes during object creation, after setting all properties.
function hasilstatus3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilstatus3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilskor1_Callback(hObject, eventdata, handles)
% hObject    handle to hasilskor1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilskor1 as text
%        str2double(get(hObject,'String')) returns contents of hasilskor1 as a double


% --- Executes during object creation, after setting all properties.
function hasilskor1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilskor1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilskor2_Callback(hObject, eventdata, handles)
% hObject    handle to hasilskor2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilskor2 as text
%        str2double(get(hObject,'String')) returns contents of hasilskor2 as a double


% --- Executes during object creation, after setting all properties.
function hasilskor2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilskor2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasilskor3_Callback(hObject, eventdata, handles)
% hObject    handle to hasilskor3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilskor3 as text
%        str2double(get(hObject,'String')) returns contents of hasilskor3 as a double


% --- Executes during object creation, after setting all properties.
function hasilskor3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilskor3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
