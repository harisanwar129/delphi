unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,db, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
uses datamodule, Unit4, Unit1, Unit2, Unit3;
{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin

if dm.ADOUsers.Locate('Username;Password',vararrayof([edit1.Text,edit2.Text]),[locaseinsensitive]) then
begin
  MessageDlg('selamat datang',mtconfirmation,[mbok],1);with FMenuUtama do
  begin
    statusbar1.panels[0].text:='User      :'+dm.ADOUsers.FieldByName('Username').AsString;
    FUser.enabled:=(dm.ADOUsers.FieldByName('Level').Value='1');
    Form2.enabled:=(dm.ADOUsers.FieldByName('Level').Value='1');
    Form3.enabled:=(dm.ADOUsers.FieldByName('Level').Value='1');
  end; FMenuUtama.showmodal;
end else
MessageDlg('username atau password salah',mterror,[mbok],1);edit1.Text:='';
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm5.Edit2Change(Sender: TObject);
begin
button1.Enabled:=(edit2.Text<>'');
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
dm.ADOUsers.Active:=true;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ADOUsers.Active:=false;
end;

end.
