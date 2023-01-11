program AplikasiGajiHonorer;

uses
  Forms,
  UMenu in 'UMenu.pas' {FMenu},
  UDataGuru in 'UDataGuru.pas' {FDataGuru},
  UHonorNgajar in 'UHonorNgajar.pas' {FHonorGuru},
  UKwintansi in 'UKwintansi.pas' {FKwintansi},
  UCariData1 in 'UCariData1.pas' {FCariData1},
  UCariData2 in 'UCariData2.pas' {FCariData2},
  UReport in 'UReport.pas' {FReport},
  ULogin in 'ULogin.pas' {FLogin},
  USettingUser in 'USettingUser.pas' {FSettingUser},
  DataModule in 'DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFDataGuru, FDataGuru);
  Application.CreateForm(TFHonorGuru, FHonorGuru);
  Application.CreateForm(TFKwintansi, FKwintansi);
  Application.CreateForm(TFCariData1, FCariData1);
  Application.CreateForm(TFCariData2, FCariData2);
  Application.CreateForm(TFReport, FReport);
  Application.CreateForm(TFSettingUser, FSettingUser);
  Application.Run;
end.
