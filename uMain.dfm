object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'CAMMasterVCL'
  ClientHeight = 534
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  inline Joystickframe1: TJoystickframe
    Left = 0
    Top = 49
    Width = 511
    Height = 485
    Align = alClient
    TabOrder = 0
    ExplicitTop = 49
    ExplicitWidth = 511
    ExplicitHeight = 485
    inherited GridPanel1: TGridPanel
      Width = 511
      Height = 485
      ControlCollection = <
        item
          Column = 6
          Control = Joystickframe1.btn_ZoomIn
          Row = 0
        end
        item
          Column = 0
          Control = Joystickframe1.btn_ZoomOut
          Row = 0
        end
        item
          Column = 3
          Control = Joystickframe1.btn_slowDown
          Row = 4
        end
        item
          Column = 3
          Control = Joystickframe1.btn_midUp
          Row = 1
        end
        item
          Column = 3
          Control = Joystickframe1.btn_fastUp
          Row = 0
        end
        item
          Column = 3
          Control = Joystickframe1.btn_slowUp
          Row = 2
        end
        item
          Column = 3
          Control = Joystickframe1.btn_Home
          Row = 3
        end
        item
          Column = 3
          Control = Joystickframe1.btn_midDown
          Row = 5
        end
        item
          Column = 3
          Control = Joystickframe1.btn_fastDown
          Row = 6
        end
        item
          Column = 4
          Control = Joystickframe1.btn_slowRight
          Row = 3
        end
        item
          Column = 5
          Control = Joystickframe1.btn_midRight
          Row = 3
        end
        item
          Column = 6
          Control = Joystickframe1.btn_fastRight
          Row = 3
        end
        item
          Column = 2
          Control = Joystickframe1.btn_slowleft
          Row = 3
        end
        item
          Column = 1
          Control = Joystickframe1.btn_midleft
          Row = 3
        end
        item
          Column = 0
          Control = Joystickframe1.btn_fastleft
          Row = 3
        end>
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 511
      ExplicitHeight = 485
    end
  end
  inline PresetFrame1: TPresetFrame
    Left = 0
    Top = 0
    Width = 511
    Height = 49
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 511
    ExplicitHeight = 49
    inherited GridPanel1: TGridPanel
      Width = 511
      Height = 49
      ControlCollection = <
        item
          Column = 0
          Control = PresetFrame1.btn_preset1
          Row = 0
        end
        item
          Column = 1
          Control = PresetFrame1.btn_preset2
          Row = 0
        end
        item
          Column = 2
          Control = PresetFrame1.btn_preset3
          Row = 0
        end
        item
          Column = 3
          Control = PresetFrame1.btn_preset4
          Row = 0
        end
        item
          Column = 4
          Control = PresetFrame1.btn_preset5
          Row = 0
        end
        item
          Column = 5
          Control = PresetFrame1.btn_preset6
          Row = 0
        end
        item
          Column = 6
          Control = PresetFrame1.btn_preset7
          Row = 0
        end
        item
          Column = 7
          Control = PresetFrame1.btn_preset8
          Row = 0
        end
        item
          Column = 8
          Control = PresetFrame1.btn_preset9
          Row = 0
        end>
      ExplicitWidth = 511
      ExplicitHeight = 49
      inherited btn_preset1: TSkSvg
        Height = 47
        ExplicitHeight = 47
      end
      inherited btn_preset2: TSkSvg
        Height = 47
        ExplicitHeight = 47
      end
      inherited btn_preset3: TSkSvg
        Height = 47
        ExplicitHeight = 47
      end
      inherited btn_preset4: TSkSvg
        Height = 47
        ExplicitHeight = 47
      end
      inherited btn_preset5: TSkSvg
        Height = 47
        ExplicitHeight = 47
      end
      inherited btn_preset6: TSkSvg
        Height = 47
        ExplicitHeight = 47
      end
      inherited btn_preset7: TSkSvg
        Height = 47
        ExplicitHeight = 47
      end
      inherited btn_preset8: TSkSvg
        Height = 47
        ExplicitHeight = 47
      end
      inherited btn_preset9: TSkSvg
        Height = 47
        ExplicitHeight = 47
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 248
    Top = 272
    object Datei1: TMenuItem
      Caption = 'Datei'
      object Schlieen1: TMenuItem
        Action = Hide
      end
    end
    object Fenster1: TMenuItem
      Caption = 'Ansicht'
      object PreSets1: TMenuItem
        Action = ShowPresets
      end
      object Navigation1: TMenuItem
        Action = ShowJoystick
      end
    end
  end
  object ActionList1: TActionList
    Left = 232
    Top = 400
    object WindowClose1: TWindowClose
      Category = 'Fenster'
      Caption = '&Schlie'#223'en'
      Hint = 'Schlie'#223'en'
      OnExecute = WindowClose1Execute
    end
    object ShowJoystick: TAction
      Caption = 'Navigation'
      Checked = True
      OnExecute = ShowJoystickExecute
    end
    object ShowPresets: TAction
      Caption = 'Pre-Sets'
      Checked = True
      OnExecute = ShowPresetsExecute
    end
    object Hide: TAction
      Caption = 'Hide'
      OnExecute = HideExecute
    end
  end
end
