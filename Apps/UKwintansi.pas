unit UKwintansi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFKwintansi = class(TForm)
    Panel1: TPanel;
    Panel7: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Shape4: TShape;
    Edit4: TEdit;
    Label4: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Shape1: TShape;
    GroupBox1: TGroupBox;
    Shape2: TShape;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Shape3: TShape;
    Edit3: TEdit;
    Shape5: TShape;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Shape6: TShape;
    Label7: TLabel;
    Edit7: TEdit;
    Shape7: TShape;
    Label8: TLabel;
    Edit8: TEdit;
    Shape8: TShape;
    Panel4: TPanel;
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure bersih;
    procedure Panel2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKwintansi: TFKwintansi;

implementation

uses UCariData2, DataModule, UReport;

{$R *.dfm}

procedure TFKwintansi.bersih;
begin
  Edit1.Clear; Edit2.Clear; Edit3.Clear;
  Edit4.Clear; Edit5.Clear; Edit6.Clear;
  Edit7.Clear; Edit8.Clear;
end;

procedure TFKwintansi.Panel3Click(Sender: TObject);
begin
  bersih;
  Close;
end;

procedure TFKwintansi.Panel4Click(Sender: TObject);
begin
  FCariData2.show;
end;

procedure TFKwintansi.Panel2Click(Sender: TObject);
begin
  bersih;
end;

procedure TFKwintansi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  bersih;
end;

procedure TFKwintansi.Panel7Click(Sender: TObject);
begin
  if Edit2.Text = '' then MessageDlg('Silahkan Isi Data Anda !!!',mtinformation,[mbok],0) else
  begin
    Dm.ADOQJamGuru.Close;
    Dm.ADOQJamGuru.Open;
    Dm.ADOQJamGuru.Filtered := False;
    DM.ADOQJamGuru.Filter :='id_data LIKE '+Quotedstr('%'+Edit2.Text+'%');
    Dm.ADOQJamGuru.Filtered := True;
    FReport.QRLabel16.Caption := DateToStr(Now);
    FReport.QRLabel17.Caption := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',StrToFloat(Edit6.Text));
    FReport.QuickRep1.Preview;
  end;
end;

procedure TFKwintansi.FormActivate(Sender: TObject);
begin
  Dm.ADOQJamGuru.Close;
  Dm.ADOQJamGuru.Open;
  Dm.ADOQJamGuru.Filtered := False;
end;

end.
