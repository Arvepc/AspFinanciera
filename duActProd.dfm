object frmActProducto: TfrmActProducto
  Left = 0
  Top = 0
  Caption = 'Actualizar Producto Financiero'
  ClientHeight = 673
  ClientWidth = 574
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
    Width = 574
    Height = 673
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TabPosition = tpLeft
    ExplicitHeight = 558
    object TabSheet1: TTabSheet
      Caption = 'Datos'
      ExplicitHeight = 550
      object Label2: TLabel
        Left = 60
        Top = 11
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = dbeCodigo
      end
      object Label3: TLabel
        Left = 18
        Top = 77
        Width = 73
        Height = 13
        Caption = 'Folio Segmento'
      end
      object Label4: TLabel
        Left = 42
        Top = 117
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = dbeDescripcion
      end
      object Label5: TLabel
        Left = 36
        Top = 157
        Width = 60
        Height = 13
        Caption = 'Plazo M'#237'nimo'
        FocusControl = dbminimo
      end
      object Label6: TLabel
        Left = 265
        Top = 157
        Width = 64
        Height = 13
        Caption = 'Plazo M'#225'ximo'
        FocusControl = dbmaximo
      end
      object Label7: TLabel
        Left = 22
        Top = 191
        Width = 70
        Height = 26
        Alignment = taRightJustify
        Caption = 'Tasa Ordinaria Anual'
        FocusControl = dbeTasaO
        WordWrap = True
      end
      object Label8: TLabel
        Left = 276
        Top = 193
        Width = 72
        Height = 26
        Alignment = taRightJustify
        Caption = 'Tasa Moratoria Anual'
        FocusControl = dbeTasaM
        WordWrap = True
      end
      object Label9: TLabel
        Left = 45
        Top = 236
        Width = 46
        Height = 13
        Caption = 'Tasa  IVA'
        FocusControl = dbeTasaIVA
      end
      object Label12: TLabel
        Left = 290
        Top = 238
        Width = 58
        Height = 13
        Caption = 'Tipo Interes'
      end
      object Label13: TLabel
        Left = 23
        Top = 316
        Width = 123
        Height = 13
        Caption = 'Formula Interes Ordinario'
        FocusControl = DBEdit11
        Visible = False
      end
      object Label14: TLabel
        Left = 23
        Top = 342
        Width = 125
        Height = 13
        Caption = 'Formula Interes Moratorio'
        FocusControl = DBEdit12
        Visible = False
      end
      object Label15: TLabel
        Left = 109
        Top = 401
        Width = 199
        Height = 13
        Caption = 'Frecuencia de Capitalizaci'#243'n de Inter'#233'ses'
        FocusControl = DBEdit13
      end
      object Label16: TLabel
        Left = 163
        Top = 437
        Width = 145
        Height = 13
        Caption = 'Frecuencia de pago de Capital'
        FocusControl = DBEdit14
      end
      object Label17: TLabel
        Left = 150
        Top = 468
        Width = 158
        Height = 13
        Caption = 'Frecuencia de Pago de Inter'#233'ses'
        FocusControl = DBEdit15
      end
      object Label19: TLabel
        Left = 45
        Top = 43
        Width = 47
        Height = 13
        Caption = 'Categor'#237'a'
      end
      object Label1: TLabel
        Left = 135
        Top = 364
        Width = 173
        Height = 13
        Caption = 'Periodicidad de C'#225'lculo de Inter'#233'ses'
        FocusControl = DBEdit13
      end
      object Label10: TLabel
        Left = 238
        Top = 194
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
        Left = 474
        Top = 196
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
        Top = 231
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
        Top = 267
        Width = 64
        Height = 26
        Alignment = taRightJustify
        Caption = 'Comision por Apertura'
        FocusControl = dbeComision
        WordWrap = True
      end
      object Label21: TLabel
        Left = 279
        Top = 269
        Width = 69
        Height = 26
        Alignment = taRightJustify
        Caption = 'Gastos de Administraci'#243'n'
        FocusControl = dbeGastos
        WordWrap = True
      end
      object Label22: TLabel
        Left = 474
        Top = 272
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
        Top = 268
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
      object DBEdit1: TDBEdit
        Left = 505
        Top = 55
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
        Top = 114
        Width = 367
        Height = 21
        CharCase = ecUpperCase
        DataField = 'prd_descripcion'
        DataSource = DataSource1
        TabOrder = 3
      end
      object dbminimo: TDBEdit
        Left = 102
        Top = 154
        Width = 134
        Height = 21
        DataField = 'prd_plazoMin'
        DataSource = DataSource1
        TabOrder = 4
      end
      object dbmaximo: TDBEdit
        Left = 354
        Top = 156
        Width = 115
        Height = 21
        DataField = 'prd_PlazoMax'
        DataSource = DataSource1
        TabOrder = 5
      end
      object dbeTasaO: TDBEdit
        Left = 102
        Top = 194
        Width = 134
        Height = 21
        DataField = 'prd_tord'
        DataSource = DataSource1
        TabOrder = 6
      end
      object dbeTasaM: TDBEdit
        Left = 354
        Top = 196
        Width = 116
        Height = 21
        DataField = 'prd_tmor'
        DataSource = DataSource1
        TabOrder = 7
      end
      object dbeTasaIVA: TDBEdit
        Left = 102
        Top = 233
        Width = 134
        Height = 21
        DataField = 'prd_tiva'
        DataSource = DataSource1
        TabOrder = 8
      end
      object DBEdit11: TDBEdit
        Left = 102
        Top = 309
        Width = 367
        Height = 21
        DataField = 'prd_frmIntOrd'
        DataSource = DataSource1
        TabOrder = 9
        Visible = False
      end
      object DBEdit12: TDBEdit
        Left = 102
        Top = 336
        Width = 367
        Height = 21
        DataField = 'prd_frmIntMor'
        DataSource = DataSource1
        TabOrder = 10
        Visible = False
      end
      object DBEdit13: TDBEdit
        Left = 33
        Top = 396
        Width = 134
        Height = 21
        DataField = 'prd_frecCapInt'
        DataSource = DataSource1
        TabOrder = 11
        Visible = False
      end
      object DBEdit14: TDBEdit
        Left = 33
        Top = 433
        Width = 134
        Height = 21
        DataField = 'prd_frecPagCap'
        DataSource = DataSource1
        TabOrder = 12
        Visible = False
      end
      object DBEdit15: TDBEdit
        Left = 33
        Top = 453
        Width = 134
        Height = 21
        DataField = 'prd_frecPagInt'
        DataSource = DataSource1
        TabOrder = 13
        Visible = False
      end
      object dblcksubprod: TDBLookupComboBox
        Left = 103
        Top = 39
        Width = 367
        Height = 21
        KeyField = 'sbp_id'
        ListField = 'sbp_descripcion'
        ListSource = dtssubprod
        TabOrder = 2
      end
      object cbxfreccapinteres: TComboBox
        Left = 321
        Top = 396
        Width = 145
        Height = 21
        TabOrder = 14
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
        Left = 321
        Top = 429
        Width = 145
        Height = 21
        TabOrder = 15
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
        Left = 321
        Top = 461
        Width = 145
        Height = 21
        TabOrder = 16
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
        Left = 321
        Top = 361
        Width = 145
        Height = 21
        TabOrder = 17
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
        Left = 33
        Top = 364
        Width = 134
        Height = 21
        DataField = 'prd_periodicidad'
        DataSource = DataSource1
        TabOrder = 18
        Visible = False
      end
      object dbeComision: TDBEdit
        Left = 102
        Top = 270
        Width = 134
        Height = 21
        DataField = 'prd_comision'
        DataSource = DataSource1
        TabOrder = 19
      end
      object dbeGastos: TDBEdit
        Left = 354
        Top = 272
        Width = 116
        Height = 21
        DataField = 'prd_gastos'
        DataSource = DataSource1
        TabOrder = 20
      end
      object dbTipoInteres: TDBComboBox
        Left = 354
        Top = 233
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
        TabOrder = 21
        OnChange = dbTipoInteresChange
      end
      object Panel1: TPanel
        Left = 422
        Top = 517
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
        TabOrder = 22
        OnClick = Panel1Click
        OnMouseLeave = pnlguardaMouseLeave
        OnMouseMove = pnlguardaMouseMove
      end
      object edserie: TEdit
        Left = 104
        Top = 74
        Width = 367
        Height = 21
        TabOrder = 23
        Text = 'Edit1'
      end
      object edIdSerie: TEdit
        Left = 505
        Top = 82
        Width = 121
        Height = 21
        TabOrder = 24
        Text = 'Edit2'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Docs. Solicitados'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Label24: TLabel
        Left = 24
        Top = 45
        Width = 133
        Height = 13
        Caption = 'Elige un tipo de documento:'
      end
      object Label25: TLabel
        Left = 56
        Top = 16
        Width = 421
        Height = 16
        Caption = 'Selecci'#243'n de documentos necesarios  para el producto financiero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 611
        Width = 546
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
        Top = 464
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
        OnMouseLeave = pnlguardaMouseLeave
        OnMouseMove = pnlguardaMouseMove
      end
      object dblcktipodoc: TDBLookupComboBox
        Left = 24
        Top = 64
        Width = 449
        Height = 21
        KeyField = 'tpd_id'
        ListField = 'tpd_descripcion'
        ListSource = dtsTipoDoc
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 24
        Top = 104
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
        Left = 479
        Top = 43
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
        OnMouseLeave = pnlguardaMouseLeave
        OnMouseMove = pnlguardaMouseMove
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = dm.dsProd
    Left = 232
    Top = 301
  end
  object dtssubprod: TDataSource
    DataSet = dm.dsSubProd
    Left = 304
    Top = 495
  end
  object dtsTipoDoc: TDataSource
    DataSet = dsTipo_Doc
    Left = 296
    Top = 84
  end
  object dsTipo_Doc: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select * from tipo_doc'
      'where tpd_estatus = 1'
      'order by tpd_descripcion')
    Params = <>
    Left = 264
    Top = 36
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
    Left = 424
    Top = 188
  end
  object dtsProd_TipoDoc: TDataSource
    DataSet = dsProd_TipoDoc
    Left = 424
    Top = 236
  end
  object dsSerie: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select * from serie'
      'order by ser_serie')
    Params = <>
    Left = 528
    Top = 116
  end
  object DataSource2: TDataSource
    Left = 512
    Top = 172
  end
end
