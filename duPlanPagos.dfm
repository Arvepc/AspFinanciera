object frmplanpagos: Tfrmplanpagos
  Left = 0
  Top = 0
  Caption = 'Planes de pago'
  ClientHeight = 481
  ClientWidth = 931
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 931
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 24
      Top = 10
      Width = 238
      Height = 40
      Caption = 'Planes de Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -35
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnelimina: TSpeedButton
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
    object btnmodifica: TSpeedButton
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
      OnClick = btnmodificaClick
    end
    object btnmuestra: TSpeedButton
      Left = 575
      Top = -25
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
      OnClick = btnmuestraClick
    end
    object Panel6: TPanel
      Left = 864
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
        OnClick = Label1Click
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 57
    Width = 931
    Height = 88
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
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
      Left = 507
      Top = 0
      Width = 424
      Height = 88
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 1
      object pnlNuevo: TPanel
        Left = 175
        Top = 29
        Width = 177
        Height = 35
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Nuevo Plan'
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
        OnMouseMove = pnlNuevoMouseMove
      end
      object pnlImprimir: TPanel
        Left = -11
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 931
    Height = 295
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 931
      Height = 295
      Margins.Bottom = 5
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = True
      DataSource = dtsplanpagos_listado
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
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'pp_fecha'
          Title.Caption = 'Fecha'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pp_descripcion'
          Title.Caption = 'Descripcion'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'prd_descripcion'
          Title.Caption = 'Producto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pp_plazo'
          Title.Caption = 'Plazo'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pp_estatus'
          Title.Caption = 'Estatus'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          Title.Caption = 'Editar'
          Width = 90
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          Title.Caption = 'Cancelar'
          Width = 90
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          Title.Caption = 'Mostrar'
          Width = 90
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 440
    Width = 931
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
  end
  object dtsplanpagos_listado: TDataSource
    DataSet = dm.dsplan_pagos
    Left = 200
    Top = 249
  end
end
