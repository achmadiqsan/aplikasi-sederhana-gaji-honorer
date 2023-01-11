object FCariData2: TFCariData2
  Left = 438
  Top = 118
  Width = 703
  Height = 440
  BorderIcons = [biSystemMenu]
  Caption = 'CARI DATA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 401
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object Shape1: TShape
      Left = 18
      Top = 69
      Width = 655
      Height = 285
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object GroupBox1: TGroupBox
      Left = 17
      Top = 8
      Width = 657
      Height = 57
      Caption = 'Filter ID Data : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Shape4: TShape
        Left = 15
        Top = 23
        Width = 626
        Height = 27
        Brush.Color = 12418067
        Pen.Color = 12418067
        Pen.Width = 2
      end
      object Edit4: TEdit
        Left = 17
        Top = 25
        Width = 621
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
        OnChange = Edit4Change
      end
    end
    object DBGrid1: TDBGrid
      Left = 20
      Top = 71
      Width = 651
      Height = 281
      BorderStyle = bsNone
      DataSource = DM.DSJamGuru
      FixedColor = 12418067
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
          FieldName = 'id_data'
          Title.Alignment = taCenter
          Title.Caption = 'ID DATA'
          Width = 200
          Visible = True
        end
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
          FieldName = 'jumlah_jam'
          Title.Alignment = taCenter
          Title.Caption = 'JUMLAH JAM'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'honorPerJam'
          Title.Alignment = taCenter
          Title.Caption = 'HONOR PER JAM'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'total_tambahan'
          Title.Alignment = taCenter
          Title.Caption = 'TOTAL TAMBAHAN'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'total_honor'
          Title.Alignment = taCenter
          Title.Caption = 'TOTAL HONOR'
          Visible = True
        end>
    end
    object Panel7: TPanel
      Left = 17
      Top = 359
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
