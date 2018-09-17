object Frmempresa: TFrmempresa
  Left = 0
  Top = 0
  Caption = 'Datos de la empresa'
  ClientHeight = 693
  ClientWidth = 1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 652
    Width = 1088
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 1088
    Height = 507
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 64
      Top = 17
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
    object Label4: TLabel
      Left = 481
      Top = 113
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
    object Label3: TLabel
      Left = 67
      Top = 113
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
      Left = 622
      Top = 113
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
    object Label2: TLabel
      Left = 50
      Top = 65
      Width = 50
      Height = 16
      Caption = 'Nombre:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 45
      Top = 165
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
    object Label7: TLabel
      Left = 370
      Top = 227
      Width = 21
      Height = 16
      Caption = 'Url:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 355
      Top = 165
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
    object Label9: TLabel
      Left = 604
      Top = 166
      Width = 32
      Height = 16
      Caption = 'Logo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 642
      Top = 165
      Width = 239
      Height = 148
      Stretch = True
    end
    object Image2: TImage
      Left = 233
      Top = 224
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Enabled = False
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
    object lblmunestado: TLabel
      Left = 106
      Top = 273
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblcolonia: TLabel
      Left = 106
      Top = 256
      Width = 4
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 81
      Top = 227
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
    object DBEdit1: TDBEdit
      Left = 106
      Top = 16
      Width = 121
      Height = 21
      DataField = 'emp_clave'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 552
      Top = 112
      Width = 49
      Height = 21
      DataField = 'emp_noint'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 106
      Top = 112
      Width = 361
      Height = 21
      DataField = 'emp_calle'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 696
      Top = 112
      Width = 49
      Height = 21
      DataField = 'emp_noext'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 106
      Top = 64
      Width = 639
      Height = 21
      DataField = 'emp_nombre'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 106
      Top = 164
      Width = 157
      Height = 21
      DataField = 'emp_telefono'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 397
      Top = 226
      Width = 172
      Height = 21
      DataField = 'emp_url'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 8
    end
    object DBEdit8: TDBEdit
      Left = 397
      Top = 164
      Width = 172
      Height = 21
      DataField = 'emp_email'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 6
    end
    object Button1: TButton
      Left = 642
      Top = 319
      Width = 121
      Height = 25
      Caption = 'Seleccionar archivo'
      Enabled = False
      TabOrder = 9
      OnClick = Button1Click
    end
    object edcp: TEdit
      Left = 106
      Top = 224
      Width = 121
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object edidcp: TEdit
      Left = 81
      Top = 295
      Width = 97
      Height = 21
      TabOrder = 10
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 57
    Width = 1088
    Height = 88
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object Panel5: TPanel
      Left = 664
      Top = 0
      Width = 424
      Height = 88
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 0
      object pnlCancelar: TPanel
        Left = -7
        Top = 29
        Width = 177
        Height = 35
        Cursor = crHandPoint
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
        Visible = False
        OnClick = pnlCancelarClick
        OnMouseLeave = pnlCancelarMouseLeave
        OnMouseMove = pnlCancelarMouseMove
      end
      object pnlGuardar: TPanel
        Left = 176
        Top = 29
        Width = 177
        Height = 35
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Guardar datos'
        Color = 12616192
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = pnlGuardarClick
        OnMouseLeave = pnlGuardarMouseLeave
        OnMouseMove = pnlGuardarMouseMove
      end
      object pnlEditar: TPanel
        Left = 176
        Top = 29
        Width = 177
        Height = 35
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Editar datos'
        Color = 12616192
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = pnlEditarClick
        OnMouseLeave = pnlEditarMouseLeave
        OnMouseMove = pnlEditarMouseMove
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1088
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object lblTitulo: TLabel
      Left = 24
      Top = 10
      Width = 313
      Height = 40
      Caption = 'Datos de la empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -35
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 521
      Top = -25
      Width = 48
      Height = 23
      Glyph.Data = {
        8E020000424D8E0200000000000036000000280000000D0000000F0000000100
        1800000000005802000000000000000000000000000000000000C8D0D4808080
        808080C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4000000FF000080000080808080C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000FF
        808080C8D0D4C8D0D4000000FF000080000080000080808080C8D0D4C8D0D4C8
        D0D40000FF000080000080808080C8D0D4000000FF0000800000800000800000
        80808080C8D0D40000FF00008000008000008000008080808000C8D0D40000FF
        0000800000800000800000808080800000800000800000800000800000808080
        8000C8D0D4C8D0D40000FF000080000080000080000080000080000080000080
        000080808080C8D0D400C8D0D4C8D0D4C8D0D40000FF00008000008000008000
        0080000080000080808080C8D0D4C8D0D400C8D0D4C8D0D4C8D0D4C8D0D40000
        80000080000080000080000080808080C8D0D4C8D0D4C8D0D400C8D0D4C8D0D4
        C8D0D4C8D0D40000FF000080000080000080000080808080C8D0D4C8D0D4C8D0
        D400C8D0D4C8D0D4C8D0D40000FF000080000080000080000080000080808080
        C8D0D4C8D0D4C8D0D400C8D0D4C8D0D40000FF00008000008000008080808000
        0080000080000080808080C8D0D4C8D0D400C8D0D40000FF0000800000800000
        80808080C8D0D40000FF000080000080000080808080C8D0D400C8D0D40000FF
        000080000080808080C8D0D4C8D0D4C8D0D40000FF0000800000800000808080
        8000C8D0D4C8D0D40000FF000080C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000FF
        00008000008000008000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D40000FF0000800000FF00}
    end
    object SpeedButton2: TSpeedButton
      Left = 697
      Top = -25
      Width = 48
      Height = 23
      Hint = 'editar'
      Glyph.Data = {
        3A080000424D3A080000000000003600000028000000190000001B0000000100
        18000000000004080000C40E0000C40E00000000000000000000F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        474645818283DEDDDCF7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F59192926F95BA5E7B9886898CF7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5E8E8E77594B38EC8
        FF6997C86F8BA1F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5B6B9BB7EB0DD9BD1FF83BAF25C83AAF7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F57BA4C074B1DA8EE0FE67
        D5F5346A8CF7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F4F3F26F93B860B0D78CEBFF6ED8F9346A8CF7F6F5F7F6F5F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F4F3F2457AA16AB7DE91ECFF79DCF5
        346A8CF7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        F1F0EF4A89B16FBDE3A8F5FF86E0F6346A8CF7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F4F3F24E8FB582CEEEAFF8FF89E2F5346A
        8CF7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F3F2
        F1519BC487D5F3C1FFFFA4B2B93C6835F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F0EFEF60A9D1A4B2B9447431829682AEAFAFF7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F0F0EF67
        85688FA58BEAE9EA9999D56C6CB5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F2F1F0C4C7C7898AD96D6EDD4D4DADB5B4D7F7F6F5
        F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F2F1F07978BF
        6262B9A3A2CEF7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F5CAC9E3F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5
        F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500F7F6F5F7F6F5F7F6F5F7F6F5F7F6
        F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7
        F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F5F7F6F500}
    end
  end
  object DataSource1: TDataSource
    DataSet = dm.dsEmpresa
    OnDataChange = DataSource1DataChange
    Left = 8
    Top = 209
  end
  object OpenPic1: TOpenPictureDialog
    Filter = 'All (*.jpg;*.jpeg;)|*.jpg;*.jpeg;'
    Left = 808
    Top = 481
  end
end
