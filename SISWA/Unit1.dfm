object Form1: TForm1
  Left = 390
  Top = 170
  Width = 924
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 144
    Top = 16
    Width = 65
    Height = 13
    Caption = 'NAMA SISWA'
  end
  object lbl2: TLabel
    Left = 144
    Top = 48
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl3: TLabel
    Left = 144
    Top = 80
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl4: TLabel
    Left = 144
    Top = 112
    Width = 79
    Height = 13
    Caption = 'TANGGAL LAHIR'
  end
  object lbl5: TLabel
    Left = 144
    Top = 144
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object dbgrd1: TDBGrid
    Left = 120
    Top = 208
    Width = 681
    Height = 217
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt1: TEdit
    Left = 240
    Top = 16
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 240
    Top = 48
    Width = 185
    Height = 21
    TabOrder = 2
    Text = 'edt2'
  end
  object cbb1: TComboBox
    Left = 240
    Top = 80
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'cbb1'
    Items.Strings = (
      'LAKI - LAKI'
      'PEREMPUAN')
  end
  object dtp1: TDateTimePicker
    Left = 240
    Top = 112
    Width = 186
    Height = 21
    Date = 45110.088039270840000000
    Time = 45110.088039270840000000
    TabOrder = 4
  end
  object edt3: TEdit
    Left = 240
    Top = 144
    Width = 185
    Height = 21
    TabOrder = 5
    Text = 'edt3'
  end
  object btn1: TButton
    Left = 480
    Top = 112
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 576
    Top = 112
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 7
    OnClick = btn2Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'cobavisual1'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\user\Documents\MUHAMMAD NAJMI ANWAR_2110010433_TUGAS AK' +
      'HIR\SISWA\libmysql.dll'
    Left = 48
    Top = 64
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from output')
    Params = <>
    Left = 48
    Top = 120
  end
  object con2: TADOConnection
    Left = 56
    Top = 200
  end
  object qry1: TADOQuery
    Parameters = <>
    Left = 56
    Top = 272
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 48
    Top = 16
  end
end
