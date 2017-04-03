object DataMod: TDataMod
  OldCreateOrder = False
  OnCreate = SoapDataModuleCreate
  Left = 471
  Top = 350
  Height = 205
  Width = 271
  object XMLTransformProvider1: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\test\echo\Echo Service Demo.old\Data\ToDp.xtr'
    TransformWrite.TransformationFile = 'C:\test\echo\Echo Service Demo.old\Data\ToXml.xtr'
    XMLDataFile = 'C:\test\echo\SOAPDataModule\Data\XML_Document.xml'
    Left = 48
    Top = 8
  end
end
