object frminicio: Tfrminicio
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 431
  ClientWidth = 333
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlmensaje: TPanel
    Left = 0
    Top = 377
    Width = 333
    Height = 54
    Cursor = crHandPoint
    Align = alBottom
    Color = 15855852
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object PnlMsj: TLabel
      Left = 14
      Top = 6
      Width = 297
      Height = 41
      Alignment = taCenter
      AutoSize = False
      Caption = #191'Olvid'#243' su password?'
      Color = 15856108
      ParentColor = False
      WordWrap = True
      OnClick = PnlMsjClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 49
    Height = 377
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
  end
  object Panel4: TPanel
    Left = 284
    Top = 0
    Width = 49
    Height = 377
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
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
    Width = 235
    Height = 377
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object pnlingresa: TPanel
      Left = 0
      Top = 259
      Width = 235
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Ingresar'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = pnlingresaClick
      OnMouseLeave = pnlingresaMouseLeave
      OnMouseMove = pnlingresaMouseMove
    end
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 235
      Height = 217
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lblusuario: TLabel
        Left = 6
        Top = 77
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblpassword: TLabel
        Left = 6
        Top = 135
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbltitulo: TLabel
        Left = 0
        Top = 0
        Width = 235
        Height = 19
        Align = alTop
        Alignment = taCenter
        Caption = 'Ingreso a usuarios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 150
      end
      object edusuario: TEdit
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
        TabOrder = 1
        Text = 'admin'
        TextHint = 'Usuario'
        OnEnter = edusuarioEnter
        OnExit = edusuarioExit
      end
      object edpass: TEdit
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
        TabOrder = 2
        Text = '4dm1n1str4d0R'
        TextHint = 'Password'
        OnEnter = edpassEnter
        OnExit = edpassExit
        OnKeyPress = edpassKeyPress
      end
      object Edit3: TEdit
        Left = 88
        Top = 32
        Width = 0
        Height = 21
        TabOrder = 0
      end
      object Panel5: TPanel
        Left = 0
        Top = 176
        Width = 235
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 217
      Width = 235
      Height = 42
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
    end
    object btnAccesar: TButton
      Left = 2
      Top = 306
      Width = 227
      Height = 57
      Hint = 'Accesa al sistema'
      Caption = 'Ingresar'
      CommandLinkHint = 'Accesa al sistema'
      ModalResult = 1
      Style = bsCommandLink
      TabOrder = 3
      Visible = False
    end
  end
  object ImageList1: TImageList
    Left = 297
    Top = 24
  end
end
