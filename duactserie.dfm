object frmactserie: Tfrmactserie
  Left = 0
  Top = 0
  Caption = 'Agregar serie'
  ClientHeight = 334
  ClientWidth = 369
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
  object Label2: TLabel
    Left = 32
    Top = 32
    Width = 28
    Height = 13
    Caption = 'Serie:'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 32
    Top = 88
    Width = 58
    Height = 13
    Caption = 'Descripci'#243'n:'
  end
  object Label4: TLabel
    Left = 208
    Top = 32
    Width = 26
    Height = 13
    Caption = 'Folio:'
    FocusControl = DBEdit4
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 48
    Width = 134
    Height = 21
    DataField = 'ser_serie'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit4: TDBEdit
    Left = 208
    Top = 48
    Width = 134
    Height = 21
    DataField = 'ser_folio'
    DataSource = DataSource1
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 32
    Top = 107
    Width = 310
    Height = 150
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 391
    Top = 48
    Width = 134
    Height = 21
    DataField = 'ser_id'
    DataSource = DataSource1
    TabOrder = 3
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 280
    Width = 369
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
    object pnlguarda: TPanel
      Left = 236
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
    end
  end
  object DataSource1: TDataSource
  end
end
