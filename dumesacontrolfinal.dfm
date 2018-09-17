object frmmesacontrolfinal: Tfrmmesacontrolfinal
  Left = 0
  Top = 0
  Caption = 'Mesa de control final'
  ClientHeight = 513
  ClientWidth = 673
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 451
    Width = 673
    Height = 62
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    ExplicitWidth = 653
    object Panel3: TPanel
      Left = 16
      Top = 8
      Width = 121
      Height = 41
      Cursor = crHandPoint
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
    object Panel4: TPanel
      Left = 450
      Top = 1
      Width = 222
      Height = 60
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 430
      object pnlguarda: TPanel
        Left = 83
        Top = 5
        Width = 121
        Height = 41
        Caption = 'Aprobado'
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
    end
  end
  object pnlobservaciones: TPanel
    Left = 0
    Top = 256
    Width = 673
    Height = 195
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 653
    object btnupload: TSpeedButton
      Left = 553
      Top = 20
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
    object btnmuestraexp: TSpeedButton
      Left = 561
      Top = 28
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
    object mmcorreo: TMemo
      Left = 16
      Top = 168
      Width = 619
      Height = 17
      TabOrder = 0
      Visible = False
    end
    object dbgrdexpediente: TDBGrid
      Left = 16
      Top = 6
      Width = 619
      Height = 165
      DataSource = dtsexpediente
      DrawingStyle = gdsGradient
      GradientEndColor = 12616192
      GradientStartColor = 12616192
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = dbgrdexpedienteDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'sld_descripcion'
          Title.Caption = 'Documento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estatus'
          Title.Caption = 'Estatus'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Cargar '
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Mostrar'
          Width = 80
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 47
    Width = 673
    Height = 209
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 653
    object Label1: TLabel
      Left = 16
      Top = 97
      Width = 109
      Height = 13
      Caption = 'Observaciones Analisis'
    end
    object Label2: TLabel
      Left = 50
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label6: TLabel
      Left = 340
      Top = 47
      Width = 87
      Height = 13
      Caption = 'Fecha de Revisi'#243'n'
    end
    object Label3: TLabel
      Left = 48
      Top = 47
      Width = 62
      Height = 13
      Caption = 'Folio cr'#233'dito:'
    end
    object Label5: TLabel
      Left = 359
      Top = 75
      Width = 82
      Height = 13
      Caption = 'Fecha de Analisis'
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 116
      Width = 617
      Height = 83
      DataField = 'sol_observaAnalisis'
      DataSource = dtssolicitud
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 456
      Top = 43
      Width = 177
      Height = 21
      DataField = 'sol_fecrev'
      DataSource = dtssolicitud
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 116
      Top = 13
      Width = 186
      Height = 21
      DataField = 'sol_clinombre'
      DataSource = dtssolicitud
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 116
      Top = 43
      Width = 186
      Height = 21
      DataField = 'sol_folcred'
      DataSource = dtssolicitud
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 455
      Top = 72
      Width = 177
      Height = 21
      DataField = 'sol_FecAnalisis'
      DataSource = dtssolicitud
      TabOrder = 4
    end
  end
  object edid: TEdit
    Left = 356
    Top = 8
    Width = 186
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object wb1: TWebBrowser
    Left = 447
    Top = 11
    Width = 100
    Height = 435
    TabOrder = 5
    ControlData = {
      4C000000021F0000810F00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object pnltitulo: TPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 47
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 256
    ExplicitTop = 35
    ExplicitWidth = 329
    ExplicitHeight = 41
    object Image4: TImage
      Left = 311
      Top = 9
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Picture.Data = {
        07544269746D617026090000424D260900000000000036000000280000001D00
        00001A0000000100180000000000F00800000000000000000000000000000000
        0000FDF9F6F3D783906028906028906028906028906028906028906028906028
        9060289060289060289060289060289060289060289060289060289060289060
        28906028906028906028906028906028906028F3DB8EFCFBFA00F8E1A3906028
        9060289060289060289060289060289060289060289060289060289060289060
        2890602890602890602890602890602890602890602890602890602890602890
        6028906028906028906028906028F9E6B300FAD6859060289060289060289060
        2890602890602890602890602890602890602890602890602890602890602890
        6028906028906028906028906028906028906028906028906028906028906028
        906028906028FBDD9900FAD68590602890602890602890602890602890602890
        6028906028906028906028906028906028906028906028906028906028906028
        906028906028906028906028906028906028906028906028906028906028FADB
        9600FAD685906028906028906028906028906028906028906028906028906028
        9060289060289060289060289060289060289060289060289060289060289060
        28906028906028906028906028906028906028906028FADB9600FAD685906028
        9060289060289060289060289060289060289060289060289060289060289060
        2890602890602890602890602890602890602890602890602890602890602890
        6028906028906028906028906028FADB9600FAD6859060289060289060289060
        2890602890602890602890602890602890602890602890602890602890602890
        6028906028906028906028906028906028906028906028906028906028906028
        906028906028F6D99800FAD68590602890602890602890602890602890602890
        6028906028906028906028906028906028906028906028906028906028906028
        906028906028906028906028906028906028906028906028906028906028FADB
        9600FAD685906028906028906028906028906028906028906028906028906028
        906028906028906028906028906028906028906028906028F9D681F3C2699060
        28906028906028906028906028906028906028906028FADB9600FAD685906028
        9060289060289060289060289060289060289060289060289060289060289060
        28906028906028906028906028FDF0B3FCFBF7E9CBAC90602890602890602890
        6028906028906028906028906028FADB9600FAD6859060289060289060289060
        28906028906028906028906028906028906028906028FEF4DAFEFDFAFEFCFCF9
        E9D9FDEDCAFDFCFDF8E0D0906028906028906028906028906028906028906028
        906028906028FADB9600FAD68590602890602890602890602890602890602890
        6028906028906028906028FEFCF5FAEFE2906028906028FEF7E9FEFDFDF7E7E2
        906028906028906028906028906028906028906028906028906028906028FADB
        9600FAD685906028906028906028906028906028906028906028906028906028
        FEF8DCF9F1EB906028906028906028906028FEFAE2FAEDF29060289060289060
        28906028906028906028906028906028906028906028FADB9600FAD685906028
        906028906028906028906028906028906028906028906028FEFBF19060289060
        28906028906028906028906028FEFCF590602890602890602890602890602890
        6028906028906028906028906028FADB9600FAD6859060289060289060289060
        28906028906028906028906028906028FEFCF290602890602890602890602890
        6028906028FDF9FD906028906028906028906028906028906028906028906028
        906028906028FADB9600FAD68590602890602890602890602890602890602890
        6028906028906028FEFAE7F7E8DE906028906028906028906028FEF6D2FBF4FC
        906028906028906028906028906028906028906028906028906028906028FADB
        9600F4D387906028906028906028906028906028906028906028906028906028
        906028FDFCFBF7E4CE906028906028FEF2D9FBF9F89060289060289060289060
        28906028906028906028906028906028906028906028FADB9600FAD685906028
        906028906028906028906028906028906028906028906028906028906028FEFB
        F0FEFDFDFEFDFDFCF4EC90602890602890602890602890602890602890602890
        6028906028906028906028906028FADB9600FAD6859060289060289060289060
        2890602890602890602890602890602890602890602890602890602890602890
        6028906028906028906028906028906028906028906028906028906028906028
        906028906028FADB9600F4D38790602890602890602890602890602890602890
        6028906028906028906028906028906028906028906028906028906028906028
        906028906028906028906028906028906028906028906028906028906028FADB
        9600FAD685906028906028906028906028906028906028906028906028906028
        9060289060289060289060289060289060289060289060289060289060289060
        28906028906028906028906028906028906028906028FADB9600FAD685906028
        9060289060289060289060289060289060289060289060289060289060289060
        2890602890602890602890602890602890602890602890602890602890602890
        6028906028906028906028906028FADB9600F3D2879060289060289060289060
        2890602890602890602890602890602890602890602890602890602890602890
        6028906028906028906028906028906028906028906028906028906028906028
        906028906028FADB9600FAD58590602890602890602890602890602890602890
        6028906028906028906028906028906028906028906028906028906028906028
        906028906028906028906028906028906028906028906028906028906028FADD
        9900F8DFA1906028906028906028906028906028906028906028906028906028
        9060289060289060289060289060289060289060289060289060289060289060
        28906028906028906028906028906028906028906028F9E5B100FCFAF8F2D67E
        9060289060289060289060289060289060289060289060289060289060289060
        2890602890602890602890602890602890602890602890602890602890602890
        6028906028906028906028906028FEFDF600}
    end
    object Label4: TLabel
      Left = 16
      Top = 16
      Width = 94
      Height = 13
      Caption = 'Folio de la Solicitud:'
    end
    object edfolio: TEdit
      Left = 116
      Top = 13
      Width = 186
      Height = 21
      TabOrder = 0
      OnKeyPress = edfolioKeyPress
    end
  end
  object dssolicitud: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      'select * from solicitudes where sol_id = 0')
    Params = <>
    Left = 160
    Top = 153
    object dssolicitudsol_id: TIntegerField
      FieldName = 'sol_id'
      Required = True
    end
    object dssolicitudsol_folio: TIntegerField
      FieldName = 'sol_folio'
      Required = True
    end
    object dssolicitudsol_fecha: TDateField
      FieldName = 'sol_fecha'
      Required = True
    end
    object dssolicitudsol_fecaproba: TDateField
      FieldName = 'sol_fecaproba'
      Required = True
    end
    object dssolicitudsol_monto: TFloatField
      FieldName = 'sol_monto'
      Required = True
    end
    object dssolicitudsol_montoaut: TFloatField
      FieldName = 'sol_montoaut'
      Required = True
    end
    object dssolicitudsol_plazo: TFloatField
      FieldName = 'sol_plazo'
      Required = True
    end
    object dssolicitudpp_fk: TIntegerField
      FieldName = 'pp_fk'
      Required = True
    end
    object dssolicitudsol_destino: TWideStringField
      FieldName = 'sol_destino'
      Required = True
      Size = 250
    end
    object dssolicitudsol_tasaord: TFloatField
      FieldName = 'sol_tasaord'
      Required = True
    end
    object dssolicitudsol_tasamor: TFloatField
      FieldName = 'sol_tasamor'
      Required = True
    end
    object dssolicitudsol_periodicidad: TFloatField
      FieldName = 'sol_periodicidad'
      Required = True
    end
    object dssolicitudsol_iva: TFloatField
      FieldName = 'sol_iva'
      Required = True
    end
    object dssolicitudsol_freccapint: TFloatField
      FieldName = 'sol_freccapint'
      Required = True
    end
    object dssolicitudsol_frecpagcap: TFloatField
      FieldName = 'sol_frecpagcap'
      Required = True
    end
    object dssolicitudsol_frecpagint: TFloatField
      FieldName = 'sol_frecpagint'
      Required = True
    end
    object dssolicitudsol_prodseg: TWideStringField
      FieldName = 'sol_prodseg'
      Required = True
      Size = 10
    end
    object dssolicitudsol_producto: TWideStringField
      FieldName = 'sol_producto'
      Required = True
      Size = 100
    end
    object dssolicitudsol_clinombre: TWideStringField
      FieldName = 'sol_clinombre'
      Required = True
      Size = 200
    end
    object dssolicitudsol_clirfc: TWideStringField
      FieldName = 'sol_clirfc'
      Required = True
      Size = 13
    end
    object dssolicitudsol_clicalle: TWideStringField
      FieldName = 'sol_clicalle'
      Required = True
      Size = 200
    end
    object dssolicitudsol_clinoint: TWideStringField
      FieldName = 'sol_clinoint'
      Required = True
    end
    object dssolicitudsol_clinoext: TWideStringField
      FieldName = 'sol_clinoext'
      Required = True
    end
    object dssolicitudsol_clicol: TWideStringField
      FieldName = 'sol_clicol'
      Required = True
      Size = 100
    end
    object dssolicitudsol_clicp: TIntegerField
      FieldName = 'sol_clicp'
      Required = True
    end
    object dssolicitudsol_cliant: TWideStringField
      FieldName = 'sol_cliant'
      Required = True
      Size = 50
    end
    object dssolicitudsol_clitel1: TWideStringField
      FieldName = 'sol_clitel1'
      Required = True
      Size = 10
    end
    object dssolicitudsol_clitel2: TWideStringField
      FieldName = 'sol_clitel2'
      Required = True
      Size = 10
    end
    object dssolicitudsol_clitel3: TWideStringField
      FieldName = 'sol_clitel3'
      Required = True
      Size = 10
    end
    object dssolicitudsol_clitel4: TWideStringField
      FieldName = 'sol_clitel4'
      Required = True
      Size = 10
    end
    object dssolicitudsol_cliemail: TWideStringField
      FieldName = 'sol_cliemail'
      Required = True
      Size = 100
    end
    object dssolicitudsol_clinac: TWideStringField
      FieldName = 'sol_clinac'
      Required = True
      Size = 50
    end
    object dssolicitudsol_clireg: TWideStringField
      FieldName = 'sol_clireg'
      Required = True
      Size = 100
    end
    object dssolicitudsol_comision: TFloatField
      FieldName = 'sol_comision'
      Required = True
    end
    object dssolicitudsol_gastos: TFloatField
      FieldName = 'sol_gastos'
      Required = True
    end
    object dssolicitudusr_fk: TIntegerField
      FieldName = 'usr_fk'
      Required = True
    end
    object dssolicitudsol_fecrev: TDateField
      FieldName = 'sol_fecrev'
    end
    object dssolicitudsol_observarev: TWideStringField
      FieldName = 'sol_observarev'
      Size = 5000
    end
    object dssolicitudsol_estatus: TWideStringField
      FieldName = 'sol_estatus'
      Required = True
      Size = 21
    end
    object dssolicitudsol_FecRec: TDateTimeField
      FieldName = 'sol_FecRec'
      Required = True
    end
    object dssolicitudsol_observaRec: TWideStringField
      FieldName = 'sol_observaRec'
      Required = True
      Size = 1000
    end
    object dssolicitudsol_FecAnalisis: TDateTimeField
      FieldName = 'sol_FecAnalisis'
      Required = True
    end
    object dssolicitudsol_observaAnalisis: TWideStringField
      FieldName = 'sol_observaAnalisis'
      Required = True
      Size = 1000
    end
    object dssolicitudsol_folcred: TIntegerField
      FieldName = 'sol_folcred'
      Required = True
    end
    object dssolicitudsol_seriecred: TWideStringField
      FieldName = 'sol_seriecred'
      Required = True
      Size = 50
    end
    object dssolicitudfrmpago_fk: TIntegerField
      FieldName = 'frmpago_fk'
      Required = True
    end
    object dssolicitudctadestino_fk: TIntegerField
      FieldName = 'ctadestino_fk'
      Required = True
    end
  end
  object dtssolicitud: TDataSource
    DataSet = dssolicitud
    Left = 240
    Top = 201
  end
  object IdSMTP: TIdSMTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL
    Host = 'smtp.gmail.com'
    Port = 465
    SASLMechanisms = <>
    UseTLS = utUseImplicitTLS
    Left = 48
    Top = 384
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
    Top = 328
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
    Top = 352
  end
  object dsexpediente: TZQuery
    Connection = dm.ZConnection1
    SQL.Strings = (
      
        'select sld_id, sol_fk, sld_descripcion, sld_documento, sld_estat' +
        'us,'
      'case sld_estatus '
      'when 0 then '#39'POR ENTREGAR'#39' else '#39'ENTREGADO'#39' end as estatus'
      'from sol_doc')
    Params = <>
    Left = 257
    Top = 336
    object dsexpedientesld_id: TIntegerField
      FieldName = 'sld_id'
      Required = True
    end
    object dsexpedientesol_fk: TIntegerField
      FieldName = 'sol_fk'
      Required = True
    end
    object dsexpedientesld_descripcion: TWideStringField
      FieldName = 'sld_descripcion'
      Required = True
      Size = 50
    end
    object dsexpedientesld_documento: TBlobField
      FieldName = 'sld_documento'
    end
    object dsexpedientesld_estatus: TSmallintField
      FieldName = 'sld_estatus'
    end
    object dsexpedienteestatus: TWideStringField
      FieldName = 'estatus'
      ReadOnly = True
      Size = 12
    end
  end
  object dtsexpediente: TDataSource
    DataSet = dsexpediente
    Left = 408
    Top = 288
  end
  object od1: TOpenDialog
    Left = 569
    Top = 9
  end
end
