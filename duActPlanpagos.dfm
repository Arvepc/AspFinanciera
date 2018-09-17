object frmactplanpagos: Tfrmactplanpagos
  Left = 0
  Top = 0
  Caption = 'Plan de Pagos'
  ClientHeight = 464
  ClientWidth = 511
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
  object Label2: TLabel
    Left = 69
    Top = 7
    Width = 29
    Height = 13
    Caption = 'Fecha'
  end
  object Label3: TLabel
    Left = 44
    Top = 30
    Width = 54
    Height = 13
    Caption = 'Descripci'#243'n'
  end
  object Label4: TLabel
    Left = 62
    Top = 88
    Width = 36
    Height = 13
    Caption = 'Estatus'
    Visible = False
  end
  object Label1: TLabel
    Left = 68
    Top = 65
    Width = 30
    Height = 13
    Caption = 'Monto'
  end
  object Panel2: TPanel
    Left = 0
    Top = 410
    Width = 511
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
    TabOrder = 4
    ExplicitLeft = 8
    ExplicitTop = 407
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
      TabOrder = 0
      OnClick = Panel3Click
    end
    object pnlguarda: TPanel
      Left = 365
      Top = 8
      Width = 121
      Height = 41
      Cursor = crHandPoint
      Caption = 'Registrar'
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
    end
  end
  object cbxestatus: TComboBox
    Left = 104
    Top = 85
    Width = 134
    Height = 21
    TabOrder = 3
    Visible = False
    Items.Strings = (
      'ACTIVO'
      'INACTIVO')
  end
  object dt1: TDateTimePicker
    Left = 104
    Top = 5
    Width = 134
    Height = 21
    Date = 43312.682638298610000000
    Time = 43312.682638298610000000
    TabOrder = 0
  end
  object eddescripcion: TEdit
    Left = 104
    Top = 32
    Width = 369
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object edid: TEdit
    Left = 320
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object edMonto: TEdit
    Left = 104
    Top = 62
    Width = 134
    Height = 21
    Alignment = taRightJustify
    TabOrder = 2
    Text = '0'
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 112
    Width = 487
    Height = 289
    Caption = 'Producto Financiero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object Label14: TLabel
      Left = 54
      Top = 26
      Width = 43
      Height = 13
      Caption = 'Producto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 55
      Width = 71
      Height = 33
      Alignment = taRightJustify
      Caption = 'Tasa Ordinaria Anual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label7: TLabel
      Left = 231
      Top = 56
      Width = 72
      Height = 26
      Alignment = taRightJustify
      Caption = 'Tasa Moratoria Anual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label8: TLabel
      Left = 41
      Top = 98
      Width = 46
      Height = 13
      Caption = 'Tasa  IVA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 104
      Top = 176
      Width = 199
      Height = 13
      Caption = 'Frecuencia de Capitalizaci'#243'n de Intereses'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 158
      Top = 253
      Width = 145
      Height = 13
      Caption = 'Frecuencia de pago de Capital'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 145
      Top = 212
      Width = 158
      Height = 13
      Caption = 'Frecuencia de Pago de Intereses'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 245
      Top = 97
      Width = 58
      Height = 13
      Caption = 'Tipo Interes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 246
      Top = 144
      Width = 57
      Height = 13
      Caption = 'Periodicidad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 62
      Top = 144
      Width = 25
      Height = 13
      Caption = 'Plazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dblckprod: TDBLookupComboBox
      Left = 103
      Top = 23
      Width = 367
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'prd_id'
      ListField = 'prd_descripcion'
      ListSource = dtsprod
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit15: TDBEdit
      Left = 49
      Top = 159
      Width = 33
      Height = 21
      DataField = 'prd_frecPagInt'
      DataSource = dtsprod
      ReadOnly = True
      TabOrder = 1
      Visible = False
    end
    object DBEdit14: TDBEdit
      Left = 49
      Top = 186
      Width = 33
      Height = 21
      DataField = 'prd_frecPagCap'
      DataSource = dtsprod
      ReadOnly = True
      TabOrder = 2
      Visible = False
    end
    object DBEdit13: TDBEdit
      Left = 49
      Top = 220
      Width = 33
      Height = 21
      DataField = 'prd_frecCapInt'
      DataSource = dtsprod
      ReadOnly = True
      TabOrder = 3
      Visible = False
    end
    object dbtiva: TDBEdit
      Left = 103
      Top = 95
      Width = 119
      Height = 21
      DataField = 'prd_tiva'
      DataSource = dtsprod
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object dbtord: TDBEdit
      Left = 103
      Top = 56
      Width = 119
      Height = 21
      DataField = 'prd_tord'
      DataSource = dtsprod
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object dbtmor: TDBEdit
      Left = 325
      Top = 56
      Width = 145
      Height = 21
      DataField = 'prd_tmor'
      DataSource = dtsprod
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object cbxfrecpagointeres: TComboBox
      Left = 325
      Top = 209
      Width = 145
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
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
    object cbxfreccapital: TComboBox
      Left = 325
      Top = 250
      Width = 145
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
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
    object cbxfreccapinteres: TComboBox
      Left = 325
      Top = 173
      Width = 145
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
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
    object cbxtipointeres: TComboBox
      Left = 325
      Top = 95
      Width = 145
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Items.Strings = (
        'INTERES COMPUESTO'
        'INTERES GLOBAL'
        'INTERES SIMPLE')
    end
    object cbxPeriodicidad: TComboBox
      Left = 325
      Top = 135
      Width = 145
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
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
    object DBEdit1: TDBEdit
      Left = 49
      Top = 247
      Width = 33
      Height = 21
      DataField = 'prd_periodicidad'
      DataSource = dtsprod
      ReadOnly = True
      TabOrder = 13
      Visible = False
    end
    object sePlazo: TSpinEdit
      Left = 104
      Top = 135
      Width = 118
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 8
      Value = 0
    end
  end
  object dtsprod: TDataSource
    DataSet = dm.dsProd
    OnDataChange = dtsprodDataChange
    Left = 256
    Top = 48
  end
  object DataSource1: TDataSource
    Left = 24
    Top = 56
  end
end
