unit DataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQLogin: TADOQuery;
    ADOQGuru: TADOQuery;
    DSGuru: TDataSource;
    ADOQJamGuru: TADOQuery;
    DSJamGuru: TDataSource;
    DSLogin: TDataSource;
    ADOQGurunuptk: TWideStringField;
    ADOQGurunama: TWideStringField;
    ADOQGurujenis_kelamin: TWideStringField;
    ADOQGurutelepon: TWideStringField;
    ADOQGurupendidikan: TWideStringField;
    ADOQGurustatus: TWideStringField;
    ADOQGurutgl: TDateTimeField;
    ADOQGuruhonorPerJam: TBCDField;
    ADOQJamGuruid_data: TWideStringField;
    ADOQJamGurunuptk: TWideStringField;
    ADOQJamGurunama: TWideStringField;
    ADOQJamGurujenis_kelamin: TWideStringField;
    ADOQJamGurutgl_input: TWideStringField;
    ADOQJamGurubulan: TWideStringField;
    ADOQJamGurutahun: TWideStringField;
    ADOQJamGurujumlah_jam: TIntegerField;
    ADOQJamGuruhonorPerJam: TBCDField;
    ADOQJamGurutambahan1: TBCDField;
    ADOQJamGurutambahan2: TBCDField;
    ADOQJamGurutambahan3: TBCDField;
    ADOQJamGurutambahan4: TBCDField;
    ADOQJamGurutotal_tambahan: TBCDField;
    ADOQJamGurutotal_honor: TBCDField;
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
