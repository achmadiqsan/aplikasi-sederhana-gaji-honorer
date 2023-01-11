unit UCariData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls;

type
  TFCariData1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Shape4: TShape;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    Shape1: TShape;
    procedure Panel7Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCariData1: TFCariData1;

implementation

uses
  DataModule, UHonorNgajar;

{$R *.dfm}

procedure TFCariData1.Panel7Click(Sender: TObject);
begin
  Close;
end;

procedure TFCariData1.Edit4Change(Sender: TObject);
begin
  if RadioButton1.Checked = True then
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
         DM.ADOQGuru.Filter :='nuptk LIKE '+Quotedstr('%'+Edit4.Text+'%');
         Dm.ADOQGuru.Filtered := True;
       end;
  end
  else
  if RadioButton2.Checked = True then
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
         DM.ADOQGuru.Filter :='nama LIKE '+Quotedstr('%'+Edit4.Text+'%');
         Dm.ADOQGuru.Filtered := True;
       end;
  end;
end;

procedure TFCariData1.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DM.ADOQGuru.IsEmpty then
     MessageDlg('Data Kosong',mtInformation,[mbok],0)
     else
     begin
        //
        FHonorGuru.Edit1.Text := DM.ADOQGuru['nuptk'];
        FHonorGuru.Edit2.Text := DateToStr(Now) + DM.ADOQGuru['nuptk'];
        FHonorGuru.Edit3.Text := DM.ADOQGuru['nama'];
        FHonorGuru.Edit15.Text := DateToStr(Now);
        FHonorGuru.Edit6.Text := DM.ADOQGuru['honorPerJam'];
        FHonorGuru.Edit4.Text := DM.ADOQGuru['jenis_kelamin'];
        FCariData1.Close;
     end;
  end;
end;

procedure TFCariData1.FormActivate(Sender: TObject);
begin
  Edit4.Clear;
  Dm.ADOQGuru.Close;
  Dm.ADOQGuru.Open;
  Dm.ADOQGuru.Filtered := False;
end;

end.
