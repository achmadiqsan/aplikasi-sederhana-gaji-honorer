object FCariData1: TFCariData1
  Left = 316
  Top = 127
  Width = 707
  Height = 480
  BorderIcons = [biSystemMenu]
  Caption = 'CARI DATA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 441
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object Shape1: TShape
      Left = 14
      Top = 102
      Width = 661
      Height = 285
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object GroupBox1: TGroupBox
      Left = 17
      Top = 8
      Width = 657
      Height = 89
      Caption = 'Filter Data : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Shape4: TShape
        Left = 15
        Top = 45
        Width = 626
        Height = 27
        Brush.Color = 12418067
        Pen.Color = 12418067
        Pen.Width = 2
      end
      object RadioButton1: TRadioButton
        Left = 156
        Top = 24
        Width = 153
        Height = 17
        Caption = 'ID Guru / NUPTK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 348
        Top = 24
        Width = 153
        Height = 17
        Caption = 'Nama Guru'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Edit4: TEdit
        Left = 17
        Top = 47
        Width = 622
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
        TabOrder = 2
        OnChange = Edit4Change
      end
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 104
      Width = 657
      Height = 281
      BorderStyle = bsNone
      DataSource = DM.DSGuru
      FixedColor = 12418067
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Roboto'
      TitleFont.Style = [fsBold]
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'nuptk'
          Title.Alignment = taCenter
          Title.Caption = 'NUPTK'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'nama'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA GURU'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'jenis_kelamin'
          Title.Alignment = taCenter
          Title.Caption = 'JENIS KELAMIN'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'telepon'
          Title.Alignment = taCenter
          Title.Caption = 'TELEPON'
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'pendidikan'
          Title.Alignment = taCenter
          Title.Caption = 'PENDIDIKAN'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'status'
          Title.Alignment = taCenter
          Title.Caption = 'STATUS'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'tgl'
          Title.Alignment = taCenter
          Title.Caption = 'TANGGAL'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'honorPerJam'
          Title.Alignment = taCenter
          Title.Caption = 'HONOR PER JAM'
          Visible = True
        end>
    end
    object Panel7: TPanel
      Left = 17
      Top = 400
      Width = 656
      Height = 32
      Cursor = crHandPoint
      BevelInner = bvRaised
      Caption = 'Close'
      Color = 12418067
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Panel7Click
    end
  end
end
