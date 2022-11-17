program CamMasterVCL;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {MainForm},
  uPresets in 'uPresets.pas' {Presets: TDataModule},
  uJoystickFrame in 'uJoystickFrame.pas' {Joystickframe: TFrame},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Clear Day');
  Application.CreateForm(TPresets, Presets);
  Application.CreateForm(TMainForm, MainForm);
  if ParamStr(1) = '--invisible' then
    Application.ShowMainForm := false;
  Application.Run;
end.
