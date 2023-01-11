object FDataGuru: TFDataGuru
  Left = 259
  Top = 85
  Width = 642
  Height = 389
  BorderIcons = [biSystemMenu]
  Caption = 'DATA GURU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 626
    Height = 350
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 70
      Top = 20
      Width = 52
      Height = 19
      Caption = 'NUPTK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 70
      Top = 84
      Width = 82
      Height = 19
      Caption = 'Nama Guru'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 70
      Top = 148
      Width = 100
      Height = 19
      Caption = 'Jenis Kelamin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 70
      Top = 213
      Width = 77
      Height = 19
      Caption = 'No. Telpon'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 334
      Top = 20
      Width = 79
      Height = 19
      Caption = 'Pendidikan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 334
      Top = 84
      Width = 131
      Height = 19
      Caption = 'Status Pernikahan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 334
      Top = 148
      Width = 152
      Height = 19
      Caption = 'Tanggal Masuk Kerja'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 333
      Top = 211
      Width = 108
      Height = 19
      Caption = 'Honor Per Jam'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 68
      Top = 45
      Width = 229
      Height = 27
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object Shape2: TShape
      Left = 68
      Top = 109
      Width = 229
      Height = 27
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object Shape3: TShape
      Left = 68
      Top = 172
      Width = 229
      Height = 27
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object Shape4: TShape
      Left = 68
      Top = 235
      Width = 229
      Height = 27
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object Shape5: TShape
      Left = 332
      Top = 231
      Width = 229
      Height = 27
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object Shape6: TShape
      Left = 332
      Top = 171
      Width = 229
      Height = 27
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object Shape7: TShape
      Left = 332
      Top = 108
      Width = 229
      Height = 27
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object Shape8: TShape
      Left = 332
      Top = 44
      Width = 229
      Height = 27
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object Edit1: TEdit
      Left = 70
      Top = 47
      Width = 225
      Height = 23
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 70
      Top = 111
      Width = 225
      Height = 23
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 70
      Top = 237
      Width = 225
      Height = 23
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object ComboBox1: TComboBox
      Left = 70
      Top = 174
      Width = 225
      Height = 23
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 3
      Text = '-- PILIH JENIS KELAMIN --'
      Items.Strings = (
        'LAKI - LAKI'
        'PEREMPUAN')
    end
    object ComboBox2: TComboBox
      Left = 334
      Top = 46
      Width = 225
      Height = 23
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 4
      Text = '-- PILIH PENDIDIKAN --'
      Items.Strings = (
        'DIPLOMA I'
        'DIPLOMA II'
        'DIPLOMA III'
        'SARJANA')
    end
    object ComboBox3: TComboBox
      Left = 334
      Top = 110
      Width = 225
      Height = 23
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 5
      Text = '-- PILIH STATUS --'
      Items.Strings = (
        'BELUM MENIKAH'
        'MENIKAH')
    end
    object DateTimePicker1: TDateTimePicker
      Left = 334
      Top = 173
      Width = 225
      Height = 23
      BevelInner = bvNone
      BevelOuter = bvNone
      Date = 44926.000000000000000000
      Time = 44926.000000000000000000
      DateFormat = dfLong
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 334
      Top = 233
      Width = 225
      Height = 23
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnChange = Edit4Change
      OnKeyPress = Edit4KeyPress
    end
    object Panel2: TPanel
      Left = 23
      Top = 285
      Width = 129
      Height = 41
      Cursor = crHandPoint
      BevelInner = bvRaised
      Caption = 'Add Data'
      Color = 12418067
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 175
      Top = 285
      Width = 129
      Height = 41
      Cursor = crHandPoint
      BevelInner = bvRaised
      Caption = 'Update'
      Color = 12418067
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = Panel3Click
    end
    object Panel4: TPanel
      Left = 327
      Top = 285
      Width = 129
      Height = 41
      Cursor = crHandPoint
      BevelInner = bvRaised
      Caption = 'Delete'
      Color = 12418067
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = Panel4Click
    end
    object Panel5: TPanel
      Left = 479
      Top = 285
      Width = 129
      Height = 41
      Cursor = crHandPoint
      BevelInner = bvRaised
      Caption = 'Reset'
      Color = 12418067
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = Panel5Click
    end
  end
end
