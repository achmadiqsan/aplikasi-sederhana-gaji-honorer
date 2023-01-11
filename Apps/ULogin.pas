unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TFLogin = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Shape1: TShape;
    Edit1: TEdit;
    Label3: TLabel;
    Shape2: TShape;
    Edit2: TEdit;
    Label4: TLabel;
    procedure Panel3Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

uses UMenu, DataModule;

{$R *.dfm}

procedure TFLogin.Panel3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFLogin.Panel2Click(Sender: TObject);
begin
  if edit1.Text ='' then
     MessageDlg('Username Kosong',mtinformation,[mbok],0)
  Else
  if edit2.Text ='' then
     MessageDlg('Password Kosong',mtinformation,[mbok],0)
  Else
       if DM.ADOQLogin.Locate('username',edit1.Text,[]) then
           Begin
              if edit2.Text = DM.ADOQLogin['password'] then
                 Begin
                    begin
                      FMenu.Show;
                      FLogin.Hide;
                    end;
                 End
              Else
                 MessageDlg('Password Salah !!!',mtinformation,[mbok],0);
           End
        else MessageDlg('Username Salah !!!',mtinformation,[mbok],0);
end;

procedure TFLogin.FormActivate(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit1.SetFocus;
end;

end.
