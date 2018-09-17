object Frmactcentrostrabajo: TFrmactcentrostrabajo
  Left = 0
  Top = 0
  Caption = 'Agregar centros de trabajo'
  ClientHeight = 468
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnMouseMove = FormMouseMove
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 53
    Top = 32
    Width = 36
    Height = 16
    Caption = 'Clave:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 72
    Width = 70
    Height = 16
    Caption = 'Descripci'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 55
    Top = 112
    Width = 33
    Height = 16
    Caption = 'Calle:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 25
    Top = 152
    Width = 65
    Height = 16
    Caption = 'No interior:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 21
    Top = 192
    Width = 68
    Height = 16
    Caption = 'No exterior:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 33
    Top = 232
    Width = 55
    Height = 16
    Caption = 'Tel'#233'fono:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 52
    Top = 272
    Width = 36
    Height = 16
    Caption = 'Email:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Image2: TImage
    Left = 296
    Top = 309
    Width = 30
    Height = 30
    Cursor = crHandPoint
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D494844520000001E0000
      001B0802000000E49FA846000000017352474200AECE1CE90000000467414D41
      0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000001
      504944415478DA63FCFFFF3F036D0023D0E8DF7FFEA59D39425D73A75BD8818C
      4E3C718856AE1E357AC4187DFBAB1117E3FFBFCCEC72EC27A869B4858A6D8410
      233F1388FDF6EBBFD50F7E9FFC7C920A46BBA8DB440A309E7DF273DAD353406E
      B9B69D32C7DFAD977E6DFC7D9A22A31F315A2E3166FDF6E647CB8353109113FF
      AC9619B118FCFD9B74F9284546FF62B39C69C89A7B124581B5924D8A2063E2D9
      C31419FD83C5729611EBFED3DFD7FF4778DF49DD36448031EBE4218A8CBEF4D7
      6285299BE08F5FA5D7A009E3038BD5440316A14F7F726F1DA3C86820901631AF
      56667FFDF1CFE6778C6CBFFFFB2BB088B1333C7AFEA3FEE1294A8D06825B4236
      F3A49954B81998FE33DC78F5EB3D2BAB9520C3D907BFA6BC3C49A9D198C05BD3
      D68FE7FFEA53AFF630DEA2B2D14020CC6DF9F6EB71EABB9A18306AF4A8D1848D
      FEF1FB7FDDADAFAF3F9FA3A2B9734C6D00F24BF6C35851E6030000000049454E
      44AE426082}
    OnClick = Image2Click
  end
  object Label11: TLabel
    Left = 65
    Top = 312
    Width = 23
    Height = 16
    Caption = 'C.P.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblcolonia: TLabel
    Left = 94
    Top = 344
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblmunestado: TLabel
    Left = 94
    Top = 366
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 95
    Top = 31
    Width = 195
    Height = 21
    DataField = 'cd_clave'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 71
    Width = 194
    Height = 21
    DataField = 'ct_descripcion'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 94
    Top = 111
    Width = 196
    Height = 21
    DataField = 'ct_calle'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 96
    Top = 151
    Width = 194
    Height = 21
    DataField = 'ct_no_int'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 95
    Top = 191
    Width = 195
    Height = 21
    DataField = 'ct_noext'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit7: TDBEdit
    Left = 94
    Top = 231
    Width = 196
    Height = 21
    DataField = 'ct_telefono'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit8: TDBEdit
    Left = 94
    Top = 271
    Width = 196
    Height = 21
    DataField = 'ct_email'
    DataSource = DataSource1
    TabOrder = 6
  end
  object Panel2: TPanel
    Left = 0
    Top = 414
    Width = 376
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
    TabOrder = 10
    object pnlguarda: TPanel
      Left = 230
      Top = 8
      Width = 121
      Height = 41
      Caption = 'Registrar'
      Color = 12616192
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = pnlguardaClick
      OnMouseLeave = pnlguardaMouseLeave
      OnMouseMove = pnlguardaMouseMove
    end
    object Panel3: TPanel
      Left = 16
      Top = 8
      Width = 121
      Height = 41
      Caption = 'Cancelar'
      Color = 204
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = Panel3Click
      OnMouseLeave = Panel3MouseLeave
      OnMouseMove = Panel3MouseMove
    end
  end
  object DBEdit9: TDBEdit
    Left = 360
    Top = 31
    Width = 121
    Height = 21
    DataField = 'ct_id'
    DataSource = DataSource1
    TabOrder = 8
    Visible = False
  end
  object edcp: TEdit
    Left = 94
    Top = 309
    Width = 196
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object edidcp: TEdit
    Left = 348
    Top = 311
    Width = 129
    Height = 21
    TabOrder = 9
    Visible = False
  end
  object DataSource1: TDataSource
    DataSet = dm.dsCentroTrabajo
  end
end
