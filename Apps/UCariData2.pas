unit UCariData2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFCariData2 = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    GroupBox1: TGroupBox;
    Shape4: TShape;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    procedure Panel7Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCariData2: TFCariData2;

implementation

uses
  DataModule, UKwintansi, UHonorNgajar;

{$R *.dfm}

procedure TFCariData2.Panel7Click(Sender: TObject);
begin
  Close;
end;

procedure TFCariData2.Edit4Change(Sender: TObject);
begin
    if edit4.Text ='' then
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
         DM.ADOQGuru.Filter :='id_data LIKE '+Quotedstr('%'+Edit4.Text+'%');
         Dm.ADOQGuru.Filtered := True;
       end;
end;

procedure TFCariData2.FormActivate(Sender: TObject);
begin
  Dm.ADOQGuru.Close;
  Dm.ADOQGuru.Open;
  Dm.ADOQGuru.Filtered := false;
end;

procedure TFCariData2.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DM.ADOQGuru.IsEmpty then
     MessageDlg('Data Kosong',mtInformation,[mbok],0)
     else
     begin
        //
        FKwintansi.Edit1.Text := DateToStr(Now);
        FKwintansi.Edit2.Text := DM.ADOQJamGuru['id_data'];
        FKwintansi.Edit3.Text := DM.ADOQJamGuru['nuptk'];
        FKwintansi.Edit4.Text := DM.ADOQJamGuru['id_data'];
        FKwintansi.Edit5.Text := DM.ADOQJamGuru['nama'];
        FKwintansi.Edit6.Text := DM.ADOQJamGuru['jumlah_jam'] * DM.ADOQJamGuru['honorPerJam'];
        FKwintansi.Edit7.Text := DM.ADOQJamGuru['total_tambahan'];
        FKwintansi.Edit8.Text := DM.ADOQJamGuru['total_honor'];
        FCariData2.Close;
     end;
  end;
end;

end.
