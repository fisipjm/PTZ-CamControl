unit uPresetFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, system.Types,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Skia,
  Skia.Vcl, uPresets;

type
  TPresetFrame = class(TFrame)
    GridPanel1: TGridPanel;
    btn_preset1: TSkSvg;
    btn_preset2: TSkSvg;
    btn_preset3: TSkSvg;
    btn_preset4: TSkSvg;
    btn_preset5: TSkSvg;
    btn_preset6: TSkSvg;
    btn_preset7: TSkSvg;
    btn_preset8: TSkSvg;
    btn_preset9: TSkSvg;
    procedure FrameResize(Sender: TObject);
    procedure btn_MouseEnter(Sender: TObject);
    procedure btn_MouseLeave(Sender: TObject);
    procedure btn_MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_preset1Click(Sender: TObject);
    procedure btn_preset2Click(Sender: TObject);
    procedure btn_preset3Click(Sender: TObject);
    procedure btn_preset4Click(Sender: TObject);
    procedure btn_preset5Click(Sender: TObject);
    procedure btn_preset6Click(Sender: TObject);
    procedure btn_preset7Click(Sender: TObject);
    procedure btn_preset8Click(Sender: TObject);
    procedure btn_preset9Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

implementation

{$R *.dfm}

procedure TPresetFrame.btn_MouseEnter(Sender: TObject);
begin
  TSkSvg(Sender).Opacity := 200;
end;

procedure TPresetFrame.btn_MouseLeave(Sender: TObject);
begin
  TSkSvg(Sender).Opacity := 255;
end;

procedure TPresetFrame.btn_MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).AlignWithMargins := false;
end;

procedure TPresetFrame.btn_preset1Click(Sender: TObject);
begin
  Presets.preset1;
end;

procedure TPresetFrame.btn_preset2Click(Sender: TObject);
begin
  Presets.preset2;
end;

procedure TPresetFrame.btn_preset3Click(Sender: TObject);
begin
  Presets.preset3;
end;

procedure TPresetFrame.btn_preset4Click(Sender: TObject);
begin
  Presets.preset4;
end;

procedure TPresetFrame.btn_preset5Click(Sender: TObject);
begin
  Presets.preset5;
end;

procedure TPresetFrame.btn_preset6Click(Sender: TObject);
begin
  Presets.preset6;
end;

procedure TPresetFrame.btn_preset7Click(Sender: TObject);
begin
  Presets.preset7;
end;

procedure TPresetFrame.btn_preset8Click(Sender: TObject);
begin
  Presets.preset8;
end;

procedure TPresetFrame.btn_preset9Click(Sender: TObject);
begin
  Presets.preset9;
end;

procedure TPresetFrame.btn_MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TSkSvg(Sender).AlignWithMargins := true;
end;

procedure TPresetFrame.FrameResize(Sender: TObject);
var
  I: Integer;
  width: double;
begin
  width := self.width / 9;
  for I := 0 to GridPanel1.ColumnCollection.Count - 1 do
    GridPanel1.ColumnCollection.Items[I].Value := width;
end;

end.
