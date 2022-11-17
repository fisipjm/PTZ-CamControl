object Presets: TPresets
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 480
  Width = 640
  object UDPClient1: TIdUDPClient
    Port = 0
    Left = 304
    Top = 224
  end
end
