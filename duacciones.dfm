object Frmacciones: TFrmacciones
  Left = 0
  Top = 0
  Caption = 'Acciones'
  ClientHeight = 613
  ClientWidth = 985
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 985
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 24
      Top = 10
      Width = 139
      Height = 40
      Caption = 'Acciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -35
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Panel5: TPanel
      Left = 478
      Top = 0
      Width = 507
      Height = 73
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 0
      object pnlNuevo: TPanel
        Left = 304
        Top = 17
        Width = 177
        Height = 35
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Crear Rol'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = pnlNuevoClick
        OnMouseLeave = pnlNuevoMouseLeave
        OnMouseMove = pnlNuevoMouseMove
      end
      object Edit1: TEdit
        Left = 48
        Top = 27
        Width = 233
        Height = 21
        TabOrder = 1
        TextHint = 'Descripci'#243'n del rol'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 572
    Width = 985
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 985
    Height = 499
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 985
      Height = 251
      Margins.Bottom = 5
      Align = alTop
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = True
      DataSource = DataSource1
      DrawingStyle = gdsGradient
      GradientEndColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clTeal
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'rls_id'
          Title.Caption = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rls_dscripcion'
          Title.Caption = 'Descripci'#243'n'
          Width = 233
          Visible = True
        end>
    end
    object TreeView1: TTreeView
      Left = 0
      Top = 251
      Width = 985
      Height = 248
      Align = alClient
      Images = ImageList1
      Indent = 19
      ReadOnly = True
      TabOrder = 1
      OnClick = TreeView1Click
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 228
      Width = 113
      Height = 17
      Caption = 'Seleccionar todos'
      TabOrder = 2
      OnClick = CheckBox1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = dm.dsrol
    Left = 8
    Top = 120
  end
  object ImageList1: TImageList
    Left = 952
    Top = 328
    Bitmap = {
      494C010102001800600010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB000001DB000001DB000001DB000001DB000001DB000001DB000001DB000001
      DB000001DB000001DB000001DB000001DB0027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C5890027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB000001DB000001DB000001DB000001DB000001DB000001DB000001DB000001
      DB000001DB000001DB000001DB000001DB0027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C5890027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB000001DB000001DB000001DB000001DB000001DB000001DB000001DB000001
      DB000001DB000001DB000001DB000001DB0027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C5890027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB000304DB006567E8000001DB000001DB000001DB000001DB006365E900090A
      DC000001DB000001DB000001DB000001DB0027C5890027C5890027C5890027C5
      890027C5890027C5890040CC960027C5890027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000304
      DB009EA0EE00FDFEFC000305DC000001DB000001DB000102DB00FEFDFD00B7B8
      F300090ADC000001DB000001DB000001DB0027C5890027C5890027C5890027C5
      890027C5890027C58900F6FCFB0081DDBA0027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB00494B
      E500FCFCFC00FFFFFF00A4A6F1000304DC000001DB008B8DEE00FFFFFE00FDFE
      FC006365E8000001DB000001DB000001DB0027C5890027C5890027C5890027C5
      890027C5890065D5AB00FFFFFF00FDFEFE0081DDBA0027C5890027C5890027C5
      890027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB000001DB007375EA00FFFFFF00FEFFFE00FFFEFE00FFFFFE008B8DED000001
      DB000001DB000001DB000001DB000001DB0027C5890027C5890027C5890065D5
      AB00F8FDFB00FFFFFF00FEFFFF00FFFFFF00FFFFFF00FCFEFE0027C5890027C5
      890027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB000001DB000001DB00FEFEFE00FFFFFF00FFFFFF00FFFFFF000001DB000001
      DB000001DB000001DB000001DB000001DB0027C5890027C5890065D5AB00F8FD
      FB00FFFFFF00FEFFFF0054D1A100E0F7EE00FFFFFF00FFFFFF0081DDBA0027C5
      890027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB000001DB000001DB00FEFEFE00FFFFFF00FFFFFF00FFFFFF000304DC000001
      DB000001DB000001DB000001DB000001DB0027C5890027C58900BAEBDA00FFFF
      FF00FEFFFF00DBF5EB0027C589003DCB9500DDF6EC00FFFFFF00FCFEFE0081DD
      BA0027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB000001DB008A8DEE00FFFFFF00FEFEFD00FEFEFE00FFFFFF00A4A5F1000304
      DC000001DB000001DB000001DB000001DB0027C5890027C589002DC78C00BDED
      DB00DBF5EB003BCA940027C5890027C589003BCA9400DAF5EB00FFFFFF00FCFE
      FE0081DDBA0027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB00484A
      E500FEFEFD00FFFFFE008D8FED000001DB000001DB007477EA00FFFFFF00FEFE
      FD006467E9000001DB000001DB000001DB0027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C5890027C5890027C58900D3F3E700FFFF
      FF00FFFFFF00BAECD90027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB008486ED00FCFDFC000102DB000001DB000001DB000001DB00FCFCFD00A0A0
      F0000405DB000001DB000001DB000001DB0027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C5890027C5890027C5890034C99000CFF2
      E500BCEDDA002CC68C0027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB000001DB004A4BE5000001DB000001DB000001DB000001DB004B4CE5000405
      DB000001DB000001DB000001DB000001DB0027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C5890027C5890027C5890027C5890030C7
      8E002CC68C0027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB000001DB000001DB000001DB000001DB000001DB000001DB000001DB000001
      DB000001DB000001DB000001DB000001DB0027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C5890027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000809DB000001DB000001DB000001
      DB000001DB000001DB000001DB000001DB000001DB000001DB000001DB000001
      DB000001DB000001DB000001DB000001DB0027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C5890027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F10DC000708DC000708DC000708
      DC000708DC000708DC000708DC000707DC000708DC000708DC000708DC000707
      DC000506DC000203DB000203DB000203DB0027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C5890027C5890027C5890027C5890027C5
      890027C5890027C5890027C5890027C589000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end