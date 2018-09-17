object Frmrecuperar: TFrmrecuperar
  Left = 0
  Top = 0
  BorderIcons = []
  ClientHeight = 421
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 303
    Top = 0
    Width = 49
    Height = 367
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = 283
    object Label3: TLabel
      Left = 26
      Top = 2
      Width = 9
      Height = 16
      Cursor = crHandPoint
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label3Click
    end
  end
  object Panel1: TPanel
    Left = 49
    Top = 0
    Width = 254
    Height = 367
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 234
    object Panel5: TPanel
      Left = 0
      Top = 326
      Width = 254
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 234
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 254
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Cancelar'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = Panel6Click
        OnMouseLeave = Panel6MouseLeave
        OnMouseMove = Panel6MouseMove
        ExplicitWidth = 234
      end
    end
    object pnlingresa: TPanel
      Left = 0
      Top = 259
      Width = 254
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Enviar c'#243'digo'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = pnlingresaClick
      OnMouseLeave = pnlingresaMouseLeave
      OnMouseMove = pnlingresaMouseMove
      ExplicitWidth = 234
    end
    object Panel7: TPanel
      Left = 0
      Top = 217
      Width = 254
      Height = 42
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      ExplicitWidth = 234
    end
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 254
      Height = 217
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 234
      object lblcodigo: TLabel
        Left = 6
        Top = 135
        Width = 206
        Height = 13
        Caption = 'Ingrese el  codigo que se envio a su correo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lbltitulo: TLabel
        Left = 0
        Top = 0
        Width = 254
        Height = 19
        Align = alTop
        Alignment = taCenter
        Caption = 'Recuperar contrase'#241'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 179
      end
      object Label1: TLabel
        Left = 6
        Top = 66
        Width = 214
        Height = 24
        AutoSize = False
        Caption = 'Ingrese el correo electr'#243'nico asociado a su cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object edemail: TEdit
        Left = 6
        Top = 96
        Width = 227
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HideSelection = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TextHint = 'Email'
      end
      object edcodigo: TEdit
        Left = 6
        Top = 151
        Width = 227
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 1
        TextHint = 'Codigo'
        Visible = False
      end
      object Memo1: TMemo
        Left = 272
        Top = 97
        Width = 385
        Height = 89
        Lines.Strings = (
          
            'Ingrese el siguiente codigo en el sistema ASP para recuperar la ' +
            'contrase'#241'a:')
        TabOrder = 2
        Visible = False
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 49
    Height = 367
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
  end
  object pnlmensaje: TPanel
    Left = 0
    Top = 367
    Width = 352
    Height = 54
    Align = alBottom
    Color = 15855852
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    ExplicitWidth = 332
  end
  object IdSMTP: TIdSMTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL
    Host = 'smtp.gmail.com'
    Port = 465
    SASLMechanisms = <>
    UseTLS = utUseImplicitTLS
    Left = 8
    Top = 104
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
    Left = 8
    Top = 56
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
    Left = 8
    Top = 152
  end
end
