object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'CAMMasterVCL'
  ClientHeight = 689
  ClientWidth = 711
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  TextHeight = 15
  object FlowPanel1: TFlowPanel
    Left = 0
    Top = 25
    Width = 711
    Height = 48
    Align = alTop
    TabOrder = 0
    object btn_preset1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 50
      Height = 33
      Align = alClient
      Anchors = []
      Caption = '1'
      TabOrder = 0
      OnClick = btn_preset1Click
    end
    object btn_preset2: TButton
      AlignWithMargins = True
      Left = 60
      Top = 4
      Width = 50
      Height = 33
      Align = alClient
      Anchors = []
      Caption = '2'
      TabOrder = 1
      OnClick = btn_preset2Click
    end
    object btn_preset3: TButton
      AlignWithMargins = True
      Left = 116
      Top = 4
      Width = 50
      Height = 33
      Align = alClient
      Anchors = []
      Caption = '3'
      TabOrder = 2
      OnClick = btn_preset3Click
    end
    object btn_preset4: TButton
      AlignWithMargins = True
      Left = 172
      Top = 4
      Width = 50
      Height = 33
      Align = alClient
      Anchors = []
      Caption = '4'
      TabOrder = 3
      OnClick = btn_preset4Click
    end
    object btn_preset5: TButton
      AlignWithMargins = True
      Left = 228
      Top = 4
      Width = 50
      Height = 33
      Align = alClient
      Anchors = []
      Caption = '5'
      TabOrder = 4
      OnClick = btn_preset5Click
    end
    object btn_preset6: TButton
      AlignWithMargins = True
      Left = 284
      Top = 4
      Width = 50
      Height = 33
      Align = alClient
      Anchors = []
      Caption = '6'
      TabOrder = 5
      OnClick = btn_preset6Click
    end
    object btn_preset7: TButton
      AlignWithMargins = True
      Left = 340
      Top = 4
      Width = 50
      Height = 33
      Align = alClient
      Anchors = []
      Caption = '7'
      TabOrder = 6
      OnClick = btn_preset7Click
    end
    object btn_preset8: TButton
      AlignWithMargins = True
      Left = 396
      Top = 4
      Width = 50
      Height = 33
      Align = alClient
      Anchors = []
      Caption = '8'
      TabOrder = 7
      OnClick = btn_preset8Click
    end
    object btn_preset9: TButton
      AlignWithMargins = True
      Left = 452
      Top = 4
      Width = 50
      Height = 33
      Align = alClient
      Anchors = []
      Caption = '9'
      TabOrder = 8
      OnClick = btn_preset9Click
    end
  end
  object TitlePanel: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Camera Presets'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 703
  end
  inline Joystickframe1: TJoystickframe
    Left = 0
    Top = 73
    Width = 711
    Height = 616
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 1
    ExplicitTop = 40
    ExplicitWidth = 710
    ExplicitHeight = 625
    inherited PnlTop: TPanel
      Width = 711
      ExplicitWidth = 710
    end
    inherited pnlMain: TPanel
      Width = 711
      Height = 575
      ExplicitWidth = 710
      ExplicitHeight = 584
    end
  end
end
