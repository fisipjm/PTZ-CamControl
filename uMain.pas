unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, Winapi.ShellAPI, System.SysUtils,
  System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent, IdUDPBase,
  IdUDPClient, Vcl.StdCtrls, Vcl.ExtCtrls, IdGlobal, System.IniFiles, uPresets,
  uJoystickFrame, uPresetFrame, Vcl.Menus, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.StdActns, System.Actions, Vcl.ActnList,
  System.uitypes, System.UIConsts, usettings, System.StrUtils, tlhelp32,
  ioutils;

type
  TMainForm = class(TForm)
    Joystickframe1: TJoystickframe;
    PresetFrame1: TPresetFrame;
    MainMenu1: TMainMenu;
    Fenster1: TMenuItem;
    Datei1: TMenuItem;
    ActionList1: TActionList;
    WindowClose1: TWindowClose;
    Schlieen1: TMenuItem;
    ShowJoystick: TAction;
    Navigation1: TMenuItem;
    ShowPresets: TAction;
    PreSets1: TMenuItem;
    Hide: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_preset1Click(Sender: TObject);
    procedure btn_preset2Click(Sender: TObject);
    procedure btn_preset3Click(Sender: TObject);
    procedure btn_preset4Click(Sender: TObject);
    procedure btn_preset5Click(Sender: TObject);
    procedure btn_preset6Click(Sender: TObject);
    procedure btn_preset7Click(Sender: TObject);
    procedure btn_preset8Click(Sender: TObject);
    procedure btn_preset9Click(Sender: TObject);
    procedure ShowJoystickExecute(Sender: TObject);
    procedure ShowPresetsExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HideExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure WindowClose1Execute(Sender: TObject);
  private
    id1, id2, id3, id4, id5, id6, id7, id8, id9: Integer;
    shutdownclose: Bool;
    procedure WMHotKey(var Msg: TWMHotKey); message WM_HOTKEY;
    function processCount(exeFileName: string): Integer;
    function GetProcessIDs(exeFileName: string): tarray<cardinal>;
    function TerminateProcessByID(ProcessID: cardinal): Boolean;
    procedure WMQueryEndSession(var M: TWMQueryEndSession);
      message WM_QUERYENDSESSION;

    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.WindowClose1Execute(Sender: TObject);
begin
  application.Terminate;
end;

procedure TMainForm.WMQueryEndSession(var M: TWMQueryEndSession);
begin
  presets.parkingPosition;
  TerminateProcessByID(GetCurrentProcessId);
end;

procedure TMainForm.WMHotKey(var Msg: TWMHotKey);
begin
  if Msg.HotKey = id1 then
    Presets.preset1;
  if Msg.HotKey = id2 then
    Presets.preset2;
  if Msg.HotKey = id3 then
    Presets.preset3;
  if Msg.HotKey = id4 then
    Presets.preset4;
  if Msg.HotKey = id5 then
    Presets.preset5;
  if Msg.HotKey = id6 then
    Presets.preset6;
  if Msg.HotKey = id7 then
    Presets.preset7;
  if Msg.HotKey = id8 then
    Presets.preset8;
  if Msg.HotKey = id9 then
    Presets.preset9;
end;

procedure TMainForm.btn_preset1Click(Sender: TObject);
begin
  Presets.preset1;
end;

procedure TMainForm.btn_preset2Click(Sender: TObject);
begin
  Presets.preset2;
end;

procedure TMainForm.btn_preset3Click(Sender: TObject);
begin
  Presets.preset3;
end;

procedure TMainForm.btn_preset4Click(Sender: TObject);
begin
  Presets.preset4;
end;

procedure TMainForm.btn_preset5Click(Sender: TObject);
begin
  Presets.preset5;
end;

procedure TMainForm.btn_preset6Click(Sender: TObject);
begin
  Presets.preset6;
end;

procedure TMainForm.btn_preset7Click(Sender: TObject);
begin
  Presets.preset7;
end;

procedure TMainForm.btn_preset8Click(Sender: TObject);
begin
  Presets.preset8;
end;

procedure TMainForm.btn_preset9Click(Sender: TObject);
begin
  Presets.preset9;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    CanClose := MessageDlg
      ('Wirklich schließen? Kamera wird automatisch in die Parkposition versetzt. Zum Ausblenden "Datei" -> "Hide" verwenden.',
      TMsgDlgType.mtInformation, mbYesNo, 0) = mrYes;
end;

procedure TMainForm.FormCreate(Sender: TObject);
const
  MOD_ALT = 1;
  MOD_CONTROL = 2;
  MOD_SHIFT = 4;
  MOD_WIN = 8;
  VK_A = $41;
  VK_R = $52;
  VK_F4 = $73;
var
  pid: cardinal;
begin
  if processCount(tpath.GetFileName(paramstr(0))) = 1 then
  begin
    Presets.startPosition
  end
  else
  begin
    for pid in GetProcessIDs(tpath.GetFileName(paramstr(0))) do
      if pid <> GetCurrentProcessId then
        TerminateProcessByID(pid);
    sleep(150);
  end;
  id1 := GlobalAddAtom('Hotkey1');
  RegisterHotKey(Handle, id1, MOD_CONTROL, 49);
  id2 := GlobalAddAtom('Hotkey2');
  RegisterHotKey(Handle, id2, MOD_CONTROL, 50);
  id3 := GlobalAddAtom('Hotkey3');
  RegisterHotKey(Handle, id3, MOD_CONTROL, 51);
  id4 := GlobalAddAtom('Hotkey4');
  RegisterHotKey(Handle, id4, MOD_CONTROL, 52);
  id5 := GlobalAddAtom('Hotkey5');
  RegisterHotKey(Handle, id5, MOD_CONTROL, 53);
  id6 := GlobalAddAtom('Hotkey6');
  RegisterHotKey(Handle, id6, MOD_CONTROL, 54);
  id7 := GlobalAddAtom('Hotkey7');
  RegisterHotKey(Handle, id7, MOD_CONTROL, 55);
  id8 := GlobalAddAtom('Hotkey8');
  RegisterHotKey(Handle, id8, MOD_CONTROL, 56);
  id9 := GlobalAddAtom('Hotkey9');
  RegisterHotKey(Handle, id9, MOD_CONTROL, 57);
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  UnRegisterHotKey(Handle, id1);
  GlobalDeleteAtom(id1);
  UnRegisterHotKey(Handle, id2);
  GlobalDeleteAtom(id2);
  UnRegisterHotKey(Handle, id3);
  GlobalDeleteAtom(id3);
  UnRegisterHotKey(Handle, id4);
  GlobalDeleteAtom(id4);
  UnRegisterHotKey(Handle, id5);
  GlobalDeleteAtom(id5);
  UnRegisterHotKey(Handle, id6);
  GlobalDeleteAtom(id6);
  UnRegisterHotKey(Handle, id7);
  GlobalDeleteAtom(id7);
  UnRegisterHotKey(Handle, id8);
  GlobalDeleteAtom(id8);
  UnRegisterHotKey(Handle, id9);
  GlobalDeleteAtom(id9);
  if processCount(tpath.GetFileName(paramstr(0))) = 1 then
    Presets.parkingPosition;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  PresetFrame1.btn_preset1.Svg.OverrideColor :=
    StringToAlphaColor(IniSettings.ReadString(ColorSection,
    'PresetButton1', ''));
  PresetFrame1.btn_preset2.Svg.OverrideColor :=
    StringToAlphaColor(IniSettings.ReadString(ColorSection,
    'PresetButton2', ''));
  PresetFrame1.btn_preset3.Svg.OverrideColor :=
    StringToAlphaColor(IniSettings.ReadString(ColorSection,
    'PresetButton3', ''));
  PresetFrame1.btn_preset4.Svg.OverrideColor :=
    StringToAlphaColor(IniSettings.ReadString(ColorSection,
    'PresetButton4', ''));
  PresetFrame1.btn_preset5.Svg.OverrideColor :=
    StringToAlphaColor(IniSettings.ReadString(ColorSection,
    'PresetButton5', ''));
  PresetFrame1.btn_preset6.Svg.OverrideColor :=
    StringToAlphaColor(IniSettings.ReadString(ColorSection,
    'PresetButton6', ''));
  PresetFrame1.btn_preset7.Svg.OverrideColor :=
    StringToAlphaColor(IniSettings.ReadString(ColorSection,
    'PresetButton7', ''));
  PresetFrame1.btn_preset8.Svg.OverrideColor :=
    StringToAlphaColor(IniSettings.ReadString(ColorSection,
    'PresetButton8', ''));
  PresetFrame1.btn_preset9.Svg.OverrideColor :=
    StringToAlphaColor(IniSettings.ReadString(ColorSection,
    'PresetButton9', ''));
end;

procedure TMainForm.ShowJoystickExecute(Sender: TObject);
begin
  Joystickframe1.Visible := not(Sender as TAction).Checked;
  if Joystickframe1.Visible then
    MainForm.Height := MainForm.Height + 800
  else
    MainForm.Height := MainForm.Height - Joystickframe1.Height;

  (Sender as TAction).Checked := not(Sender as TAction).Checked;
end;

procedure TMainForm.ShowPresetsExecute(Sender: TObject);
begin
  PresetFrame1.Visible := not(Sender as TAction).Checked;
  if PresetFrame1.Visible then
    MainForm.Height := MainForm.Height + 200
  else
    MainForm.Height := MainForm.Height - PresetFrame1.Height;

  (Sender as TAction).Checked := not(Sender as TAction).Checked;
end;

function TMainForm.processCount(exeFileName: string): Integer;
var
  ContinueLoop: Bool;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))
      = UpperCase(exeFileName)) or (UpperCase(FProcessEntry32.szExeFile)
      = UpperCase(exeFileName))) then
    begin
      Result := Result + 1;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function TMainForm.GetProcessIDs(exeFileName: string): tarray<cardinal>;
var
  ContinueLoop: Bool;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  setlength(Result, 0);
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))
      = UpperCase(exeFileName)) or (UpperCase(FProcessEntry32.szExeFile)
      = UpperCase(exeFileName))) then
    begin
      setlength(Result, length(Result) + 1);
      Result[length(Result) - 1] := FProcessEntry32.th32ProcessID;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure TMainForm.HideExecute(Sender: TObject);
begin
  ShellExecute(0, 'open', Pwidechar(paramstr(0)), PChar('--invisible'),
    nil, SW_SHOW);
end;

function TMainForm.TerminateProcessByID(ProcessID: cardinal): Boolean;
var
  hProcess: THandle;
begin
  Result := False;
  hProcess := OpenProcess(PROCESS_TERMINATE, False, ProcessID);
  if hProcess > 0 then
    try
      Result := Win32Check(TerminateProcess(hProcess, 0));
    finally
      CloseHandle(hProcess);
    end;
end;

end.
