unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Grids, DBGrids, frxpngimage, ExtCtrls;

type
  TFMenu = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel3: TPanel;
    Image2: TImage;
    Panel4: TPanel;
    Image3: TImage;
    Panel5: TPanel;
    Image4: TImage;
    Panel6: TPanel;
    Image5: TImage;
    Panel7: TPanel;
    Image6: TImage;
    Image7: TImage;
    Label4: TLabel;
    Panel8: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Image8: TImage;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Image9: TImage;
    Label6: TLabel;
    Image10: TImage;
    Label7: TLabel;
    Image11: TImage;
    Label9: TLabel;
    Image12: TImage;
    Label11: TLabel;
    Image13: TImage;
    Label13: TLabel;
    Image14: TImage;
    Label15: TLabel;
    Image15: TImage;
    Label17: TLabel;
    Image16: TImage;
    Label19: TLabel;
    Image17: TImage;
    Label21: TLabel;
    Label23: TLabel;
    MainMenu1: TMainMenu;
    M1: TMenuItem;
    D1: TMenuItem;
    T1: TMenuItem;
    N1: TMenuItem;
    R1: TMenuItem;
    K1: TMenuItem;
    S1: TMenuItem;
    S2: TMenuItem;
    E1: TMenuItem;
    N2: TMenuItem;
    Y1: TMenuItem;
    Edit1: TEdit;
    Shape2: TShape;
    Shape3: TShape;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    procedure Y1Click(Sender: TObject);
    procedure exitapp;
    procedure Panel7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure guru;
    procedure Panel3Click(Sender: TObject);
    procedure honorguru;
    procedure kwitansi;
    procedure S2Click(Sender: TObject);
    procedure settinguser;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure refresh;
    procedure Image5Click(Sender: TObject);
    procedure male;
    procedure FormActivate(Sender: TObject);
    procedure female;
    procedure belummenikah;
    procedure menikah;
    procedure sarjana;
    procedure diploma1;
    procedure diploma2;
    procedure diploma3;
    procedure detaildata;
    procedure pesan;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

uses
  UDataGuru, UHonorNgajar, UKwintansi, USettingUser, ULogin, DataModule;

{$R *.dfm}

procedure TFMenu.exitapp;
begin
  //Application.Terminate;
  FMenu.Hide;
  FLogin.show;
end;

procedure TFMenu.Y1Click(Sender: TObject);
begin
  exitapp;
end;

procedure TFMenu.Panel7Click(Sender: TObject);
begin
  exitapp;
end;

procedure TFMenu.Image6Click(Sender: TObject);
begin
  exitapp;
end;

procedure TFMenu.Image2Click(Sender: TObject);
begin
  guru;
end;

procedure TFMenu.D1Click(Sender: TObject);
begin
  guru;
end;

procedure TFMenu.Panel4Click(Sender: TObject);
begin
  honorguru;
end;

procedure TFMenu.Image3Click(Sender: TObject);
begin
    honorguru;
end;

procedure TFMenu.N1Click(Sender: TObject);
begin
  honorguru;
end;

procedure TFMenu.Panel5Click(Sender: TObject);
begin
  kwitansi;
end;

procedure TFMenu.Image4Click(Sender: TObject);
begin
  kwitansi;
end;

procedure TFMenu.K1Click(Sender: TObject);
begin
  kwitansi;
end;

procedure TFMenu.guru;
begin
  //
   FDataGuru.Show;
end;

procedure TFMenu.Panel3Click(Sender: TObject);
begin
  guru;
end;

procedure TFMenu.honorguru;
begin
  //
  FHonorGuru.Show;
end;

procedure TFMenu.kwitansi;
begin
  //
  FKwintansi.show;
end;

procedure TFMenu.S2Click(Sender: TObject);
begin
  //
  settinguser;
end;

procedure TFMenu.settinguser;
begin
  //
  FSettingUser.Show;
end;

procedure TFMenu.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DM.ADOQGuru.IsEmpty then
     MessageDlg('Data Kosong',mtInformation,[mbok],0)
     else
     begin
        FDataGuru.Edit1.Text := DM.ADOQGuru['nuptk'];
        FDataGuru.Edit2.Text := DM.ADOQGuru['nama'];
        FDataGuru.ComboBox1.Text := DM.ADOQGuru['jenis_kelamin'];
        FDataGuru.Edit3.Text := DM.ADOQGuru['telepon'];
        FDataGuru.ComboBox2.Text := DM.ADOQGuru['pendidikan'];
        FDataGuru.ComboBox3.Text := DM.ADOQGuru['status'];
        FDataGuru.DateTimePicker1.Date := DM.ADOQGuru['tgl'];
        FDataGuru.Edit4.Text := DM.ADOQGuru['honorPerJam'];
        FDataGuru.Show;
     end;
  end;
end;

procedure TFMenu.Edit1Change(Sender: TObject);
begin
  if RadioButton1.Checked = True then
  begin
    if edit1.Text ='' then
     begin
       Dm.ADOQGuru.Close;
       Dm.ADOQGuru.Open;
       Dm.ADOQGuru.Filtered := false;
     end
    Else
       begin
         Dm.ADOQGuru.Close;
         Dm.ADOQGuru.Open;
         Dm.ADOQGuru.Filtered := False;
         DM.ADOQGuru.Filter :='nuptk LIKE '+Quotedstr('%'+Edit1.Text+'%');
         Dm.ADOQGuru.Filtered := True;
       end;
  end
  else
  if RadioButton2.Checked = True then
  begin
    if edit1.Text ='' then
     begin
       Dm.ADOQGuru.Close;
       Dm.ADOQGuru.Open;
       Dm.ADOQGuru.Filtered := false;
     end
    Else
       begin
         Dm.ADOQGuru.Close;
         Dm.ADOQGuru.Open;
         Dm.ADOQGuru.Filtered := False;
         DM.ADOQGuru.Filter :='nama LIKE '+Quotedstr('%'+Edit1.Text+'%');
         Dm.ADOQGuru.Filtered := True;
       end;
  end;
end;

procedure TFMenu.Panel6Click(Sender: TObject);
begin
  //
  refresh;
  //
  detaildata;
  //
  pesan;
end;

procedure TFMenu.refresh;
begin
  DM.ADOQLogin.Close;
  DM.ADOQLogin.Open;
  //
  DM.ADOQGuru.Close;
  DM.ADOQGuru.Open;
  //
  DM.ADOQJamGuru.Close;
  DM.ADOQJamGuru.Open;
  //
end;

procedure TFMenu.Image5Click(Sender: TObject);
begin
  refresh;
  //
  detaildata;
  //
  pesan;
end;

procedure TFMenu.male;
begin
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('SELECT COUNT(*) AS MALE FROM guru WHERE jenis_kelamin = "LAKI - LAKI"');
  DM.ADOQuery1.Open;
end;

procedure TFMenu.FormActivate(Sender: TObject);
begin
  //
  detaildata;
end;

procedure TFMenu.female;
begin
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('SELECT COUNT(*) AS FEMALE FROM guru WHERE jenis_kelamin = "PEREMPUAN"');
  DM.ADOQuery1.Open;
end;

procedure TFMenu.belummenikah;
begin
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('SELECT COUNT(*) AS BLM_MENIKAH FROM guru WHERE status = "BELUM MENIKAH"');
  DM.ADOQuery1.Open;
end;

procedure TFMenu.diploma1;
begin
//
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('SELECT COUNT(*) AS DIPLOMA1 FROM guru WHERE pendidikan = "DIPLOMA I"');
  DM.ADOQuery1.Open;
end;

procedure TFMenu.diploma2;
begin
//
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('SELECT COUNT(*) AS DIPLOMA2 FROM guru WHERE pendidikan = "DIPLOMA II"');
  DM.ADOQuery1.Open;
end;

procedure TFMenu.diploma3;
begin
//
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('SELECT COUNT(*) AS DIPLOMA3 FROM guru WHERE pendidikan = "DIPLOMA III"');
  DM.ADOQuery1.Open;
end;

procedure TFMenu.menikah;
begin
//
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('SELECT COUNT(*) AS MENIKAH FROM guru WHERE status = "MENIKAH"');
  DM.ADOQuery1.Open;
end;

procedure TFMenu.sarjana;
begin
//
  DM.ADOQuery1.Close;
  DM.ADOQuery1.SQL.Clear;
  DM.ADOQuery1.SQL.Add('SELECT COUNT(*) AS SARJANA FROM guru WHERE pendidikan = "SARJANA"');
  DM.ADOQuery1.Open;
end;

procedure TFMenu.detaildata;
begin
  male;
  if DM.ADOQuery1['MALE'] <> 0 then Panel9.Caption := DM.ADOQuery1['MALE'] else Panel9.Caption := '0';
  //Panel9.Caption := DM.ADOQuery1['MALE'];
  female;
  //if DM.ADOQuery1['FEMALE'] <> 0 then Panel9.Caption := DM.ADOQuery1['MALE'] else Panel9.Caption := '0';
  Panel10.Caption := DM.ADOQuery1['FEMALE'];
  sarjana;
  Panel13.Caption := DM.ADOQuery1['SARJANA'];
  diploma1;
  Panel14.Caption := DM.ADOQuery1['DIPLOMA1'];
  diploma2;
  Panel15.Caption := DM.ADOQuery1['DIPLOMA2'];
  diploma3;
  Panel16.Caption := DM.ADOQuery1['DIPLOMA3'];
  menikah;
  Panel17.Caption := DM.ADOQuery1['MENIKAH'];
  belummenikah;
  Panel18.Caption := DM.ADOQuery1['BLM_MENIKAH'];
end;

procedure TFMenu.pesan;
begin
  MessageDlg('Semua Data Berhasil Di Refresh !!!',mtinformation,[mbok],0);
end;

end.
