object Joystickframe: TJoystickframe
  Left = 0
  Top = 0
  Width = 380
  Height = 387
  TabOrder = 0
  OnResize = FrameResize
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 380
    Height = 387
    Align = alClient
    ColumnCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 6
        Control = btn_ZoomIn
        Row = 0
      end
      item
        Column = 0
        Control = btn_ZoomOut
        Row = 0
      end
      item
        Column = 3
        Control = btn_slowDown
        Row = 4
      end
      item
        Column = 3
        Control = btn_midUp
        Row = 1
      end
      item
        Column = 3
        Control = btn_fastUp
        Row = 0
      end
      item
        Column = 3
        Control = btn_slowUp
        Row = 2
      end
      item
        Column = 3
        Control = btn_Home
        Row = 3
      end
      item
        Column = 3
        Control = btn_midDown
        Row = 5
      end
      item
        Column = 3
        Control = btn_fastDown
        Row = 6
      end
      item
        Column = 4
        Control = btn_slowRight
        Row = 3
      end
      item
        Column = 5
        Control = btn_midRight
        Row = 3
      end
      item
        Column = 6
        Control = btn_fastRight
        Row = 3
      end
      item
        Column = 2
        Control = btn_slowleft
        Row = 3
      end
      item
        Column = 1
        Control = btn_midleft
        Row = 3
      end
      item
        Column = 0
        Control = btn_fastleft
        Row = 3
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end>
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 96
    ExplicitTop = 208
    ExplicitWidth = 185
    ExplicitHeight = 41
    object btn_ZoomIn: TSkSvg
      Left = 331
      Top = 1
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_ZoomInMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_ZoomStop
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M11.5 8.5C11.5 8.22386' +
        ' 11.2761 8 11 8H9V6C9 5.72386 8.77614 5.5 8.5 5.5C8.22386 5.5 8 ' +
        '5.72386 8 6V8H6C5.72386 8 5.5 8.22386 5.5 8.5C5.5 8.77614 5.7238' +
        '6 9 6 9H8V11C8 11.2761 8.22386 11.5 8.5 11.5C8.77614 11.5 9 11.2' +
        '761 9 11V9H11C11.2761 9 11.5 8.77614 11.5 8.5ZM8.5 3C11.5376 3 1' +
        '4 5.46243 14 8.5C14 9.83879 13.5217 11.0659 12.7266 12.0196L16.8' +
        '536 16.1464C17.0488 16.3417 17.0488 16.6583 16.8536 16.8536C16.6' +
        '8 17.0271 16.4106 17.0464 16.2157 16.9114L16.1464 16.8536L12.019' +
        '6 12.7266C11.0659 13.5217 9.83879 14 8.5 14C5.46243 14 3 11.5376' +
        ' 3 8.5C3 5.46243 5.46243 3 8.5 3ZM8.5 4C6.01472 4 4 6.01472 4 8.' +
        '5C4 10.9853 6.01472 13 8.5 13C10.9853 13 13 10.9853 13 8.5C13 6.' +
        '01472 10.9853 4 8.5 4Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 22
      ExplicitTop = -9
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object btn_ZoomOut: TSkSvg
      Left = 1
      Top = 1
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_ZoomOutMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_ZoomStop
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M11 8C11.2761 8 11.5 8' +
        '.22386 11.5 8.5C11.5 8.77614 11.2761 9 11 9H6C5.72386 9 5.5 8.77' +
        '614 5.5 8.5C5.5 8.22386 5.72386 8 6 8H11ZM14 8.5C14 5.46243 11.5' +
        '376 3 8.5 3C5.46243 3 3 5.46243 3 8.5C3 11.5376 5.46243 14 8.5 1' +
        '4C9.83879 14 11.0659 13.5217 12.0196 12.7266L16.1464 16.8536L16.' +
        '2157 16.9114C16.4106 17.0464 16.68 17.0271 16.8536 16.8536C17.04' +
        '88 16.6583 17.0488 16.3417 16.8536 16.1464L12.7266 12.0196C13.52' +
        '17 11.0659 14 9.83879 14 8.5ZM4 8.5C4 6.01472 6.01472 4 8.5 4C10' +
        '.9853 4 13 6.01472 13 8.5C13 10.9853 10.9853 13 8.5 13C6.01472 1' +
        '3 4 10.9853 4 8.5Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 113
      ExplicitTop = -9
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object btn_slowDown: TSkSvg
      Left = 166
      Top = 221
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_SlowDownMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M13.3536 10.8536L10.35' +
        '36 13.8536C10.1583 14.0488 9.84171 14.0488 9.64645 13.8536L6.646' +
        '45 10.8536C6.45118 10.6583 6.45118 10.3417 6.64645 10.1464C6.841' +
        '71 9.95118 7.15829 9.95118 7.35355 10.1464L9.5 12.2929L9.5 6.5C9' +
        '.5 6.22386 9.72386 6 10 6C10.2761 6 10.5 6.22386 10.5 6.5V12.292' +
        '9L12.6464 10.1464C12.8417 9.95118 13.1583 9.95118 13.3536 10.146' +
        '4C13.5488 10.3417 13.5488 10.6583 13.3536 10.8536ZM10 18C14.4183' +
        ' 18 18 14.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.581' +
        '72 2 10C2 14.4183 5.58172 18 10 18ZM17 10C17 13.866 13.866 17 10' +
        ' 17C6.13401 17 3 13.866 3 10C3 6.13401 6.13401 3 10 3C13.866 3 1' +
        '7 6.13401 17 10Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 22
      ExplicitTop = -11
      ExplicitWidth = 50
      ExplicitHeight = 52
    end
    object btn_midUp: TSkSvg
      Left = 166
      Top = 56
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_MiddleUpMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M2 10C2 5.58172 5.5817' +
        '2 2 10 2C14.4183 2 18 5.58172 18 10C18 14.4183 14.4183 18 10 18C' +
        '5.58172 18 2 14.4183 2 10ZM6.64645 9.14645C6.45118 9.34171 6.451' +
        '18 9.65829 6.64645 9.85355C6.84171 10.0488 7.15829 10.0488 7.353' +
        '55 9.85355L9.5 7.70711V13.5C9.5 13.7761 9.72386 14 10 14C10.2761' +
        ' 14 10.5 13.7761 10.5 13.5V7.70711L12.6464 9.85355C12.8417 10.04' +
        '88 13.1583 10.0488 13.3536 9.85355C13.5488 9.65829 13.5488 9.341' +
        '71 13.3536 9.14645L10.3536 6.14645C10.1583 5.95118 9.84171 5.951' +
        '18 9.64645 6.14645L6.64645 9.14645Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 113
      ExplicitTop = -9
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object btn_fastUp: TSkSvg
      Left = 166
      Top = 1
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_FastUpMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.OverrideColor = claTomato
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M2 10C2 5.58172 5.5817' +
        '2 2 10 2C14.4183 2 18 5.58172 18 10C18 14.4183 14.4183 18 10 18C' +
        '5.58172 18 2 14.4183 2 10ZM6.64645 9.14645C6.45118 9.34171 6.451' +
        '18 9.65829 6.64645 9.85355C6.84171 10.0488 7.15829 10.0488 7.353' +
        '55 9.85355L9.5 7.70711V13.5C9.5 13.7761 9.72386 14 10 14C10.2761' +
        ' 14 10.5 13.7761 10.5 13.5V7.70711L12.6464 9.85355C12.8417 10.04' +
        '88 13.1583 10.0488 13.3536 9.85355C13.5488 9.65829 13.5488 9.341' +
        '71 13.3536 9.14645L10.3536 6.14645C10.1583 5.95118 9.84171 5.951' +
        '18 9.64645 6.14645L6.64645 9.14645Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 179
      ExplicitTop = 14
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object btn_slowUp: TSkSvg
      Left = 166
      Top = 111
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_SlowUpMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M6.64645 9.14645L9.646' +
        '45 6.14645C9.84171 5.95118 10.1583 5.95118 10.3536 6.14645L13.35' +
        '36 9.14645C13.5488 9.34171 13.5488 9.65829 13.3536 9.85355C13.15' +
        '83 10.0488 12.8417 10.0488 12.6464 9.85355L10.5 7.70711V13.5C10.' +
        '5 13.7761 10.2761 14 10 14C9.72386 14 9.5 13.7761 9.5 13.5V7.707' +
        '11L7.35355 9.85355C7.15829 10.0488 6.84171 10.0488 6.64645 9.853' +
        '55C6.45118 9.65829 6.45118 9.34171 6.64645 9.14645ZM10 2C5.58172' +
        ' 2 2 5.58172 2 10C2 14.4183 5.58172 18 10 18C14.4183 18 18 14.41' +
        '83 18 10C18 5.58172 14.4183 2 10 2ZM3 10C3 6.13401 6.13401 3 10 ' +
        '3C13.866 3 17 6.13401 17 10C17 13.866 13.866 17 10 17C6.13401 17' +
        ' 3 13.866 3 10Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 259
      ExplicitTop = 118
      ExplicitWidth = 50
      ExplicitHeight = 52
    end
    object btn_Home: TSkSvg
      Left = 166
      Top = 166
      Width = 55
      Height = 55
      Align = alClient
      OnClick = btn_HomeClick
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M8.9975 2.38811C9.5676' +
        '7 1.87584 10.4323 1.87584 11.0025 2.38811L16.5025 7.32965C16.819' +
        '1 7.61414 17 8.01977 17 8.44544V15.4996C17 16.328 16.3284 16.999' +
        '6 15.5 16.9996H13C12.1716 16.9996 11.5 16.328 11.5 15.4996V11.99' +
        '96C11.5 11.7234 11.2761 11.4996 11 11.4996H9C8.72386 11.4996 8.5' +
        ' 11.7234 8.5 11.9996V15.4996C8.5 16.328 7.82843 16.9996 7 16.999' +
        '6H4.5C3.67157 16.9996 3 16.328 3 15.4996V8.44544C3 8.01977 3.180' +
        '86 7.61414 3.4975 7.32965L8.9975 2.38811ZM10.3342 3.13197C10.144' +
        '1 2.96122 9.85589 2.96122 9.66583 3.13197L4.16583 8.07351C4.0602' +
        '9 8.16834 4 8.30355 4 8.44544V15.4996C4 15.7757 4.22386 15.9996 ' +
        '4.5 15.9996H7C7.27614 15.9996 7.5 15.7757 7.5 15.4996V11.9996C7.' +
        '5 11.1711 8.17157 10.4996 9 10.4996H11C11.8284 10.4996 12.5 11.1' +
        '711 12.5 11.9996V15.4996C12.5 15.7757 12.7239 15.9996 13 15.9996' +
        'H15.5C15.7761 15.9996 16 15.7757 16 15.4996V8.44544C16 8.30355 1' +
        '5.9397 8.16834 15.8342 8.07351L10.3342 3.13197Z" fill="#212121"/' +
        '>'#13#10'</svg>'
      ExplicitLeft = 180
      ExplicitTop = 162
      ExplicitWidth = 50
      ExplicitHeight = 52
    end
    object btn_midDown: TSkSvg
      Left = 166
      Top = 276
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_MiddleDownMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M18 10C18 14.4183 14.4' +
        '183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C' +
        '14.4183 2 18 5.58172 18 10ZM13.3536 10.8536C13.5488 10.6583 13.5' +
        '488 10.3417 13.3536 10.1464C13.1583 9.95118 12.8417 9.95118 12.6' +
        '464 10.1464L10.5 12.2929V6.5C10.5 6.22386 10.2761 6 10 6C9.72386' +
        ' 6 9.5 6.22386 9.5 6.5L9.5 12.2929L7.35355 10.1464C7.15829 9.951' +
        '18 6.84171 9.95118 6.64645 10.1464C6.45118 10.3417 6.45118 10.65' +
        '83 6.64645 10.8536L9.64645 13.8536C9.84171 14.0488 10.1583 14.04' +
        '88 10.3536 13.8536L13.3536 10.8536Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 203
      ExplicitTop = 302
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object btn_fastDown: TSkSvg
      Left = 166
      Top = 331
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_FastDownMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.OverrideColor = claTomato
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M18 10C18 14.4183 14.4' +
        '183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C' +
        '14.4183 2 18 5.58172 18 10ZM13.3536 10.8536C13.5488 10.6583 13.5' +
        '488 10.3417 13.3536 10.1464C13.1583 9.95118 12.8417 9.95118 12.6' +
        '464 10.1464L10.5 12.2929V6.5C10.5 6.22386 10.2761 6 10 6C9.72386' +
        ' 6 9.5 6.22386 9.5 6.5L9.5 12.2929L7.35355 10.1464C7.15829 9.951' +
        '18 6.84171 9.95118 6.64645 10.1464C6.45118 10.3417 6.45118 10.65' +
        '83 6.64645 10.8536L9.64645 13.8536C9.84171 14.0488 10.1583 14.04' +
        '88 10.3536 13.8536L13.3536 10.8536Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 147
      ExplicitTop = 302
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object btn_slowRight: TSkSvg
      Left = 221
      Top = 166
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_SlowRightMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M10.8536 13.3536L13.85' +
        '36 10.3536C14.0488 10.1583 14.0488 9.84171 13.8536 9.64645L10.85' +
        '36 6.64645C10.6583 6.45118 10.3417 6.45118 10.1464 6.64645C9.951' +
        '18 6.84171 9.95118 7.15829 10.1464 7.35355L12.2929 9.5H6.5C6.223' +
        '86 9.5 6 9.72386 6 10C6 10.2761 6.22386 10.5 6.5 10.5H12.2929L10' +
        '.1464 12.6464C9.95118 12.8417 9.95118 13.1583 10.1464 13.3536C10' +
        '.3417 13.5488 10.6583 13.5488 10.8536 13.3536ZM18 10C18 14.4183 ' +
        '14.4183 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 1' +
        '0 2C14.4183 2 18 5.58172 18 10ZM10 17C13.866 17 17 13.866 17 10C' +
        '17 6.13401 13.866 3 10 3C6.13401 3 3 6.13401 3 10C3 13.866 6.134' +
        '01 17 10 17Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 99
      ExplicitTop = 244
      ExplicitWidth = 50
      ExplicitHeight = 52
    end
    object btn_midRight: TSkSvg
      Left = 276
      Top = 166
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_MiddleRightMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M10 18C14.4183 18 18 1' +
        '4.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C' +
        '2 14.4183 5.58172 18 10 18ZM10.8536 13.3536C10.6583 13.5488 10.3' +
        '417 13.5488 10.1464 13.3536C9.95118 13.1583 9.95118 12.8417 10.1' +
        '464 12.6464L12.2929 10.5H6.5C6.22386 10.5 6 10.2761 6 10C6 9.723' +
        '86 6.22386 9.5 6.5 9.5H12.2929L10.1464 7.35355C9.95118 7.15829 9' +
        '.95118 6.84171 10.1464 6.64645C10.3417 6.45118 10.6583 6.45118 1' +
        '0.8536 6.64645L13.8536 9.64645C14.0488 9.84171 14.0488 10.1583 1' +
        '3.8536 10.3536L10.8536 13.3536Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 163
      ExplicitTop = 220
      ExplicitWidth = 50
      ExplicitHeight = 52
    end
    object btn_fastRight: TSkSvg
      Left = 331
      Top = 166
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_FastRightMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.OverrideColor = claTomato
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M10 18C14.4183 18 18 1' +
        '4.4183 18 10C18 5.58172 14.4183 2 10 2C5.58172 2 2 5.58172 2 10C' +
        '2 14.4183 5.58172 18 10 18ZM10.8536 13.3536C10.6583 13.5488 10.3' +
        '417 13.5488 10.1464 13.3536C9.95118 13.1583 9.95118 12.8417 10.1' +
        '464 12.6464L12.2929 10.5H6.5C6.22386 10.5 6 10.2761 6 10C6 9.723' +
        '86 6.22386 9.5 6.5 9.5H12.2929L10.1464 7.35355C9.95118 7.15829 9' +
        '.95118 6.84171 10.1464 6.64645C10.3417 6.45118 10.6583 6.45118 1' +
        '0.8536 6.64645L13.8536 9.64645C14.0488 9.84171 14.0488 10.1583 1' +
        '3.8536 10.3536L10.8536 13.3536Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 203
      ExplicitTop = 212
      ExplicitWidth = 50
      ExplicitHeight = 52
    end
    object btn_slowleft: TSkSvg
      Left = 111
      Top = 166
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_SlowLeftMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M9.14645 13.3536L6.146' +
        '45 10.3536C5.95118 10.1583 5.95118 9.84171 6.14645 9.64645L9.146' +
        '45 6.64645C9.34171 6.45118 9.65829 6.45118 9.85355 6.64645C10.04' +
        '88 6.84171 10.0488 7.15829 9.85355 7.35355L7.70711 9.5H13.5C13.7' +
        '761 9.5 14 9.72386 14 10C14 10.2761 13.7761 10.5 13.5 10.5H7.707' +
        '11L9.85355 12.6464C10.0488 12.8417 10.0488 13.1583 9.85355 13.35' +
        '36C9.65829 13.5488 9.34171 13.5488 9.14645 13.3536ZM2 10C2 14.41' +
        '83 5.58172 18 10 18C14.4183 18 18 14.4183 18 10C18 5.58172 14.41' +
        '83 2 10 2C5.58172 2 2 5.58172 2 10ZM10 17C6.13401 17 3 13.866 3 ' +
        '10C3 6.13401 6.13401 3 10 3C13.866 3 17 6.13401 17 10C17 13.866 ' +
        '13.866 17 10 17Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 330
      ExplicitTop = 11
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object btn_midleft: TSkSvg
      Left = 56
      Top = 166
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_MiddleLeftMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M10 18C5.58172 18 2 14' +
        '.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10C1' +
        '8 14.4183 14.4183 18 10 18ZM9.14645 13.3536C9.34171 13.5488 9.65' +
        '829 13.5488 9.85355 13.3536C10.0488 13.1583 10.0488 12.8417 9.85' +
        '355 12.6464L7.70711 10.5H13.5C13.7761 10.5 14 10.2761 14 10C14 9' +
        '.72386 13.7761 9.5 13.5 9.5H7.70711L9.85355 7.35355C10.0488 7.15' +
        '829 10.0488 6.84171 9.85355 6.64645C9.65829 6.45118 9.34171 6.45' +
        '118 9.14645 6.64645L6.14645 9.64645C5.95118 9.84171 5.95118 10.1' +
        '583 6.14645 10.3536L9.14645 13.3536Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 330
      ExplicitTop = 118
      ExplicitWidth = 50
      ExplicitHeight = 50
    end
    object btn_fastleft: TSkSvg
      Left = 1
      Top = 166
      Width = 55
      Height = 55
      Align = alClient
      OnMouseDown = btn_FastLeftMouseDown
      OnMouseEnter = SkSvgMouseEnter
      OnMouseLeave = SkSvgMouseLeave
      OnMouseUp = btn_Up
      Svg.OverrideColor = claTomato
      Svg.Source = 
        '<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmln' +
        's="http://www.w3.org/2000/svg">'#13#10'<path d="M10 18C5.58172 18 2 14' +
        '.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10C1' +
        '8 14.4183 14.4183 18 10 18ZM9.14645 13.3536C9.34171 13.5488 9.65' +
        '829 13.5488 9.85355 13.3536C10.0488 13.1583 10.0488 12.8417 9.85' +
        '355 12.6464L7.70711 10.5H13.5C13.7761 10.5 14 10.2761 14 10C14 9' +
        '.72386 13.7761 9.5 13.5 9.5H7.70711L9.85355 7.35355C10.0488 7.15' +
        '829 10.0488 6.84171 9.85355 6.64645C9.65829 6.45118 9.34171 6.45' +
        '118 9.14645 6.64645L6.14645 9.64645C5.95118 9.84171 5.95118 10.1' +
        '583 6.14645 10.3536L9.14645 13.3536Z" fill="#212121"/>'#13#10'</svg>'
      ExplicitLeft = 224
      ExplicitTop = 169
      ExplicitWidth = 52
      ExplicitHeight = 50
    end
  end
end
