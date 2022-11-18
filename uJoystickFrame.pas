unit uJoystickFrame;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, uPresets,
  Skia.Vcl, Skia, Vcl.WinXCtrls;
type
  TJoystickframe = class(TFrame)
    btn_slowDown: TSkSvg;
    btn_midDown: TSkSvg;
    btn_fastDown: TSkSvg;
    btn_slowRight: TSkSvg;
    btn_midUp: TSkSvg;
    btn_fastUp: TSkSvg;
    btn_slowUp: TSkSvg;
    btn_Home: TSkSvg;
    btn_midRight: TSkSvg;
    btn_fastRight: TSkSvg;
    btn_ZoomIn: TSkSvg;
    btn_ZoomOut: TSkSvg;
    GridPanel1: TGridPanel;
    btn_slowleft: TSkSvg;
    btn_midleft: TSkSvg;
    btn_fastleft: TSkSvg;
    procedure btn_FastLeftMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_MiddleLeftMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_SlowLeftMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_SlowRightMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_MiddleRightMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_FastRightMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_SlowUpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_Up(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_MiddleUpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_FastUpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_SlowDownMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_MiddleDownMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_FastDownMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SkSvgMouseEnter(Sender: TObject);
    procedure SkSvgMouseLeave(Sender: TObject);
    procedure btn_ZoomOutMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_ZoomStop(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_ZoomInMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_HomeClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;
implementation
{$R *.dfm}
procedure TJoystickframe.btn_FastDownMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  presets.FastDown;
end;
procedure TJoystickframe.btn_FastLeftMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  Presets.FastLeft;
end;
procedure TJoystickframe.btn_FastRightMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  Presets.FastRight;
end;

procedure TJoystickframe.btn_FastUpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  presets.FastUP;
end;
procedure TJoystickframe.btn_MiddleDownMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  Presets.MiddleDown;
end;
procedure TJoystickframe.btn_MiddleLeftMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  Presets.MiddleLeft;
end;

procedure TJoystickframe.btn_MiddleRightMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  Presets.MiddleRight;
end;

procedure TJoystickframe.btn_MiddleUpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  Presets.MiddleUP;
end;
procedure TJoystickframe.btn_SlowDownMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  presets.SlowDown;
end;
procedure TJoystickframe.btn_SlowLeftMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  Presets.SlowLeft;
end;

procedure TJoystickframe.btn_SlowRightMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  Presets.SlowRight;
end;

procedure TJoystickframe.btn_SlowUpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=255;
  Presets.SlowUP;
end;
procedure TJoystickframe.btn_Up(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).Opacity:=150;
  Presets.EndCameraMovement;
end;

procedure TJoystickframe.btn_ZoomInMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  presets.ZoomIn;
end;

procedure TJoystickframe.btn_ZoomOutMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  presets.ZoomOut;
end;

procedure TJoystickframe.btn_ZoomStop(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  presets.ZoomStop;
end;

procedure TJoystickframe.FrameResize(Sender: TObject);
var
  i : integer;
  width,height : double;
begin
  width:=self.Width/7;
  height:=self.Height/7;
  for i := 0 to gridpanel1.ColumnCollection.Count -1 do
    gridpanel1.ColumnCollection.Items[i].Value:=width;

  for i := 0 to gridpanel1.RowCollection.Count -1 do
    gridpanel1.RowCollection.Items[i].Value:=height;


end;

procedure TJoystickframe.btn_HomeClick(Sender: TObject);
begin
  presets.Home;
end;

procedure TJoystickframe.SkSvgMouseEnter(Sender: TObject);
begin
  TSkSvg(Sender).Opacity:=150;
end;

procedure TJoystickframe.SkSvgMouseLeave(Sender: TObject);
begin
 TSkSvg(Sender).Opacity:=255;
end;

end.
