object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 521
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 144
    Width = 35
    Height = 13
    Caption = 'correo:'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 456
    Width = 816
    Height = 65
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 272
    Top = 24
    Width = 257
    Height = 49
    Caption = 'genero el archivo'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 535
    Top = 24
    Width = 257
    Height = 49
    Caption = 'empaqueta archivos'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 272
    Top = 144
    Width = 273
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Button3: TButton
    Left = 264
    Top = 352
    Width = 528
    Height = 25
    Caption = 'enviar por correo'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 264
    Top = 184
    Width = 528
    Height = 145
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object DataSource1: TDataSource
    Left = 168
    Top = 64
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 48
    Top = 208
  end
  object IdSMTP: TIdSMTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL
    Host = 'smtp.gmail.com'
    Port = 465
    SASLMechanisms = <>
    UseTLS = utUseImplicitTLS
    Left = 48
    Top = 256
  end
  object IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL
    Destination = 'smtp.gmail.com:465'
    Host = 'smtp.gmail.com'
    MaxLineAction = maException
    Port = 465
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv23
    SSLOptions.SSLVersions = [sslvSSLv2, sslvSSLv3, sslvTLSv1]
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 48
    Top = 304
  end
end
