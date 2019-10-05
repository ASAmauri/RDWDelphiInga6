object DataModule1: TDataModule1
  OldCreateOrder = False
  Encoding = esASCII
  Height = 274
  Width = 430
  object DWServerEvents1: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odOUT
            ObjectValue = ovString
            ParamName = 'result'
            Encoded = False
          end>
        JsonMode = jmDataware
        Name = 'test'
        OnReplyEvent = DWServerEvents1EventstestReplyEvent
      end
      item
        Routes = [crAll]
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odOUT
            ObjectValue = ovString
            ParamName = 'result'
            Encoded = False
          end>
        JsonMode = jmPureJSON
        Name = 'testPureJSON'
        OnReplyEvent = DWServerEvents1EventstestPureJsonReplyEvent
      end
      item
        Routes = [crAll]
        DWParams = <>
        JsonMode = jmDataware
        Name = 'assyncevent'
        OnReplyEvent = DWServerEvents1EventsassynceventReplyEvent
      end>
    Left = 56
    Top = 32
  end
end
