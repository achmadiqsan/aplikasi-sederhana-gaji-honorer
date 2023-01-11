unit USettingUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TFSettingUser = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Shape3: TShape;
    DBGrid1: TDBGrid;
    procedure Panel5Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSettingUser: TFSettingUser;

implementation

uses
  DataModule;

{$R *.dfm}

procedure TFSettingUser.Panel5Click(Sender: TObject);
begin
  Edit2.Clear;
  Edit1.Clear;
end;

procedure TFSettingUser.Panel2Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('Username Kosong',mtInformation,[mbok],0)
  else
  if Edit2.Text = '' then MessageDlg('Password Kosong',mtInformation,[mbok],0)
  else
  begin
    DM.ADOQLogin.Append;
    DM.ADOQLogin['username'] := Edit1.Text;
    DM.ADOQLogin['password'] := Edit2.Text;
    DM.ADOQLogin.Post;
    Edit2.Clear;
    Edit1.Clear;
  end;
end;

procedure TFSettingUser.Panel3Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('Username Kosong',mtInformation,[mbok],0)
  else
  if Edit2.Text = '' then MessageDlg('Password Kosong',mtInformation,[mbok],0)
  else
  begin
    DM.ADOQLogin.Edit;
    DM.ADOQLogin['username'] := Edit1.Text;
    DM.ADOQLogin['password'] := Edit2.Text;
    DM.ADOQLogin.Post;
    Edit2.Clear;
    Edit1.Clear;
  end;
end;

procedure TFSettingUser.Panel4Click(Sender: TObject);
begin
  if DM.ADOQLogin.IsEmpty then
   MessageDlg('Data Kosong',mtInformation,[mbok],0)
  else
  if Application.MessageBox('Yakin Hapus Data ???','Pesan',MB_YESNO or MB_ICONQUESTION)=MrYes then
     begin
       DM.ADOQLogin.Delete;
       Edit2.Clear;
       Edit1.Clear;
     end;
end;

procedure TFSettingUser.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DM.ADOQLogin.IsEmpty then
     MessageDlg('Data Kosong',mtInformation,[mbok],0)
     else
     begin
        Edit1.Text := DM.ADOQLogin['username']  ;
        Edit2.Text := DM.ADOQLogin['password']  ;
     end;
  end;
end;

procedure TFSettingUser.FormActivate(Sender: TObject);
begin
  Edit2.Clear;
  Edit1.Clear;
end;

end.
