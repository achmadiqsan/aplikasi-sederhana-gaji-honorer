unit UDataGuru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TFDataGuru = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Label6: TLabel;
    ComboBox3: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit4: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure hanyaAngka;
    procedure FormActivate(Sender: TObject);
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure simpan;
    procedure ubah;
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataGuru: TFDataGuru;

implementation

uses
  DataModule;

{$R *.dfm}

procedure TFDataGuru.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in[#8, #13,#45, '0'..'9']) then
    begin
      ShowMessage('Maaf Inputan Hanya Angka');
      key := #0;
    end;
end;

procedure TFDataGuru.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in[#8, #13, '0'..'9']) then
    begin
      ShowMessage('Maaf Inputan Hanya Angka');
      key := #0;
    end;
end;

procedure TFDataGuru.hanyaAngka;
begin
  //
//if not (key in[#8, #13, '0'..'9']) then
//    begin
//      ShowMessage('Maaf Inputan Hanya Angka');
//      key := #0;
//    end;
end;

procedure TFDataGuru.FormActivate(Sender: TObject);
begin
  //DateTimePicker1.Date := Now;
end;

procedure TFDataGuru.bersih;
begin
  //
  Edit1.Clear;
  Edit2.Clear;
  ComboBox1.Text := '-- PILIH JENIS KELAMIN --';
  Edit3.Clear;
  ComboBox2.Text := '-- PILIH PENDIDIKAN --';
  ComboBox3.Text := '-- PILIH STATUS --';
  DateTimePicker1.Date := Now;
  Edit4.Clear;
end;

procedure TFDataGuru.FormShow(Sender: TObject);
begin
//  bersih;
end;

procedure TFDataGuru.Panel5Click(Sender: TObject);
begin
  bersih;
  Edit1.SetFocus;
end;

procedure TFDataGuru.Panel2Click(Sender: TObject);
begin
  if Edit1.Text ='' then
    MessageDlg('NUPTK Kosong',mtInformation,[mbok],0)
  else
  if Edit2.Text ='' then
    MessageDlg('Nama Guru Kosong',mtInformation,[mbok],0)
  else
  if ComboBox1.Text ='-- PILIH JENIS KELAMIN --' then
    MessageDlg('Silahkan Pilih Jenis Kelamin Kosong',mtInformation,[mbok],0)
  else
  if Edit3.Text ='' then
    MessageDlg('Nomor Telepon Kosong',mtInformation,[mbok],0)
  else
  if ComboBox2.Text ='-- PILIH PENDIDIKAN --' then
    MessageDlg('Silahkan Pilih Pendidikan Kosong',mtInformation,[mbok],0)
  else
  if ComboBox3.Text ='-- PILIH STATUS --' then
    MessageDlg('Silahkan Pilih Status Kosong',mtInformation,[mbok],0)
  else
  if Edit4.Text ='' then
    MessageDlg('Honor Per Jam Kosong',mtInformation,[mbok],0)
  else
  if DM.ADOQGuru.Locate('nuptk',Edit1.Text,[]) then
    MessageDlg('NUPTK Telah Ada',mtInformation,[mbok],0)
  else
    begin
      //
      simpan;
      bersih;
    end;
end;

procedure TFDataGuru.simpan;
begin
  DM.ADOQGuru.Append;
  DM.ADOQGuru['nuptk'] := Edit1.Text;
  DM.ADOQGuru['nama'] := Edit2.Text;
  DM.ADOQGuru['jenis_kelamin'] := ComboBox1.Text;
  DM.ADOQGuru['telepon'] := Edit3.Text;
  DM.ADOQGuru['pendidikan'] := ComboBox2.Text;
  DM.ADOQGuru['status'] := ComboBox3.Text;
  DM.ADOQGuru['tgl'] := DateTimePicker1.Date;
  DM.ADOQGuru['honorPerJam'] :=  Edit4.Text;
  DM.ADOQGuru.Post;
end;

procedure TFDataGuru.ubah;
begin
  //
  DM.ADOQGuru.Edit;
  DM.ADOQGuru['nuptk'] := Edit1.Text;
  DM.ADOQGuru['nama'] := Edit2.Text;
  DM.ADOQGuru['jenis_kelamin'] := ComboBox1.Text;
  DM.ADOQGuru['telepon'] := Edit3.Text;
  DM.ADOQGuru['pendidikan'] := ComboBox2.Text;
  DM.ADOQGuru['status'] := ComboBox3.Text;
  DM.ADOQGuru['tgl'] := DateTimePicker1.Date;
  DM.ADOQGuru['honorPerJam'] := Edit4.Text;
  DM.ADOQGuru.Post;
end;

procedure TFDataGuru.Panel3Click(Sender: TObject);
begin
  if Edit1.Text ='' then
    MessageDlg('NUPTK Kosong',mtInformation,[mbok],0)
  else
  if Edit2.Text ='' then
    MessageDlg('Nama Guru Kosong',mtInformation,[mbok],0)
  else
  if ComboBox1.Text ='-- PILIH JENIS KELAMIN --' then
    MessageDlg('Silahkan Pilih Jenis Kelamin Kosong',mtInformation,[mbok],0)
  else
  if Edit3.Text ='' then
    MessageDlg('Nomor Telepon Kosong',mtInformation,[mbok],0)
  else
  if ComboBox2.Text ='-- PILIH PENDIDIKAN --' then
    MessageDlg('Silahkan Pilih Pendidikan Kosong',mtInformation,[mbok],0)
  else
  if ComboBox3.Text ='-- PILIH STATUS --' then
    MessageDlg('Silahkan Pilih Status Kosong',mtInformation,[mbok],0)
  else
  if Edit4.Text ='' then
    MessageDlg('Honor Per Jam Kosong',mtInformation,[mbok],0)
  else
    begin
      //
      ubah;
      bersih;
      Close;
    end;
end;

procedure TFDataGuru.Panel4Click(Sender: TObject);
begin
  if DM.ADOQGuru.IsEmpty then
   MessageDlg('Data Kosong',mtInformation,[mbok],0)
  else
  if Application.MessageBox('Yakin Hapus Data ???','Pesan',MB_YESNO or MB_ICONQUESTION)=MrYes then
     begin
       DM.ADOQGuru.Delete;
       bersih;
       Close;
     end;
end;

procedure TFDataGuru.Edit4Change(Sender: TObject);
begin
  //Ribuan(Edit4);
end;

procedure TFDataGuru.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  Edit1.Clear;
  Edit2.Clear;
  ComboBox1.Text := '-- PILIH JENIS KELAMIN --';
  Edit3.Clear;
  ComboBox2.Text := '-- PILIH PENDIDIKAN --';
  ComboBox3.Text := '-- PILIH STATUS --';
  DateTimePicker1.Date := Now;
  Edit4.Clear;
end;

end.
