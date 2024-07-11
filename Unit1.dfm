object Form1: TForm1
  Left = 319
  Top = 186
  Width = 771
  Height = 540
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 48
    Width = 45
    Height = 19
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 72
    Top = 96
    Width = 75
    Height = 19
    Caption = 'DISKRIPSI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 128
    Top = 344
    Width = 142
    Height = 19
    Caption = 'MASUKKKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 168
    Top = 48
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 168
    Top = 144
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 256
    Top = 144
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 344
    Top = 144
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 432
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 4
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 168
    Top = 200
    Width = 320
    Height = 120
    DataSource = DataModule2.ds1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt2: TEdit
    Left = 288
    Top = 344
    Width = 201
    Height = 21
    TabOrder = 6
    OnChange = edt2Change
  end
  object edt1: TEdit
    Left = 168
    Top = 96
    Width = 169
    Height = 21
    TabOrder = 7
  end
end
