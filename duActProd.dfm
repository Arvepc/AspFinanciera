object frmActProducto: TfrmActProducto
  Left = 0
  Top = 0
  Caption = 'Actualizar Producto Financiero'
  ClientHeight = 621
  ClientWidth = 577
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcProducto: TPageControl
    Left = 0
    Top = 0
    Width = 577
    Height = 621
    ActivePage = TabSheet2
    Align = alClient
    MultiLine = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Datos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 546
      ExplicitHeight = 550
      object Label2: TLabel
        Left = 61
        Top = 11
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = dbeCodigo
      end
      object Label3: TLabel
        Left = 70
        Top = 125
        Width = 28
        Height = 13
        Caption = 'Serie:'
      end
      object Label4: TLabel
        Left = 42
        Top = 165
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = dbeDescripcion
      end
      object Label5: TLabel
        Left = 36
        Top = 205
        Width = 60
        Height = 13
        Caption = 'Plazo M'#237'nimo'
        FocusControl = dbminimo
      end
      object Label6: TLabel
        Left = 284
        Top = 205
        Width = 64
        Height = 13
        Caption = 'Plazo M'#225'ximo'
        FocusControl = dbmaximo
      end
      object Label7: TLabel
        Left = 22
        Top = 239
        Width = 70
        Height = 26
        Alignment = taRightJustify
        Caption = 'Tasa Ordinaria Anual'
        FocusControl = dbeTasaO
        WordWrap = True
      end
      object Label8: TLabel
        Left = 276
        Top = 241
        Width = 72
        Height = 26
        Alignment = taRightJustify
        Caption = 'Tasa Moratoria Anual'
        FocusControl = dbeTasaM
        WordWrap = True
      end
      object Label9: TLabel
        Left = 45
        Top = 284
        Width = 46
        Height = 13
        Caption = 'Tasa  IVA'
        FocusControl = dbeTasaIVA
      end
      object Label12: TLabel
        Left = 290
        Top = 286
        Width = 58
        Height = 13
        Caption = 'Tipo Interes'
      end
      object Label13: TLabel
        Left = 23
        Top = 364
        Width = 123
        Height = 13
        Caption = 'Formula Interes Ordinario'
        FocusControl = DBEdit11
        Visible = False
      end
      object Label14: TLabel
        Left = 23
        Top = 390
        Width = 125
        Height = 13
        Caption = 'Formula Interes Moratorio'
        FocusControl = DBEdit12
        Visible = False
      end
      object Label15: TLabel
        Left = 112
        Top = 433
        Width = 199
        Height = 13
        Caption = 'Frecuencia de Capitalizaci'#243'n de Inter'#233'ses'
        FocusControl = DBEdit13
      end
      object Label16: TLabel
        Left = 166
        Top = 469
        Width = 145
        Height = 13
        Caption = 'Frecuencia de pago de Capital'
        FocusControl = DBEdit14
      end
      object Label17: TLabel
        Left = 153
        Top = 500
        Width = 158
        Height = 13
        Caption = 'Frecuencia de Pago de Inter'#233'ses'
        FocusControl = DBEdit15
      end
      object Label1: TLabel
        Left = 135
        Top = 569
        Width = 173
        Height = 13
        Caption = 'Periodicidad de C'#225'lculo de Inter'#233'ses'
        FocusControl = DBEdit13
        Visible = False
      end
      object Label10: TLabel
        Left = 238
        Top = 242
        Width = 19
        Height = 19
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 476
        Top = 242
        Width = 19
        Height = 19
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 239
        Top = 279
        Width = 19
        Height = 19
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 28
        Top = 315
        Width = 64
        Height = 26
        Alignment = taRightJustify
        Caption = 'Comision por Apertura'
        FocusControl = dbeComision
        WordWrap = True
      end
      object Label21: TLabel
        Left = 279
        Top = 317
        Width = 69
        Height = 26
        Alignment = taRightJustify
        Caption = 'Gastos de Administraci'#243'n'
        FocusControl = dbeGastos
        WordWrap = True
      end
      object Label22: TLabel
        Left = 474
        Top = 320
        Width = 19
        Height = 19
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 240
        Top = 316
        Width = 19
        Height = 19
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 58
        Top = 50
        Width = 40
        Height = 13
        Caption = 'Subtipo:'
      end
      object Label27: TLabel
        Left = 51
        Top = 90
        Width = 47
        Height = 13
        Caption = 'Producto:'
        Visible = False
      end
      object Image2: TImage
        Left = 477
        Top = 122
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
      object DBEdit1: TDBEdit
        Left = 505
        Top = 8
        Width = 134
        Height = 21
        DataField = 'prd_id'
        DataSource = DataSource1
        TabOrder = 0
        Visible = False
      end
      object dbeCodigo: TDBEdit
        Left = 104
        Top = 8
        Width = 367
        Height = 21
        CharCase = ecUpperCase
        DataField = 'prd_codigo'
        DataSource = DataSource1
        TabOrder = 1
      end
      object dbeDescripcion: TDBEdit
        Left = 102
        Top = 162
        Width = 367
        Height = 21
        CharCase = ecUpperCase
        DataField = 'prd_descripcion'
        DataSource = DataSource1
        TabOrder = 2
      end
      object dbminimo: TDBEdit
        Left = 102
        Top = 202
        Width = 134
        Height = 21
        DataField = 'prd_plazoMin'
        DataSource = DataSource1
        TabOrder = 3
      end
      object dbmaximo: TDBEdit
        Left = 354
        Top = 204
        Width = 115
        Height = 21
        DataField = 'prd_PlazoMax'
        DataSource = DataSource1
        TabOrder = 4
      end
      object dbeTasaO: TDBEdit
        Left = 102
        Top = 242
        Width = 134
        Height = 21
        DataField = 'prd_tord'
        DataSource = DataSource1
        TabOrder = 5
      end
      object dbeTasaM: TDBEdit
        Left = 354
        Top = 244
        Width = 116
        Height = 21
        DataField = 'prd_tmor'
        DataSource = DataSource1
        TabOrder = 6
      end
      object dbeTasaIVA: TDBEdit
        Left = 102
        Top = 281
        Width = 134
        Height = 21
        DataField = 'prd_tiva'
        DataSource = DataSource1
        TabOrder = 7
      end
      object DBEdit11: TDBEdit
        Left = 102
        Top = 357
        Width = 367
        Height = 21
        DataField = 'prd_frmIntOrd'
        DataSource = DataSource1
        TabOrder = 8
        Visible = False
      end
      object DBEdit12: TDBEdit
        Left = 102
        Top = 384
        Width = 367
        Height = 21
        DataField = 'prd_frmIntMor'
        DataSource = DataSource1
        TabOrder = 9
        Visible = False
      end
      object DBEdit13: TDBEdit
        Left = -7
        Top = 478
        Width = 134
        Height = 21
        DataField = 'prd_frecCapInt'
        DataSource = DataSource1
        TabOrder = 10
        Visible = False
      end
      object DBEdit14: TDBEdit
        Left = -7
        Top = 505
        Width = 134
        Height = 21
        DataField = 'prd_frecPagCap'
        DataSource = DataSource1
        TabOrder = 11
        Visible = False
      end
      object DBEdit15: TDBEdit
        Left = -7
        Top = 532
        Width = 134
        Height = 21
        DataField = 'prd_frecPagInt'
        DataSource = DataSource1
        TabOrder = 12
        Visible = False
      end
      object cbxfreccapinteres: TComboBox
        Left = 324
        Top = 428
        Width = 145
        Height = 21
        TabOrder = 13
        OnChange = cbxfreccapinteresChange
        Items.Strings = (
          'SEMANAL'
          'QUINCENAL'
          'MENSUAL'
          'BIMESTRAL'
          'TRIMESTRAL'
          'SEMESTRAL'
          'ANUAL')
      end
      object cbxfreccapital: TComboBox
        Left = 324
        Top = 461
        Width = 145
        Height = 21
        TabOrder = 14
        OnChange = cbxfreccapitalChange
        Items.Strings = (
          'SEMANAL'
          'QUINCENAL'
          'MENSUAL'
          'BIMESTRAL'
          'TRIMESTRAL'
          'SEMESTRAL'
          'ANUAL')
      end
      object cbxfrecpagointeres: TComboBox
        Left = 324
        Top = 493
        Width = 145
        Height = 21
        TabOrder = 15
        OnChange = cbxfrecpagointeresChange
        Items.Strings = (
          'SEMANAL'
          'QUINCENAL'
          'MENSUAL'
          'BIMESTRAL'
          'TRIMESTRAL'
          'SEMESTRAL'
          'ANUAL')
      end
      object cbxPeriodicidad: TComboBox
        Left = 163
        Top = 588
        Width = 145
        Height = 21
        TabOrder = 16
        Visible = False
        OnChange = cbxPeriodicidadChange
        Items.Strings = (
          'SEMANAL'
          'QUINCENAL'
          'MENSUAL'
          'BIMESTRAL'
          'TRIMESTRAL'
          'SEMESTRAL'
          'ANUAL')
      end
      object DBEdit5: TDBEdit
        Left = -7
        Top = 452
        Width = 134
        Height = 21
        DataField = 'prd_periodicidad'
        DataSource = DataSource1
        TabOrder = 17
        Visible = False
      end
      object dbeComision: TDBEdit
        Left = 102
        Top = 318
        Width = 134
        Height = 21
        DataField = 'prd_comision'
        DataSource = DataSource1
        TabOrder = 18
      end
      object dbeGastos: TDBEdit
        Left = 354
        Top = 320
        Width = 116
        Height = 21
        DataField = 'prd_gastos'
        DataSource = DataSource1
        TabOrder = 19
      end
      object dbTipoInteres: TDBComboBox
        Left = 354
        Top = 281
        Width = 116
        Height = 19
        DataField = 'prd_tipoInteres'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'INTERES GLOBAL'
          'INTERES SIMPLE'
          'INTERES COMPUESTO')
        ParentFont = False
        TabOrder = 20
        OnChange = dbTipoInteresChange
      end
      object Panel1: TPanel
        Left = 414
        Top = 549
        Width = 121
        Height = 30
        Cursor = crHandPoint
        Caption = 'Siguiente > '
        Color = 12356924
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 21
        OnClick = Panel1Click
        OnMouseLeave = pnlguardaMouseLeave
        OnMouseMove = pnlguardaMouseMove
      end
      object edserie: TEdit
        Left = 104
        Top = 122
        Width = 367
        Height = 21
        TabOrder = 22
      end
      object edIdSerie: TEdit
        Left = 505
        Top = 82
        Width = 121
        Height = 21
        TabOrder = 23
        Text = 'Edit2'
        Visible = False
      end
      object dblckprod: TDBLookupComboBox
        Left = 104
        Top = 82
        Width = 367
        Height = 21
        Enabled = False
        KeyField = 'prd_id'
        ListField = 'prd_descripcion'
        ListSource = dtsproducto
        TabOrder = 24
        Visible = False
      end
      object dblcksubprod: TDBLookupComboBox
        Left = 104
        Top = 42
        Width = 367
        Height = 21
        KeyField = 'sbp_id'
        ListField = 'sbp_descripcion'
        ListSource = dtssubprod
        TabOrder = 25
        OnClick = dblcksubprodClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Docs. Solicitados'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Label24: TLabel
        Left = 28
        Top = 53
        Width = 133
        Height = 13
        Caption = 'Elige un tipo de documento:'
      end
      object Label25: TLabel
        Left = 56
        Top = 16
        Width = 417
        Height = 16
        Caption = 'Selecci'#243'n de documentos necesarios para el producto financiero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 28
        Top = 109
        Width = 97
        Height = 13
        Caption = 'Elige un documento:'
      end
      object Panel2: TPanel
        Left = 0
        Top = 559
        Width = 549
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
        TabOrder = 0
        object Panel3: TPanel
          Left = 120
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
          TabOrder = 0
          OnClick = Panel3Click
        end
        object pnlguarda: TPanel
          Left = 309
          Top = 8
          Width = 121
          Height = 41
          Cursor = crHandPoint
          Caption = 'Guardar'
          Color = 12356924
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          OnClick = pnlguardaClick
          OnMouseLeave = pnlguardaMouseLeave
          OnMouseMove = pnlguardaMouseMove
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 528
        Width = 121
        Height = 26
        Cursor = crHandPoint
        Caption = '< Regresar'
        Color = 12356924
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        OnClick = Panel4Click
        OnMouseLeave = Panel4MouseLeave
        OnMouseMove = Panel4MouseMove
      end
      object dblcktipodoc: TDBLookupComboBox
        Left = 28
        Top = 128
        Width = 449
        Height = 21
        KeyField = 'tpd_id'
        ListField = 'tpd_descripcion'
        ListSource = dtsTipoDoc
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 176
        Width = 497
        Height = 329
        Caption = 'Tipo de Documentos Seleccionados'
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Orientation = 4
        Font.Style = []
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 3
        object DBGrid1: TDBGrid
          Left = 17
          Top = 22
          Width = 465
          Height = 281
          DataSource = dtsProd_TipoDoc
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Orientation = 4
          TitleFont.Style = []
        end
      end
      object Panel5: TPanel
        Left = 491
        Top = 108
        Width = 42
        Height = 41
        Cursor = crHandPoint
        Caption = '+'
        Color = 12356924
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        OnClick = Panel5Click
        OnMouseLeave = Panel5MouseLeave
        OnMouseMove = Panel5MouseMove
      end
      object ComboBox1: TComboBox
        Left = 28
        Top = 72
        Width = 449
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 5
        Text = 'Documento valor'
        OnChange = ComboBox1Change
        Items.Strings = (
          'Documento valor'
          'Reporte')
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = dm.dsProd
    Left = 16
    Top = 309
  end
  object dtssubprod: TDataSource
    DataSet = dm.dsSubProd
    Left = 544
    Top = 391
  end
  object dtsTipoDoc: TDataSource
    DataSet = dsTipo_Doc
    Left = 16
    Top = 188
  end
  object dsTipo_Doc: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select * from tipo_doc'
      'where tpd_estatus = 1'
      'order by tpd_descripcion')
    Params = <>
    Left = 8
    Top = 140
    object dsTipo_Doctpd_id: TIntegerField
      FieldName = 'tpd_id'
      Required = True
    end
    object dsTipo_Doctpd_descripcion: TWideStringField
      FieldName = 'tpd_descripcion'
      Required = True
      Size = 100
    end
    object dsTipo_Doctpd_estatus: TSmallintField
      FieldName = 'tpd_estatus'
      Required = True
    end
    object dsTipo_Doctpd_docvalor: TSmallintField
      FieldName = 'tpd_docvalor'
    end
    object dsTipo_Doctpd_esreporte: TSmallintField
      FieldName = 'tpd_esreporte'
    end
  end
  object dsProd_TipoDoc: TZQuery
    Connection = dm.ZConnection1
    Params = <>
    Left = 552
    Top = 220
  end
  object dtsProd_TipoDoc: TDataSource
    DataSet = dsProd_TipoDoc
    Left = 552
    Top = 268
  end
  object dsSerie: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select * from serie'
      'order by ser_serie')
    Params = <>
    Left = 544
    Top = 84
  end
  object DataSource2: TDataSource
    Left = 552
    Top = 172
  end
  object dtsproducto: TDataSource
    DataSet = dm.dsProd
    Left = 40
    Top = 4
  end
end
