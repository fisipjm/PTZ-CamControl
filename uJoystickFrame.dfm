object Joystickframe: TJoystickframe
  Left = 0
  Top = 0
  Width = 494
  Height = 592
  TabOrder = 0
  object PnlTop: TPanel
    Left = 0
    Top = 0
    Width = 494
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object pnlMain: TPanel
    Left = 0
    Top = 41
    Width = 494
    Height = 551
    Align = alClient
    TabOrder = 1
    OnMouseUp = btn_Up
    object btn_FastLeft: TSpeedButton
      Left = 8
      Top = 199
      Width = 57
      Height = 89
      Caption = '<<<'
      OnMouseDown = btn_FastLeftMouseDown
      OnMouseUp = btn_Up
    end
    object btn_MiddleLeft: TSpeedButton
      Left = 71
      Top = 199
      Width = 57
      Height = 89
      Caption = '<<'
      OnMouseDown = btn_MiddleLeftMouseDown
      OnMouseUp = btn_Up
    end
    object btn_SlowLeft: TSpeedButton
      Left = 134
      Top = 199
      Width = 57
      Height = 89
      Caption = '<'
      OnMouseDown = btn_SlowLeftMouseDown
      OnMouseUp = btn_Up
    end
    object btn_FastRight: TSpeedButton
      Left = 414
      Top = 199
      Width = 57
      Height = 89
      Caption = '>>>'
      OnMouseDown = btn_FastRightMouseDown
      OnMouseUp = btn_Up
    end
    object btn_MiddleRight: TSpeedButton
      Left = 351
      Top = 199
      Width = 57
      Height = 89
      Caption = '>>'
      OnMouseDown = btn_MiddleRightMouseDown
      OnMouseUp = btn_Up
    end
    object btn_SlowRight: TSpeedButton
      Left = 288
      Top = 199
      Width = 57
      Height = 89
      Caption = '>'
      OnMouseDown = btn_SlowRightMouseDown
      OnMouseUp = btn_Up
    end
    object btn_SlowUp: TSpeedButton
      Left = 197
      Top = 132
      Width = 89
      Height = 57
      Caption = '^'
      OnMouseDown = btn_SlowUpMouseDown
      OnMouseUp = btn_Up
    end
    object btn_MiddleUp: TSpeedButton
      Left = 197
      Top = 69
      Width = 89
      Height = 57
      Caption = '^'
      OnMouseDown = btn_MiddleUpMouseDown
      OnMouseUp = btn_Up
    end
    object btn_FastUp: TSpeedButton
      Left = 197
      Top = 6
      Width = 89
      Height = 57
      Caption = '^'
      OnMouseDown = btn_FastUpMouseDown
      OnMouseUp = btn_Up
    end
    object btn_FastDown: TSpeedButton
      Left = 197
      Top = 424
      Width = 89
      Height = 57
      Caption = '^'
      OnMouseDown = btn_FastDownMouseDown
      OnMouseUp = btn_Up
    end
    object btn_MiddleDown: TSpeedButton
      Left = 197
      Top = 361
      Width = 89
      Height = 57
      Caption = '^'
      OnMouseDown = btn_MiddleDownMouseDown
      OnMouseUp = btn_Up
    end
    object btn_SlowDown: TSpeedButton
      Left = 197
      Top = 298
      Width = 89
      Height = 57
      Caption = '^'
      OnMouseDown = btn_SlowDownMouseDown
      OnMouseUp = btn_Up
    end
  end
end
