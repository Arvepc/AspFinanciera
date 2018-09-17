object frmactdispercion: Tfrmactdispercion
  Left = 0
  Top = 0
  Caption = 'DISER'
  ClientHeight = 748
  ClientWidth = 969
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 969
    Height = 360
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label9: TLabel
      Left = 173
      Top = 21
      Width = 100
      Height = 13
      Caption = 'Fecha de Disperci'#243'n:'
    end
    object GroupBox1: TGroupBox
      Left = 24
      Top = 48
      Width = 441
      Height = 289
      Caption = 'Datos del Cr'#233'dito'
      TabOrder = 0
      object Label1: TLabel
        Left = 52
        Top = 32
        Width = 62
        Height = 13
        Caption = 'Folio cr'#233'dito:'
      end
      object Label2: TLabel
        Left = 86
        Top = 64
        Width = 28
        Height = 13
        Caption = 'Serie:'
      end
      object Label3: TLabel
        Left = 58
        Top = 96
        Width = 56
        Height = 13
        Caption = 'Acreditado:'
      end
      object Label4: TLabel
        Left = 38
        Top = 125
        Width = 76
        Height = 13
        Caption = 'Forma de pago:'
      end
      object Label5: TLabel
        Left = 43
        Top = 160
        Width = 71
        Height = 13
        Caption = 'Banco destino:'
      end
      object Label6: TLabel
        Left = 37
        Top = 192
        Width = 77
        Height = 13
        Caption = 'Cuenta destino:'
      end
      object Label7: TLabel
        Left = 41
        Top = 224
        Width = 73
        Height = 13
        Caption = 'CLABE destino:'
      end
      object Label8: TLabel
        Left = 27
        Top = 257
        Width = 87
        Height = 13
        Caption = 'Monto del cr'#233'dito:'
      end
      object DBEdit1: TDBEdit
        Left = 120
        Top = 29
        Width = 105
        Height = 21
        DataField = 'sol_folcred'
        DataSource = dtsdatos
        Enabled = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 120
        Top = 61
        Width = 105
        Height = 21
        DataField = 'sol_seriecred'
        DataSource = dtsdatos
        Enabled = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 120
        Top = 93
        Width = 222
        Height = 21
        DataField = 'sol_clinombre'
        DataSource = dtsdatos
        Enabled = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 120
        Top = 157
        Width = 222
        Height = 21
        DataField = 'bnc_nombrecorto'
        DataSource = dtsbancos
        Enabled = False
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 120
        Top = 189
        Width = 222
        Height = 21
        DataField = 'ctb_cuenta'
        DataSource = dtsctabanco
        Enabled = False
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 120
        Top = 221
        Width = 222
        Height = 21
        DataField = 'ctb_clabe'
        DataSource = dtsctabanco
        Enabled = False
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 120
        Top = 253
        Width = 222
        Height = 21
        DataField = 'sol_montoaut'
        DataSource = dtsdatos
        Enabled = False
        TabOrder = 6
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 120
        Top = 125
        Width = 222
        Height = 21
        Enabled = False
        KeyField = 'FPAG_CLAVE'
        ListField = 'FPAG_DESCRIPCION'
        ListSource = dtsfrmpago
        TabOrder = 7
      end
    end
    object FechaPago: TDateTimePicker
      Left = 279
      Top = 15
      Width = 186
      Height = 21
      Date = 43353.524281574070000000
      Time = 43353.524281574070000000
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 360
    Width = 969
    Height = 334
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 8
      Top = 6
      Width = 961
      Height = 346
      Caption = 'Datos del Pago'
      TabOrder = 0
      object Label10: TLabel
        Left = 408
        Top = 0
        Width = 91
        Height = 13
        Caption = 'Evidencia de pago:'
      end
      object Label11: TLabel
        Left = 42
        Top = 25
        Width = 73
        Height = 13
        Caption = 'Monto Pagado:'
      end
      object Label12: TLabel
        Left = 39
        Top = 57
        Width = 76
        Height = 13
        Caption = 'Forma de pago:'
      end
      object Label13: TLabel
        Left = 49
        Top = 89
        Width = 66
        Height = 13
        Caption = 'Banco origen:'
      end
      object Label14: TLabel
        Left = 43
        Top = 121
        Width = 72
        Height = 13
        Caption = 'Cuenta origen:'
      end
      object Label15: TLabel
        Left = 47
        Top = 153
        Width = 68
        Height = 13
        Caption = 'CLABE origen:'
      end
      object Label16: TLabel
        Left = 74
        Top = 185
        Width = 41
        Height = 13
        Caption = 'Cheque:'
      end
      object Label17: TLabel
        Left = 44
        Top = 216
        Width = 75
        Height = 13
        Caption = 'Observaciones:'
      end
      object btnmuestraexp: TSpeedButton
        Left = 897
        Top = -30
        Width = 64
        Height = 29
        Glyph.Data = {
          36030000424D360300000000000036000000280000000F000000100000000100
          1800000000000003000000000000000000000000000000000000E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DCDBDA8D8D
          8CB5B3B3E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1858A8E36587F3E5878E1E1E1000000E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1ADAEAE3B5A80325B
          844B637EE1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1CBCBCA435E7D3760883B5576D5D8DAE1E1E1000000E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E8E7E63F5D7F365A833B5678C5C6
          CAE1E1E1E1E1E1000000E1E1E1E1E1E1EBEAE9C0C0BFA4A5A5A1A2A1A5A5A6B6
          B7B77183934A6787365576BDBFC3E1E1E1E1E1E1E1E1E1000000E1E1E1E1E0DF
          9E9E9E8F8F8EC6C4C0D7D6D4CFCECDACA8A67D7F819698A0ABB1BAE1E1E1E1E1
          E1E1E1E1E1E1E1000000EAE9E89E9F9FA09D99FAF5E6FCF9EFFCF8F2FCF9F2FC
          F8F2D2C9C8979798ECEBEAE1E1E1E1E1E1E1E1E1E1E1E1000000C3C3C3979695
          FAE8CFFCF0E3FCF1E8FCF1E8FBF2E9FBF3E8FDECE5B8B2B0BFBFBEE1E1E1E1E1
          E1E1E1E1E1E1E10000009F9FA0C5B4A2FCE9D2FCEFE3FCF1E4FCEFE3FCEFE4FC
          F1E5FCEFE2E1CCC4A7A7A7E1E1E1E1E1E1E1E1E1E1E1E10000009B9C9DDDBD98
          FCE8D1FDEDDEFCEEDFFCEEE0FCEFE0FCEFE1FCF0E1EED4C6A5A5A5E1E1E1E1E1
          E1E1E1E1E1E1E1000000A1A0A2CDB092FDE2C3FCE8D2FCE5CFFCE7D2FCE8D3FC
          EAD6FDEAD5E2CBBAA09FA0E1E1E1E1E1E1E1E1E1E1E1E1000000B8B8B8B1A497
          F1CCA2FEF4E2FDECDBFDEBDAFDECDBFDF0E0FBE6D0CAB9A9B1B3B2E1E1E1E1E1
          E1E1E1E1E1E1E1000000E0DEDE9C9C9BD7B897E9CDADF5E4D1F8E9D7FAEBDAF3
          DDC6DFC2A8A49E96D2D2D1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1BEBFBE
          9C9A98CABBAEDBC5AFDFC1A2DDC9B2D3BFAAACA095AEAFAFE1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1000000E1E1E1E1E1E1DDDBDBBBB9B9A4A3A1A5A29FA4A2A0B7
          B6B6D5D5D4E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000}
        OnClick = btnmuestraexpClick
      end
      object btnupload: TSpeedButton
        Left = 835
        Top = -30
        Width = 64
        Height = 29
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000017000000180000000100
          180000000000C006000000000000000000000000000000000000E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1D9DEB8D4D9AED4D9AED4D9
          AED6DBB2E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E100
          0000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E19CA83D
          909D23909D23909D2394A12CE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E18D9A1E7F8E007F8E007F8E0084930AE1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1DADFB7D6DCB0D6DCB0D6DCB0D8DDB3E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E6E9CEE3E7CAE3E7CAE3E7
          CAE4E8CCE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E100
          0000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E18D9A1E
          7F8E007F8E007F8E0084930AE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1919E26839209839209839209899613E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1CED4A3C7CE96C7CE96C7CE96C9D09BE1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E3E6CDE1E4C6E1E4C6E1E4
          C6E2E5C8E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E100
          0000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E18D9A1E
          8795008896008896008D9A0AE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E18D9A1E8795008896008896008D9A0AE1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1EFF1
          E2E6E9D6E6E9D6E6E9D6C6CD968F9D1B8795008896008896008C9A09DFE3C8E6
          E9D6E6E9D6E6E9D6EFF1E6E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1
          E1E1E1E1E1E1DFE3C4AFB869A0AB48A0AB489BA7358C990A8896008896008896
          00899703A0AB48A0AB48A0AB48B2BB6DE9ECD8E1E1E1E1E1E1E1E1E1E1E1E100
          0000E1E1E1E1E1E1E1E1E1E1E1E1F4F5EABBC37A8B9811859300879500889600
          8896008896008896008896008593008492008C9A1DC9CF9BE1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1EFF0E1ACB65388
          9600889600889600889600889600889600889600879500899712BFC684E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E9EBD0A5AF3E88960088960088960088960088960088960085940AB6
          BF75E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E4E8C999A5328694008896008896008896
          00899702A3AE49E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E100
          0000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1D9DDBE909D24
          8795008896008896008D9A0BE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1C4CB918795118795007F8E00EFF1DDE1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1B0B964879510D1D6B3E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1D9DDC1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E100
          0000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
          E1E1E1E1E1E1E1000000808E0082910082910082910082910082910082910082
          9100829100829100829100829100829100829100829100829100829100829100
          829100829100829100808F0081900000000095A12D99A52D99A52D99A52D99A5
          2D99A52D99A52D99A52D99A52D99A52D99A52D99A52D99A52D99A52D99A52D99
          A52D99A52D99A52D99A52D99A52D99A52D96A32D97A42D000000}
        OnClick = btnuploadClick
      end
      object DBGrid1: TDBGrid
        Left = 408
        Top = 55
        Width = 475
        Height = 166
        DataSource = dtssoldoc
        DrawingStyle = gdsGradient
        GradientEndColor = 12616192
        GradientStartColor = 12616192
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'sld_descripcion'
            Title.Caption = 'Documento'
            Title.Color = clWindow
            Width = 203
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estatus'
            Title.Caption = 'Estatus'
            Width = 98
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            Title.Caption = 'Cargar'
            Title.Color = clWindow
            Width = 68
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            Title.Caption = 'Mostrar'
            Width = 67
            Visible = True
          end>
      end
      object Edit1: TEdit
        Left = 408
        Top = 28
        Width = 230
        Height = 21
        TabOrder = 1
        TextHint = 'Ingrese el nombre del documento'
      end
      object Edit2: TEdit
        Left = 121
        Top = 22
        Width = 222
        Height = 21
        TabOrder = 2
        OnKeyPress = Edit2KeyPress
      end
      object Edit5: TEdit
        Left = 121
        Top = 118
        Width = 222
        Height = 21
        TabOrder = 3
      end
      object Edit6: TEdit
        Left = 121
        Top = 150
        Width = 222
        Height = 21
        TabOrder = 4
      end
      object Edit7: TEdit
        Left = 121
        Top = 182
        Width = 222
        Height = 21
        TabOrder = 5
      end
      object Memo1: TMemo
        Left = 121
        Top = 209
        Width = 222
        Height = 104
        TabOrder = 6
      end
    end
    object ComboBox1: TComboBox
      Left = 129
      Top = 55
      Width = 222
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'CHEQUE NOMINATIVO'
      OnChange = ComboBox1Change
      Items.Strings = (
        'CHEQUE NOMINATIVO'
        'TRANSFERENCIA ELECTRONICA DE FONDOS')
    end
    object DBComboBanco: TDBLookupComboBox
      Left = 129
      Top = 88
      Width = 222
      Height = 21
      KeyField = 'bnc_id'
      ListField = 'bnc_nombrecorto'
      ListSource = dtsbancos2
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 694
    Width = 969
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
    TabOrder = 2
    object pnlguarda: TPanel
      Left = 825
      Top = 6
      Width = 121
      Height = 41
      Caption = 'Aceptar'
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
    end
    object Panel4: TPanel
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
      OnClick = Panel4Click
    end
    object Panel5: TPanel
      Left = 423
      Top = 6
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
      TabOrder = 2
      Visible = False
      OnClick = Panel5Click
    end
  end
  object wb1: TWebBrowser
    Left = 501
    Top = 48
    Width = 300
    Height = 150
    TabOrder = 3
    ControlData = {
      4C000000021F0000810F00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object dsdatos: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select * from solicitudes')
    Params = <>
    Left = 536
    Top = 16
  end
  object dtsdatos: TDataSource
    DataSet = dsdatos
    Left = 608
    Top = 16
  end
  object dsFormaDePago: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'SELECT * FROM frmpago')
    Params = <>
    Left = 536
    Top = 72
  end
  object dtsfrmpago: TDataSource
    DataSet = dsFormaDePago
    Left = 608
    Top = 72
  end
  object dsctabanco: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'SELECT * FROM ctabanco')
    Params = <>
    Left = 536
    Top = 136
  end
  object dtsctabanco: TDataSource
    DataSet = dsctabanco
    Left = 608
    Top = 136
  end
  object dsbancos: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'SELECT * FROM bancos')
    Params = <>
    Left = 536
    Top = 200
  end
  object dtsbancos: TDataSource
    DataSet = dsbancos
    Left = 608
    Top = 200
  end
  object dssoldoc: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      
        'select sld_id, sol_fk, sld_descripcion, sld_documento, sld_estat' +
        'us,'
      'case sld_estatus '
      'when 0 then '#39'POR ENTREGAR'#39' else '#39'ENTREGADO'#39' end as estatus'
      'from sol_doc')
    Params = <>
    Left = 536
    Top = 264
    object dssoldocsld_id: TIntegerField
      FieldName = 'sld_id'
      Required = True
    end
    object dssoldocsol_fk: TIntegerField
      FieldName = 'sol_fk'
      Required = True
    end
    object dssoldocsld_descripcion: TWideStringField
      FieldName = 'sld_descripcion'
      Required = True
      Size = 50
    end
    object dssoldocsld_documento: TBlobField
      FieldName = 'sld_documento'
    end
    object dssoldocsld_estatus: TSmallintField
      FieldName = 'sld_estatus'
    end
    object dssoldocestatus: TWideStringField
      FieldName = 'estatus'
      ReadOnly = True
      Size = 12
    end
  end
  object dtssoldoc: TDataSource
    DataSet = dssoldoc
    Left = 608
    Top = 264
  end
  object AbrirDoc: TOpenDialog
    Filter = 'Pdf|*.pdf'
    Left = 912
    Top = 416
  end
  object dtsbancos2: TDataSource
    DataSet = dm.dsBancos
    Left = 672
    Top = 200
  end
end
