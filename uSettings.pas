unit uSettings;

interface

uses
  inifiles, sysUtils;

type
  TSettings = class(TObject)
  end;

var
  IniSettings: Tinifile;

const
  PresetSection = 'PRESETS';
  CamSection = 'CAM';
  ColorSection = 'COLORS';

implementation

{ TSettings }

initialization

IniSettings := Tinifile.Create(ParamStr(0).Replace('.exe', '.conf'));

finalization

IniSettings.Free;

end.
