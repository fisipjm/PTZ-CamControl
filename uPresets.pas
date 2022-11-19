unit uPresets;

interface

uses
  System.Classes, IdBaseComponent, IdComponent, IdUDPBase, IdUDPClient,
  IdGlobal, System.IniFiles, System.IOUtils, System.NetEncoding, uSettings;

type
  TPresets = class(TDataModule)
    UDPClient1: TIdUDPClient;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    class function ByteArrayToString(byteArray: Tidbytes): string; static;
    class function StringToByteArray(Bytestring: string;
      const DefaultValue: Tidbytes): Tidbytes; static;
    { Private-Deklarationen }
  public
    procedure preset1;
    procedure preset10;
    procedure preset2;
    procedure preset3;
    procedure preset4;
    procedure preset5;
    procedure preset6;
    procedure preset7;
    procedure preset8;
    procedure preset9;
    procedure FastLeft;
    procedure MiddleLeft;
    procedure SlowLeft;
    procedure FastRight;
    procedure MiddleRight;
    procedure SlowRight;
    procedure FastUP;
    procedure MiddleUP;
    procedure SlowUP;
    procedure FastDown;
    procedure MiddleDown;
    procedure SlowDown;
    procedure EndCameraMovement;
    procedure Home;
    procedure ZoomIn;
    procedure ZoomOut;
    procedure ZoomStop;
    procedure parkingPosition;
    procedure startPosition;
    { Public-Deklarationen }
  end;

var
  Presets: TPresets;

const
  Def_Preset1: Tidbytes = [$81, $01, $04, $3F, $02, $01, $FF];
  Def_Preset2: Tidbytes = [$81, $01, $04, $3F, $02, $02, $FF];
  Def_Preset3: Tidbytes = [$81, $01, $04, $3F, $02, $03, $FF];
  Def_Preset4: Tidbytes = [$81, $01, $04, $3F, $02, $04, $FF];
  Def_Preset5: Tidbytes = [$81, $01, $04, $3F, $02, $05, $FF];
  Def_Preset6: Tidbytes = [$81, $01, $04, $3F, $02, $06, $FF];
  Def_Preset7: Tidbytes = [$81, $01, $04, $3F, $02, $07, $FF];
  Def_Preset8: Tidbytes = [$81, $01, $04, $3F, $02, $08, $FF];
  Def_Preset9: Tidbytes = [$81, $01, $04, $3F, $02, $09, $FF];
  Def_Preset10: Tidbytes = [$81, $01, $04, $3F, $02, $0A, $FF];

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TPresets.DataModuleCreate(Sender: TObject);
begin
  UDPClient1.Host := IniSettings.ReadString(CamSection, 'IP', '192.168.100.88');
  UDPClient1.Port := IniSettings.ReadInteger(CamSection, 'PORT', 1259);
end;

procedure TPresets.DataModuleDestroy(Sender: TObject);
begin
  if Assigned(IniSettings) then
    IniSettings.Free;
end;

procedure TPresets.parkingPosition;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'ParkingPosition', ''), Def_Preset1));
end;

procedure TPresets.startPosition;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'StartPosition', ''), Def_Preset1));
end;

procedure TPresets.preset1;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'Preset1', ''), Def_Preset1));
end;

procedure TPresets.preset2;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'Preset2', ''), Def_Preset2));
end;

procedure TPresets.preset3;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'Preset3', ''), Def_Preset3));
end;

procedure TPresets.preset4;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'Preset4', ''), Def_Preset4));
end;

procedure TPresets.preset5;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'Preset5', ''), Def_Preset5));
end;

procedure TPresets.preset6;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'Preset6', ''), Def_Preset6));
end;

procedure TPresets.preset7;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'Preset7', ''), Def_Preset7));
end;

procedure TPresets.preset8;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'Preset8', ''), Def_Preset8));
end;

procedure TPresets.preset9;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'Preset9', ''), Def_Preset9));
end;

procedure TPresets.preset10;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'Preset10', ''), Def_Preset10));
end;

procedure TPresets.EndCameraMovement;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'ECM', ''), NIL));
end;

procedure TPresets.FastLeft;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'FL', ''), NIL));
end;

procedure TPresets.MiddleLeft;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'ML', ''), NIL));
end;

procedure TPresets.SlowLeft;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'SL', ''), NIL));
end;

procedure TPresets.FastRight;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'FR', ''), NIL));
end;

procedure TPresets.MiddleRight;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'MR', ''), NIL));
end;

procedure TPresets.SlowRight;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'SR', ''), NIL));
end;

procedure TPresets.FastUP;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'FU', ''), NIL));
end;

procedure TPresets.MiddleUP;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'MU', ''), NIL));
end;

procedure TPresets.SlowUP;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'SU', ''), NIL));
end;

procedure TPresets.FastDown;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'FD', ''), NIL));
end;

procedure TPresets.MiddleDown;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'MD', ''), NIL));
end;

procedure TPresets.SlowDown;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'SD', ''), NIL));
end;

procedure TPresets.ZoomIn;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'ZOOMIN1', ''), NIL));
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'ZOOMIN2', ''), NIL));
end;

procedure TPresets.ZoomOut;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'ZOOMOUT1', ''), NIL));
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'ZOOMOUT2', ''), NIL));
end;

procedure TPresets.ZoomStop;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'ZOOMSTOP', ''), NIL));
end;

procedure TPresets.Home;
begin
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'HOME1', ''), NIL));
  UDPClient1.SendBuffer(StringToByteArray(IniSettings.ReadString(PresetSection,
    'HOME2', ''), NIL));
end;

class function TPresets.ByteArrayToString(byteArray: Tidbytes): string;
var
  i: Integer;
begin
  result := '';
  if byteArray <> nil then
  begin
    result := IntToHex(byteArray[0], 2);
    for i := 1 to High(byteArray) do
      result := result + '-' + IntToHex(byteArray[i], 2);
  end;
end;

class function TPresets.StringToByteArray(Bytestring: string;
  const DefaultValue: Tidbytes): Tidbytes;
begin
  if Bytestring.IsEmpty then
  begin
    result := DefaultValue;
    Exit;
  end;

  setlength(result, length(Bytestring.Split(['-'])));
  for var i := 0 to length(Bytestring.Split(['-'])) - 1 do
    result[i] := strtoint('$' + Bytestring.Split(['-'])[i]);
end;

end.
