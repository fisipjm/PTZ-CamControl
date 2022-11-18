unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent, IdUDPBase,
  IdUDPClient, Vcl.StdCtrls, Vcl.ExtCtrls, IdGlobal, System.IniFiles, uPresets,
  uJoystickFrame, uPresetFrame, Vcl.Menus, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.StdActns, System.Actions, Vcl.ActnList,
  System.uitypes, System.UIConsts, usettings, System.StrUtils;

type
  TMainForm = class(TForm)
    Joystickframe1: TJoystickframe;
    PresetFrame1: TPresetFrame;
    MainMenu1: TMainMenu;
    Fenster1: TMenuItem;
    Datei1: TMenuItem;
    ActionList1: TActionList;
    WindowClose1: TWindowClose;
    WindowMinimizeAll1: TWindowMinimizeAll;
    Alleverkleinern1: TMenuItem;
    Schlieen1: TMenuItem;
    ShowJoystick: TAction;
    Navigation1: TMenuItem;
    ShowPresets: TAction;
    PreSets1: TMenuItem;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ShowJoystickExecute(Sender: TObject);
    procedure ShowPresetsExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    id1, id2, id3, id4, id5, id6, id7, id8, id9: Integer;
    procedure WMHotKey(var Msg: TWMHotKey); message WM_HOTKEY;
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

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

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Presets.preset10;
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
begin
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
  Presets.preset1;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  Presets.preset10;
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

end.
