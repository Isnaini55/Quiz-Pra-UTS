object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Perhitungan Barang'
  ClientHeight = 511
  ClientWidth = 378
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 368
    Width = 313
    Height = 113
    Caption = 'Nama  : ISNAINI RIZKYANA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 400
    Width = 141
    Height = 19
    Caption = 'NIM    : 311910254'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 432
    Width = 125
    Height = 19
    Caption = 'Kelas   : TI.19.C1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object StaticText1: TStaticText
    Left = 80
    Top = 33
    Width = 224
    Height = 20
    Caption = 'PERHITUNGAN PENJUALAN BARANG'
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object StaticText2: TStaticText
    Left = 32
    Top = 81
    Width = 65
    Height = 17
    Caption = 'Kode Barang'
    TabOrder = 1
  end
  object StaticText3: TStaticText
    Left = 32
    Top = 112
    Width = 46
    Height = 17
    Caption = 'Quantity'
    TabOrder = 2
  end
  object StaticText4: TStaticText
    Left = 32
    Top = 145
    Width = 68
    Height = 17
    Caption = 'Nama Barang'
    TabOrder = 3
  end
  object StaticText5: TStaticText
    Left = 32
    Top = 176
    Width = 70
    Height = 17
    Caption = 'Harga Satuan'
    TabOrder = 4
  end
  object StaticText6: TStaticText
    Left = 32
    Top = 209
    Width = 49
    Height = 17
    Caption = 'Sub Total'
    TabOrder = 5
  end
  object StaticText7: TStaticText
    Left = 32
    Top = 240
    Width = 35
    Height = 17
    Caption = 'Diskon'
    TabOrder = 6
  end
  object StaticText8: TStaticText
    Left = 32
    Top = 272
    Width = 59
    Height = 17
    Caption = 'Total Bayar'
    TabOrder = 7
  end
  object CBKode: TComboBox
    Left = 128
    Top = 77
    Width = 217
    Height = 21
    TabOrder = 8
    Items.Strings = (
      'A01'
      'B02'
      'C03'
      'D04')
  end
  object EQTY: TEdit
    Left = 128
    Top = 112
    Width = 217
    Height = 21
    TabOrder = 9
    OnChange = EQTYChange
  end
  object ENama: TEdit
    Left = 128
    Top = 139
    Width = 217
    Height = 21
    TabOrder = 10
  end
  object EHarga: TEdit
    Left = 128
    Top = 172
    Width = 217
    Height = 21
    TabOrder = 11
  end
  object ESubTotal: TEdit
    Left = 128
    Top = 205
    Width = 217
    Height = 21
    TabOrder = 12
  end
  object EDiskon: TEdit
    Left = 128
    Top = 236
    Width = 217
    Height = 21
    TabOrder = 13
  end
  object ETotal: TEdit
    Left = 128
    Top = 263
    Width = 217
    Height = 21
    TabOrder = 14
  end
  object Button1: TButton
    Left = 32
    Top = 320
    Width = 97
    Height = 33
    Caption = 'Hitung'
    ImageName = 'ImageList1'
    TabOrder = 15
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 135
    Top = 320
    Width = 107
    Height = 33
    Caption = 'Ulang'
    TabOrder = 16
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 320
    Width = 97
    Height = 33
    Caption = 'Keluar'
    TabOrder = 17
    OnClick = Button3Click
  end
end
