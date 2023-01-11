object FSettingUser: TFSettingUser
  Left = 290
  Top = 136
  Width = 729
  Height = 491
  BorderIcons = [biSystemMenu]
  Caption = 'SETTING USER'
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
    Width = 713
    Height = 452
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 112
      Top = 20
      Width = 73
      Height = 19
      Caption = 'Username'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 376
      Top = 20
      Width = 71
      Height = 19
      Caption = 'Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 110
      Top = 45
      Width = 229
      Height = 27
      Brush.Color = 12418067
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object Shape2: TShape
      Left = 374
      Top = 45
      Width = 229
      Height = 27
      Brush.Color = 12418067
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object Shape3: TShape
      Left = 29
      Top = 157
      Width = 655
      Height = 285
      Pen.Color = 12418067
      Pen.Width = 2
    end
    object Edit1: TEdit
      Left = 112
      Top = 47
      Width = 224
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
      Left = 376
      Top = 47
      Width = 224
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
    object Panel2: TPanel
      Left = 64
      Top = 101
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
      TabOrder = 2
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 216
      Top = 101
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
      TabOrder = 3
      OnClick = Panel3Click
    end
    object Panel4: TPanel
      Left = 368
      Top = 101
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
      TabOrder = 4
      OnClick = Panel4Click
    end
    object Panel5: TPanel
      Left = 520
      Top = 101
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
      TabOrder = 5
      OnClick = Panel5Click
    end
    object DBGrid1: TDBGrid
      Left = 31
      Top = 159
      Width = 651
      Height = 281
      BorderStyle = bsNone
      DataSource = DM.DSLogin
      FixedColor = 12418067
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 6
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
          FieldName = 'username'
          Title.Alignment = taCenter
          Title.Caption = 'USERNAME'
          Width = 300
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'password'
          Title.Alignment = taCenter
          Title.Caption = 'PASSWORD'
          Width = 300
          Visible = True
        end>
    end
  end
end
