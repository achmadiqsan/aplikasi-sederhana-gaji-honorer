object DM: TDM
  OldCreateOrder = False
  Left = 434
  Top = 245
  Height = 284
  Width = 241
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\aplikasi-sederha' +
      'na-gaji-honorer\Database\DatabaseAppGajiHonorer.mdb;Persist Secu' +
      'rity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 24
  end
  object ADOQLogin: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM login')
    Left = 136
    Top = 24
  end
  object ADOQGuru: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM guru')
    Left = 56
    Top = 96
    object ADOQGurunuptk: TWideStringField
      FieldName = 'nuptk'
      Size = 255
    end
    object ADOQGurunama: TWideStringField
      FieldName = 'nama'
      Size = 255
    end
    object ADOQGurujenis_kelamin: TWideStringField
      FieldName = 'jenis_kelamin'
      Size = 255
    end
    object ADOQGurutelepon: TWideStringField
      FieldName = 'telepon'
      Size = 255
    end
    object ADOQGurupendidikan: TWideStringField
      FieldName = 'pendidikan'
      Size = 255
    end
    object ADOQGurustatus: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object ADOQGurutgl: TDateTimeField
      FieldName = 'tgl'
    end
    object ADOQGuruhonorPerJam: TBCDField
      FieldName = 'honorPerJam'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
  end
  object DSGuru: TDataSource
    DataSet = ADOQGuru
    Left = 112
    Top = 96
  end
  object ADOQJamGuru: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM jamGuru')
    Left = 32
    Top = 144
    object ADOQJamGuruid_data: TWideStringField
      FieldName = 'id_data'
      Size = 255
    end
    object ADOQJamGurunuptk: TWideStringField
      FieldName = 'nuptk'
      Size = 255
    end
    object ADOQJamGurunama: TWideStringField
      FieldName = 'nama'
      Size = 255
    end
    object ADOQJamGurujenis_kelamin: TWideStringField
      FieldName = 'jenis_kelamin'
      Size = 255
    end
    object ADOQJamGurutgl_input: TWideStringField
      FieldName = 'tgl_input'
      Size = 255
    end
    object ADOQJamGurubulan: TWideStringField
      FieldName = 'bulan'
      Size = 255
    end
    object ADOQJamGurutahun: TWideStringField
      FieldName = 'tahun'
      Size = 255
    end
    object ADOQJamGurujumlah_jam: TIntegerField
      FieldName = 'jumlah_jam'
    end
    object ADOQJamGuruhonorPerJam: TBCDField
      FieldName = 'honorPerJam'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOQJamGurutambahan1: TBCDField
      FieldName = 'tambahan1'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOQJamGurutambahan2: TBCDField
      FieldName = 'tambahan2'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOQJamGurutambahan3: TBCDField
      FieldName = 'tambahan3'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOQJamGurutambahan4: TBCDField
      FieldName = 'tambahan4'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOQJamGurutotal_tambahan: TBCDField
      FieldName = 'total_tambahan'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
    object ADOQJamGurutotal_honor: TBCDField
      FieldName = 'total_honor'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
      Precision = 19
    end
  end
  object DSJamGuru: TDataSource
    DataSet = ADOQJamGuru
    Left = 96
    Top = 184
  end
  object DSLogin: TDataSource
    DataSet = ADOQLogin
    Left = 168
    Top = 80
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 160
    Top = 136
  end
end
