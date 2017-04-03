object DataMod: TDataMod
  OldCreateOrder = False
  Left = 471
  Top = 350
  Height = 205
  Width = 271
  object XMLTransformProvider1: TXMLTransformProvider
    TransformRead.TransformationFile = '..\data\ToDp.xtr'
    TransformWrite.TransformationFile = '..\data\ToXml.xtr'
    XMLDataFile = '..\data\XML_Document.xml'
    Left = 48
    Top = 8
  end
end
