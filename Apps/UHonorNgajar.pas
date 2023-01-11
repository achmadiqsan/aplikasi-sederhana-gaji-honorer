unit UHonorNgajar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, DateUtils;

type
  TFHonorGuru = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    Shape2: TShape;
    Label2: TLabel;
    Edit2: TEdit;
    Shape3: TShape;
    Edit3: TEdit;
    Label3: TLabel;
    Shape4: TShape;
    Edit4: TEdit;
    Label4: TLabel;
    Label7: TLabel;
    Shape5: TShape;
    Edit5: TEdit;
    Label5: TLabel;
    Shape7: TShape;
    Edit6: TEdit;
    Label6: TLabel;
    Shape8: TShape;
    Edit7: TEdit;
    Label8: TLabel;
    Shape9: TShape;
    Edit8: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    GroupBox1: TGroupBox;
    Shape10: TShape;
    Edit9: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Edit10: TEdit;
    Shape11: TShape;
    Label14: TLabel;
    Edit11: TEdit;
    Shape12: TShape;
    Label15: TLabel;
    Edit12: TEdit;
    Shape13: TShape;
    Label16: TLabel;
    Edit13: TEdit;
    Shape14: TShape;
    Label17: TLabel;
    Edit14: TEdit;
    Shape15: TShape;
    Panel8: TPanel;
    Panel9: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Shape16: TShape;
    Shape6: TShape;
    Edit15: TEdit;
    Label9: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    procedure FormShow(Sender: TObject);
    procedure sembunyi;
    procedure tampilkan;
    procedure Panel3Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Change(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHonorGuru: TFHonorGuru;

implementation

uses UCariData1, DataModule;

{$R *.dfm}

procedure TFHonorGuru.FormShow(Sender: TObject);
begin
  //
  sembunyi;
end;

procedure TFHonorGuru.sembunyi;
begin
  Label12.Visible := False;
  Edit9.Visible := False;
  Shape10.Visible := False;
  //
  Label13.Visible := False;
  Edit10.Visible := False;
  Shape11.Visible := False;
  //
  Label14.Visible := False;
  Edit11.Visible := False;
  Shape12.Visible := False;
  //
  Label15.Visible := False;
  Edit12.Visible := False;
  Shape13.Visible := False;
  //
  Label16.Visible := False;
  Edit13.Visible := False;
  Shape14.Visible := False;
  //
  Label17.Visible := False;
  Edit14.Visible := False;
  Shape15.Visible := False;
  //
  Panel8.Visible := False;
  Panel9.Visible := False;
  //
  Label18.Visible := False;
  Label19.Visible := False;
  Label20.Visible := False;
  //
  GroupBox1.Visible := False;
  FHonorGuru.Width := 849;
end;

procedure TFHonorGuru.tampilkan;
begin
  //
  FHonorGuru.Width := 1176;
  GroupBox1.Visible := True;
  //
  Label12.Visible := True;
  Edit9.Visible := True;
  Shape10.Visible := True;
  //
  Label13.Visible := True;
  Edit10.Visible := True;
  Shape11.Visible := True;
  //
  Label14.Visible := True;
  Edit11.Visible := True;
  Shape12.Visible := True;
  //
  Label15.Visible := True;
  Edit12.Visible := True;
  Shape13.Visible := True;
  //
  Label16.Visible := True;
  Edit13.Visible := True;
  Shape14.Visible := True;
  //
  Label17.Visible := True;
  Edit14.Visible := True;
  Shape15.Visible := True;
  //
  Panel8.Visible := True;
  Panel9.Visible := True;
  //
  Label18.Visible := True;
  Label19.Visible := True;
  Label20.Visible := True;
end;

procedure TFHonorGuru.Panel3Click(Sender: TObject);
begin
  tampilkan;
end;

procedure TFHonorGuru.Panel9Click(Sender: TObject);
begin
  Edit9.Text := '0'; Edit10.Text := '0'; Edit11.Text := '0';
  Edit12.Text := '0'; Edit13.Text := '0';
  sembunyi;
end;

procedure TFHonorGuru.Panel2Click(Sender: TObject);
begin
  FCariData1.show;
  Label21.Caption := '1';
end;

procedure TFHonorGuru.Panel4Click(Sender: TObject);
begin
  label9.Caption := 'Label9';
  label11.Caption := 'Label11';
  Label21.Caption := '0';
  Edit1.Clear; Edit2.Clear; Edit3.Clear;
  Edit15.Clear; Edit6.Clear; Edit4.Clear;
  Edit5.Clear; Edit7.Clear; Edit8.Clear;
  //
  Edit9.Text := '0'; Edit10.Text := '0'; Edit11.Text := '0';
  Edit12.Text := '0'; Edit13.Text := '0'; Edit14.Text := '0';
  sembunyi;
end;

procedure TFHonorGuru.Edit8Change(Sender: TObject);
begin
    if edit8.Text ='' then
     begin
       Dm.ADOQJamGuru.Close;
       Dm.ADOQJamGuru.Open;
       Dm.ADOQJamGuru.Filtered := false;
     end
    Else
       begin
         Dm.ADOQJamGuru.Close;
         Dm.ADOQJamGuru.Open;
         Dm.ADOQJamGuru.Filtered := False;
         DM.ADOQJamGuru.Filter :='nama LIKE '+Quotedstr('%'+Edit8.Text+'%');
         Dm.ADOQJamGuru.Filtered := True;
       end;
end;

procedure TFHonorGuru.FormActivate(Sender: TObject);
begin
  Edit8.Clear;
  Dm.ADOQJamGuru.Close;
  Dm.ADOQJamGuru.Open;
  Dm.ADOQJamGuru.Filtered := false;
end;

procedure TFHonorGuru.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in[#8, #13, '0'..'9']) then
    begin
      ShowMessage('Maaf Inputan Hanya Angka');
      key := #0;
    end;
end;

procedure TFHonorGuru.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in[#8, #13, '0'..'9']) then
    begin
      ShowMessage('Maaf Inputan Hanya Angka');
      key := #0;
    end;
end;

procedure TFHonorGuru.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in[#8, #13, '0'..'9']) then
    begin
      ShowMessage('Maaf Inputan Hanya Angka');
      key := #0;
    end;
end;

procedure TFHonorGuru.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in[#8, #13, '0'..'9']) then
    begin
      ShowMessage('Maaf Inputan Hanya Angka');
      key := #0;
    end;
end;

procedure TFHonorGuru.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in[#8, #13, '0'..'9']) then
    begin
      ShowMessage('Maaf Inputan Hanya Angka');
      key := #0;
    end;
end;

procedure TFHonorGuru.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in[#8, #13, '0'..'9']) then
    begin
      ShowMessage('Maaf Inputan Hanya Angka');
      key := #0;
    end;
end;

procedure TFHonorGuru.Edit13KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in[#8, #13, '0'..'9']) then
    begin
      ShowMessage('Maaf Inputan Hanya Angka');
      key := #0;
    end;
end;

procedure TFHonorGuru.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in[#8, #13, '0'..'9']) then
    begin
      ShowMessage('Maaf Inputan Hanya Angka');
      key := #0;
    end;
end;

procedure TFHonorGuru.Edit5Change(Sender: TObject);
begin
  if (Label21.Caption = '1') and (Edit5.Text <> '') then
  begin
    Edit7.Text := FloatToStr(StrToFloat(Edit6.Text) * StrToFloat(Edit5.Text));
    Edit14.Text := FloatToStr(StrToFloat(Edit7.Text) + StrToFloat(Edit13.Text));
  end;
end;

procedure TFHonorGuru.Panel8Click(Sender: TObject);
begin
  if Edit9.Text = '' then MessageDlg('Tambahan 1 Tidak Terisi !!!',mtinformation,[mbok],0) else
  if Edit10.Text = '' then MessageDlg('Tambahan 2 Tidak Terisi !!!',mtinformation,[mbok],0) else
  if Edit11.Text = '' then MessageDlg('Tambahan 3 Tidak Terisi !!!',mtinformation,[mbok],0) else
  if Edit12.Text = '' then MessageDlg('Tambahan 4 Tidak Terisi !!!',mtinformation,[mbok],0) else
  begin
    Edit13.Text := FloatToStr(StrToFloat(Edit9.Text) + StrToFloat(Edit10.Text) + StrToFloat(Edit11.Text) + StrToFloat(Edit12.Text));
    Edit14.Text := FloatToStr(StrToFloat(Edit7.Text) + StrToFloat(Edit13.Text));
  end;
end;

procedure TFHonorGuru.Panel7Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('Silahkan Isi Data Anda !!!',mtinformation,[mbok],0) else
  begin
    DM.ADOQJamGuru.Append;
    DM.ADOQJamGuru['id_data'] := Edit2.Text;
    DM.ADOQJamGuru['nuptk'] := Edit1.Text;
    DM.ADOQJamGuru['nama'] := Edit3.Text;
    DM.ADOQJamGuru['jenis_kelamin'] := Edit4.Text;
    DM.ADOQJamGuru['tgl_input'] := Edit15.Text;
    DM.ADOQJamGuru['bulan'] := label9.Caption;
    DM.ADOQJamGuru['tahun'] := label11.Caption;
    DM.ADOQJamGuru['jumlah_jam'] := Edit5.Text;
    DM.ADOQJamGuru['honorPerJam'] := Edit6.Text;
    DM.ADOQJamGuru['tambahan1'] := Edit9.Text;
    DM.ADOQJamGuru['tambahan2'] := Edit10.Text;
    DM.ADOQJamGuru['tambahan3'] := Edit11.Text;
    DM.ADOQJamGuru['tambahan4'] := Edit12.Text;
    DM.ADOQJamGuru['total_tambahan'] := Edit13.Text;
    DM.ADOQJamGuru['total_honor'] := Edit14.Text;
    DM.ADOQJamGuru.Post;
    //
    label9.Caption := 'Label9';
    label11.Caption := 'Label11';
    Label21.Caption := '0';
    Edit1.Clear; Edit2.Clear; Edit3.Clear;
    Edit15.Clear; Edit6.Clear; Edit4.Clear;
    Edit5.Clear; Edit7.Clear; Edit8.Clear;
    //
    Edit9.Text := '0'; Edit10.Text := '0'; Edit11.Text := '0';
    Edit12.Text := '0'; Edit13.Text := '0'; Edit14.Text := '0';
    //
    MessageDlg('Data Berhasil Di Simpan !!!',mtinformation,[mbok],0);
  end;
end;

procedure TFHonorGuru.Edit15Change(Sender: TObject);
var
  formattanggal : TDate;
  bln, thn : Word;
begin
  if Edit15.Text <> '' then
  begin
    formattanggal := StrToDate(Edit15.Text);
    bln := MonthOf(formattanggal);
    thn := YearOf(formattanggal);

    case bln of
      1 : Label9.Caption := 'JANUARI';
      2 : Label9.Caption := 'FEBRUARI';
      3 : Label9.Caption := 'MARET';
      4 : Label9.Caption := 'APRIL';
      5 : Label9.Caption := 'MEI';
      6 : Label9.Caption := 'JUNI';
      7 : Label9.Caption := 'JULI';
      8 : Label9.Caption := 'AGUSTUS';
      9 : Label9.Caption := 'SEPTEMBER';
      10 : Label9.Caption := 'OKTOBER';
      11 : Label9.Caption := 'NOVEMBER';
      12 : Label9.Caption := 'DESEMBER';
    end;
    Label11.Caption := IntToStr(thn);
  end;
end;

procedure TFHonorGuru.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DM.ADOQJamGuru.IsEmpty then
     MessageDlg('Data Kosong',mtInformation,[mbok],0)
     else
     begin
        //
        Edit2.Text := DM.ADOQJamGuru['id_data'] ;
        Edit1.Text := DM.ADOQJamGuru['nuptk'] ;
        Edit3.Text := DM.ADOQJamGuru['nama'] ;
        Edit4.Text := DM.ADOQJamGuru['jenis_kelamin'] ;
        Edit15.Text := DM.ADOQJamGuru['tgl_input'] ;
        label9.Caption := DM.ADOQJamGuru['bulan'] ;
        label11.Caption := DM.ADOQJamGuru['tahun']  ;
        Edit5.Text := DM.ADOQJamGuru['jumlah_jam']  ;
        Edit6.Text := DM.ADOQJamGuru['honorPerJam']  ;
        Edit7.Text := DM.ADOQJamGuru['honorPerJam'] * DM.ADOQJamGuru['jumlah_jam'];
        Edit9.Text := DM.ADOQJamGuru['tambahan1']  ;
        Edit10.Text := DM.ADOQJamGuru['tambahan2']  ;
        Edit11.Text := DM.ADOQJamGuru['tambahan3']  ;
        Edit12.Text := DM.ADOQJamGuru['tambahan4']  ;
        Edit13.Text := DM.ADOQJamGuru['total_tambahan']  ;
        Edit14.Text := DM.ADOQJamGuru['total_honor']  ;
        Label21.Caption := '1';
     end;
  end;
end;

procedure TFHonorGuru.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Label21.Caption := '0';
end;

procedure TFHonorGuru.Panel6Click(Sender: TObject);
begin
if Edit1.Text = '' then MessageDlg('Silahkan Isi Data Anda !!!',mtinformation,[mbok],0) else
  begin
    DM.ADOQJamGuru.Edit;
    DM.ADOQJamGuru['id_data'] := Edit2.Text;
    DM.ADOQJamGuru['nuptk'] := Edit1.Text;
    DM.ADOQJamGuru['nama'] := Edit3.Text;
    DM.ADOQJamGuru['jenis_kelamin'] := Edit4.Text;
    DM.ADOQJamGuru['tgl_input'] := Edit15.Text;
    DM.ADOQJamGuru['bulan'] := label9.Caption;
    DM.ADOQJamGuru['tahun'] := label11.Caption;
    DM.ADOQJamGuru['jumlah_jam'] := Edit5.Text;
    DM.ADOQJamGuru['honorPerJam'] := Edit6.Text;
    DM.ADOQJamGuru['tambahan1'] := Edit9.Text;
    DM.ADOQJamGuru['tambahan2'] := Edit10.Text;
    DM.ADOQJamGuru['tambahan3'] := Edit11.Text;
    DM.ADOQJamGuru['tambahan4'] := Edit12.Text;
    DM.ADOQJamGuru['total_tambahan'] := Edit13.Text;
    DM.ADOQJamGuru['total_honor'] := Edit14.Text;
    DM.ADOQJamGuru.Post;
    //
    label9.Caption := 'Label9';
    label11.Caption := 'Label11';
    Label21.Caption := '0';
    Edit1.Clear; Edit2.Clear; Edit3.Clear;
    Edit15.Clear; Edit6.Clear; Edit4.Clear;
    Edit5.Clear; Edit7.Clear; Edit8.Clear;
    //
    Edit9.Text := '0'; Edit10.Text := '0'; Edit11.Text := '0';
    Edit12.Text := '0'; Edit13.Text := '0'; Edit14.Text := '0';
    MessageDlg('Data Berhasil Di Update !!!',mtinformation,[mbok],0);
  end;
end;

procedure TFHonorGuru.Panel5Click(Sender: TObject);
begin
  if DM.ADOQJamGuru.IsEmpty then
   MessageDlg('Data Kosong',mtInformation,[mbok],0)
  else
  if Application.MessageBox('Yakin Hapus Data ???','Pesan',MB_YESNO or MB_ICONQUESTION)=MrYes then
     begin
      DM.ADOQJamGuru.Delete;
      label9.Caption := 'Label9';
      label11.Caption := 'Label11';
      Label21.Caption := '0';
      Edit1.Clear; Edit2.Clear; Edit3.Clear;
      Edit15.Clear; Edit6.Clear; Edit4.Clear;
      Edit5.Clear; Edit7.Clear; Edit8.Clear;
      //
      Edit9.Text := '0'; Edit10.Text := '0'; Edit11.Text := '0';
      Edit12.Text := '0'; Edit13.Text := '0'; Edit14.Text := '0';
      MessageDlg('Data Berhasil Di Hapus !!!',mtinformation,[mbok],0);
     end;
end;

end.
