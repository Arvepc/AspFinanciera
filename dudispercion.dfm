object frmdispercion: Tfrmdispercion
  Left = 0
  Top = 0
  Caption = 'Disperci'#243'n de Pagos'
  ClientHeight = 651
  ClientWidth = 1075
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1075
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 24
      Top = 10
      Width = 311
      Height = 40
      Caption = 'Disperci'#243'n de pagos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -35
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnelimina: TSpeedButton
      Left = 521
      Top = -20
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
    object btnmodifica: TSpeedButton
      Left = 697
      Top = -50
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
    object btnmuestra: TSpeedButton
      Left = 575
      Top = -20
      Width = 48
      Height = 23
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1DCDBDA8D8D
        8CB5B3B3E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1858A8E36587F3E5878E1E1E1000000E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1ADAEAE3B5A80325B
        844B637EE1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1CBCBCA435E7D3760883B5576D5D8DAE1E1E1000000E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E8E7E63F5D7F365A833B5678C5C6
        CAE1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1C0C0BFA4A5A5A1A2A1A5A5A6B6
        B7B77183934A6787365576BDBFC3E1E1E1E1E1E1E1E1E1000000E1E1E1E1E0DF
        9E9E9E8F8F8EC6C4C0D7D6D4CFCECDACA8A67D7F819698A0ABB1BAE1E1E1E1E1
        E1E1E1E1E1E1E1000000E1E1E19E9F9FA09D99FAF5E6FCF9EFFCF8F2FCF9F2FC
        F8F2D2C9C8979798E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000C3C3C3979695
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
    end
    object SpeedButton1: TSpeedButton
      Left = 467
      Top = -20
      Width = 48
      Height = 23
      Glyph.Data = {
        6E040000424D6E04000000000000360000002800000013000000120000000100
        1800000000003804000000000000000000000000000000000000E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1BDD7C7E1EAE5E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1569D732C8853AACBB8DEE8E3E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E15DA179
        328A562E8752288650A6C9B4DDE8E2E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E160A37C3189552E87522E
        87522E87522B8752A5C9B3DDE8E2E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E13089552E8752318A56449365328A
        562D87522C8752A1C7B0DCE8E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E100
        0000E1E1E1E1E1E166A6802F88542E875230895586B79AB1CEBD519C71338B58
        2E87522C87529FC6AEDCE8E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1
        E167A7812F88542E87522F895583B597EAEFECE1E1E1B9D4C5539C72358B592E
        87522D87539EC5ADDCE8E1E1E1E1E1E1E1E1E1E1E1E1E1000000C6DCCF49976B
        2E88532E88547EB496EAF0EDE1E1E1E1E1E1E1E1E1B5D3C3549D72358B592E87
        522E88539BC3AADCE8E0E1E1E1E1E1E1E1E1E1000000E1E1E1AED0BD4596687F
        B597EBF0EDE1E1E1E1E1E1E1E1E1E1E1E1E1E1E1B3D2C1549D72368B592E8752
        2E88549AC2AADBE8E0E1E1E1E1E1E1000000E1E1E1E1E1E1C4DACCF0F3F1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1B2D2C1549D72368B592E87522E
        885495C0A7DBE8E0E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1B4D3C3559D73358B592D87512F8A
        56B1CFBEE1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1B8D4C4529C71368C5B63A67FDCE9E2
        E1E1E1000000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1BCD5C67FB595DEE9E3E1E1E1E1E1E100
        0000E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1
        E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1000000}
      Visible = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 697
      Top = -20
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
    object imgcheck: TImage
      Left = 408
      Top = -20
      Width = 17
      Height = 17
      Picture.Data = {
        07544269746D6170AA030000424DAA0300000000000036000000280000001100
        000011000000010018000000000074030000C40E0000C40E0000000000000000
        0000797979525252565656565656545454565656565656545454595959585858
        5858585959595858585858585959595858587B7B7B00565656E2E2E2DFDFDFE0
        E0E0E0E0E0DFDFDFE0E0E0E0E0E0DFDFDFE3E3E3E0E0E0E3E3E3E3E3E3E0E0E0
        E3E3E3E3E3E358585800585858E1E1E1E0E0E0E1E1E1DFDFDFE1E1E1E1E1E1DF
        DFDFE6E6E6E0E0E0E4E4E4E3E3E3E0E0E0E4E4E4E3E3E3E0E0E0585858005A5A
        5AE1E1E1E3E3E3E3E3E3E0E0E0E0E0E0E3E3E3E0E0E0E3E3E3E2E2E2E3E3E3E4
        E4E4E2E2E2E3E3E3E4E4E4E2E2E2595959005A5B59E0E3E1E5E3E2E5E1E0DBE0
        DFDDE1E2E3E1E1D8DADBE3E6E4E5E9E3EBE4E1E5E7E8E9E7E6E6E6E6E5E5E5E8
        E6E65C5A5A00565D5AE8E4E9E6E7E3E4EDEAE1E4E9EDEDED906028906028EDED
        EDE8E8E8E1E5E6E2E6E1DFE7E7E6E6E6E6E6E6E7E5E55D5B5B00545D5AE7E6E8
        E9E7E7EAE8E7E5EBE6906028906028906028906028EDEDEDE0E2DCEAE5E6E5E6
        EAE4E4E4E6E6E6E6E4E45D5B5B00595A58E4E6E6EAE4E9E6EDE6906028906028
        906028906028906028906028EDEDEDE7EAE8E9E4E5EAE8E8EAE8E8E8E8E85A5A
        5A005B5756E6E5E1E5E4EDEDEDED906028906028EFEDEDEDEDED906028906028
        906028EDEDEDE1E6E5EBE9E9EBE9E9E6E6E65B5B5B005E6060F1EFEEE9EAEEEA
        EAEAEFEDEDEFEDEDF0F0F0EEEAE9EDEDED906028906028906028EDEDEDEEECEC
        EAE8E8EBEBEB5F5F5F005B5D5DEDEBEBE5EAEBECE9EBEEEDEFF0F0F0E9EEEDED
        EDEDE3EBE4EDEDED906028906028906028EDEDEDEDEDEDEBEAEC5F5F5F005F5F
        5FEDEDEDEDEDEDEBEBEBECECECEBEBEBEBEEECF2EEEDEEE9EBE3E6E4EDEDED90
        6028906028906028EDEDEDE8E8EE5F5B6000606060EFEFEFEFEFEFEEEEEEF0F0
        F0EFEFEFEFEDEDEBF0F1F0ECF1EEEDEFE7EDE8EBEFE4906028906028EDEDEDEA
        ECEC5F5D5C005E5E5EEDEDEDEFEFEFEEEEEEEEEEEEEEEEEEF0F0F0F0EEEEEFED
        EDF3EEEFE5EBEAE8EDEBEDEDEDEDEDEDF4EFF1E6ECEB59605B00606060F3F3F3
        F0F0F0EDEDEDEEEEEEEDEDEDEDEEECECEFEDECEFEDF3EFEEF4EEEFEFEFEFF3EA
        EDF1EFF5ECEDF1EBF1F05D5D5D00626262F0F0F0F0F0F0EEEEEEF1F1F1F0F0F0
        EEEEEEF5F0F1EAECECEDEFEFEDEDEDEBEDEDF3EFEEEFEEEAEEEFEBF5EFF0595D
        5E008585856363636262626060605F5F5F5F5F5F5E6061615E60605D5F625D5F
        605D5F5B5D5D5A5F5E595A64585F62615D5C837F7E00}
      Stretch = True
    end
    object imgnocheck: TImage
      Left = 444
      Top = -20
      Width = 17
      Height = 17
      Picture.Data = {
        07544269746D6170AA030000424DAA0300000000000036000000280000001100
        000011000000010018000000000074030000C40E0000C40E0000000000000000
        0000797979525252565656565656545454565656565656545454595959585858
        5858585959595858585858585959595858587B7B7B00565656E2E2E2DFDFDFE0
        E0E0E0E0E0DFDFDFE0E0E0E0E0E0DFDFDFE3E3E3E0E0E0E3E3E3E3E3E3E0E0E0
        E3E3E3E3E3E358585800585858E1E1E1E0E0E0E1E1E1DFDFDFE1E1E1E1E1E1DF
        DFDFE6E6E6E0E0E0E4E4E4E3E3E3E0E0E0E4E4E4E3E3E3E0E0E0585858005A5A
        5AE1E1E1E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E2E2E2595959005A5B59E0E3E1E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E8
        E6E65C5A5A00565D5AE8E4E9E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E7E5E55D5B5B00545D5AE7E6E8
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E4E45D5B5B00595A58E4E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E8E8E85A5A
        5A005B5756E6E5E1E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E65B5B5B005E6060F1EFEEE6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6EBEBEB5F5F5F005B5D5DEDEBEBE6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6EBEAEC5F5F5F005F5F
        5FEDEDEDE6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E8E8EE5F5B6000606060EFEFEFE6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6EA
        ECEC5F5D5C005E5E5EEDEDEDE6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6ECEB59605B00606060F3F3F3
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6EBF1F05D5D5D00626262F0F0F0F0F0F0EEEEEEF1F1F1F0F0F0
        EEEEEEF5F0F1EAECECEDEFEFEDEDEDEBEDEDF3EFEEEFEEEAEEEFEBF5EFF0595D
        5E008585856363636262626060605F5F5F5F5F5F5E6061615E60605D5F625D5F
        605D5F5B5D5D5A5F5E595A64585F62615D5C837F7E00}
      Stretch = True
    end
    object Panel6: TPanel
      Left = 1008
      Top = 0
      Width = 67
      Height = 57
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 26
        Top = 14
        Width = 14
        Height = 24
        Cursor = crHandPoint
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 57
    Width = 1075
    Height = 152
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 56
    object Image1: TImage
      Left = 283
      Top = 29
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Picture.Data = {
        07544269746D617026090000424D260900000000000036000000280000001D00
        00001A0000000100180000000000F00800000000000000000000000000000000
        0000FDF9F6F3D783C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000F3DB8EFCFBFA00F8E1A3C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000F9E6B300FAD685C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000FBDD9900FAD685C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000FADB
        9600FAD685C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000FADB9600FAD685C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000FADB9600FAD685C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000F6D99800FAD685C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000FADB
        9600FAD685C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000C08000C08000C08000C08000C08000C08000F9D681F3C269C080
        00C08000C08000C08000C08000C08000C08000C08000FADB9600FAD685C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C080
        00C08000C08000C08000C08000FDF0B3FCFBF7E9CBACC08000C08000C08000C0
        8000C08000C08000C08000C08000FADB9600FAD685C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000FEF4DAFEFDFAFEFCFCF9
        E9D9FDEDCAFDFCFDF8E0D0C08000C08000C08000C08000C08000C08000C08000
        C08000C08000FADB9600FAD685C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000FEFCF5FAEFE2C08000C08000FEF7E9FEFDFDF7E7E2
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000FADB
        9600FAD685C08000C08000C08000C08000C08000C08000C08000C08000C08000
        FEF8DCF9F1EBC08000C08000C08000C08000FEFAE2FAEDF2C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000FADB9600FAD685C08000
        C08000C08000C08000C08000C08000C08000C08000C08000FEFBF1C08000C080
        00C08000C08000C08000C08000FEFCF5C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000FADB9600FAD685C08000C08000C08000C080
        00C08000C08000C08000C08000C08000FEFCF2C08000C08000C08000C08000C0
        8000C08000FDF9FDC08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000FADB9600FAD685C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000FEFAE7F7E8DEC08000C08000C08000C08000FEF6D2FBF4FC
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000FADB
        9600F4D387C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000FDFCFBF7E4CEC08000C08000FEF2D9FBF9F8C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000FADB9600FAD685C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000FEFB
        F0FEFDFDFEFDFDFCF4ECC08000C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000FADB9600FAD685C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000FADB9600F4D387C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000FADB
        9600FAD685C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000FADB9600FAD685C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000FADB9600F3D287C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000FADB9600FAD585C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000FADD
        9900F8DFA1C08000C08000C08000C08000C08000C08000C08000C08000C08000
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000F9E5B100FCFAF8F2D67E
        C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C080
        00C08000C08000C08000C08000C08000C08000C08000C08000C08000C08000C0
        8000C08000C08000C08000C08000FEFDF600}
    end
    object Shape1: TShape
      Left = 24
      Top = 56
      Width = 260
      Height = 1
      Brush.Color = clMedGray
      Pen.Color = clMedGray
    end
    object Image2: TImage
      Left = 284
      Top = 29
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
      Visible = False
    end
    object edbusca: TEdit
      Left = 24
      Top = 29
      Width = 260
      Height = 27
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Escriba su b'#250'squeda....'
    end
    object Panel5: TPanel
      Left = 651
      Top = 0
      Width = 424
      Height = 152
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object pnlNuevo: TPanel
        Left = 176
        Top = 29
        Width = 177
        Height = 35
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Dispersar Selecci'#243'n'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object pnlImprimir: TPanel
        Left = -7
        Top = 29
        Width = 177
        Height = 35
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Imprimir'
        Color = 3453169
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 13
      Top = 86
      Width = 548
      Height = 42
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Cr'#233'ditos dispersados'
        'Cr'#233'ditos por dispersar'
        'Ambos')
      TabOrder = 2
      OnClick = RadioGroup1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 209
    Width = 1075
    Height = 303
    Margins.Bottom = 5
    Align = alClient
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
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clTeal
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sol_id'
        Title.Caption = 'Id'
        Width = 42
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'folcred'
        Title.Caption = 'Serie - Folio Cred'
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sol_fecaproba'
        Title.Caption = 'Fecha Aprobaci'#243'n'
        Width = 223
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sol_clinombre'
        Title.Caption = 'Acreditado'
        Width = 317
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sol_monto'
        Title.Caption = 'Monto'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Dispersado'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Editar'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Dispersar'
        Width = 91
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 512
    Width = 1075
    Height = 139
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object Panel2: TPanel
      Left = 600
      Top = -16
      Width = 360
      Height = 41
      Align = alCustom
      Alignment = taLeftJustify
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 37
        Top = 16
        Width = 61
        Height = 22
        Caption = 'Totales'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object edtotal: TEdit
        Left = 104
        Top = 16
        Width = 121
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 0
        Text = '0'
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = dm.dssolicitudes2
    Top = 320
  end
end
