object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Produk'
  ClientHeight = 479
  ClientWidth = 674
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
    Left = 0
    Top = 0
    Width = 674
    Height = 72
    Align = alTop
    Alignment = taCenter
    Caption = 'Produk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = 160
    ExplicitTop = 8
    ExplicitWidth = 184
  end
  object Label2: TLabel
    Left = 454
    Top = 95
    Width = 35
    Height = 19
    Caption = 'Jenis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 95
    Width = 41
    Height = 19
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 240
    Top = 94
    Width = 50
    Height = 19
    Caption = 'Banyak'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 151
    Width = 64
    Height = 19
    Caption = 'Deskripsi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 120
    Width = 200
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 240
    Top = 120
    Width = 200
    Height = 21
    TabOrder = 1
  end
  object Edit5: TEdit
    Left = 454
    Top = 120
    Width = 200
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 24
    Top = 176
    Width = 200
    Height = 23
    TabOrder = 3
  end
  object Button1: TButton
    Left = 312
    Top = 174
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 24
    Top = 267
    Width = 282
    Height = 21
    TabOrder = 5
  end
  object Button2: TButton
    Left = 312
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Cari'
    TabOrder = 6
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 296
    Width = 630
    Height = 175
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\rhayeksa\D' +
      'ocuments\Embarcadero\Studio\Projects\rhayeksaProject\db_rhayeksa' +
      '.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 592
    Top = 256
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from produk;')
    Left = 544
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 496
    Top = 256
  end
end
