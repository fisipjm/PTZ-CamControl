unit uJoystickFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, uPresets;

type
  TJoystickframe = class(TFrame)
    PnlTop: TPanel;
    pnlMain: TPanel;
    btn_FastLeft: TSpeedButton;
    btn_MiddleLeft: TSpeedButton;
    btn_SlowLeft: TSpeedButton;
    btn_FastRight: TSpeedButton;
    btn_MiddleRight: TSpeedButton;
    btn_SlowRight: TSpeedButton;
    btn_SlowUp: TSpeedButton;
    btn_MiddleUp: TSpeedButton;
    btn_FastUp: TSpeedButton;
    btn_FastDown: TSpeedButton;
    btn_MiddleDown: TSpeedButton;
    btn_SlowDown: TSpeedButton;
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
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

implementation

{$R *.dfm}

procedure TJoystickframe.btn_FastDownMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  presets.FastDown;
end;

procedure TJoystickframe.btn_FastLeftMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Presets.FastLeft;
end;

procedure TJoystickframe.btn_FastRightMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Presets.FastRight;
end;


procedure TJoystickframe.btn_FastUpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  presets.FastUP;
end;

procedure TJoystickframe.btn_MiddleDownMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Presets.MiddleDown;
end;

procedure TJoystickframe.btn_MiddleLeftMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Presets.MiddleLeft;
end;


procedure TJoystickframe.btn_MiddleRightMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Presets.MiddleRight;
end;


procedure TJoystickframe.btn_MiddleUpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Presets.MiddleUP;
end;

procedure TJoystickframe.btn_SlowDownMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  presets.SlowDown;
end;

procedure TJoystickframe.btn_SlowLeftMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Presets.SlowLeft;
end;


procedure TJoystickframe.btn_SlowRightMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Presets.SlowRight;
end;


procedure TJoystickframe.btn_SlowUpMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Presets.SlowUP;
end;

procedure TJoystickframe.btn_Up(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Presets.EndCameraMovement;
end;

end.
