object WebModule1: TWebModule1
  OldCreateOrder = False
  Actions = <
    item
      Default = True
      Name = 'waProcessTPP'
      PathInfo = '/process'
      OnAction = WebModule1waProcessTPPAction
    end>
  Left = 197
  Top = 144
  Height = 177
  Width = 246
  object tppGrok: TPageProducer
    OnHTMLTag = tppGrokHTMLTag
    Left = 48
    Top = 16
  end
end
