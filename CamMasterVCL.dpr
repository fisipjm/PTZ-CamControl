program CamMasterVCL;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {MainForm},
  uPresets in 'uPresets.pas' {Presets: TDataModule},
  uJoystickFrame in 'uJoystickFrame.pas' {Joystickframe: TFrame},
  Vcl.Themes,
  Vcl.Styles,
  uPresetFrame in 'uPresetFrame.pas' {PresetFrame: TFrame},
  uSettings in 'uSettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows11 White Smoke');
  Application.CreateForm(TPresets, Presets);
  Application.CreateForm(TMainForm, MainForm);
   if ParamStr(1) = '--invisible' then
    Application.ShowMainForm := false;
  Application.Run;
end.
