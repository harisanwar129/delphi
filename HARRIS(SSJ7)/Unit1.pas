unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, System.Actions, Vcl.ActnList, Vcl.DBCGrids, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBActns, Vcl.ExtDlgs, Vcl.Buttons;

type
  TFuser = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBCtrlGrid1: TDBCtrlGrid;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ActionList1: TActionList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    OpenPictureDialog1: TOpenPictureDialog;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBImage2: TDBImage;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    DBNavigator3: TDBNavigator;
    DBImage1: TDBImage;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label9: TLabel;
    Edit1: TEdit;
    Button11: TButton;
    Edit2: TEdit;
    Button12: TButton;
    Label10: TLabel;
    Edit3: TEdit;
    Button13: TButton;
    ComboBox1: TComboBox;
    Label11: TLabel;
    CheckBox1: TCheckBox;
    Edit4: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBImage2Click(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fuser: TFuser;

implementation
 uses datamodule;
{$R *.dfm}

procedure TFuser.Button11Click(Sender: TObject);
begin
if dm.ADOUsers.Locate('Username',edit1.Text,[LoPartialKey]) then
showmessage('Data Ditemukan')
else
showMessage('Data Tidak Ada');

end;

procedure TFuser.Button12Click(Sender: TObject);
begin
if dm.ADOUsers.Locate('Username;Password',vararrayof([edit1.Text,edit2.Text]),
[loCaseInsensitive])
then showmessage('data ditemukan') else
showmessage('data tidak ditemukan');
end;


procedure TFuser.Button13Click(Sender: TObject);
begin
if dm.ADOUsers.Locate(combobox1.Text,edit3.Text,[locaseinsensitive]) then
showmessage('data ditemukan')
else showmessage('data tidka ditemukan');

end;

procedure TFuser.CheckBox1Click(Sender: TObject);
begin
if (not checkbox1.Checked) and (edit4.Text='')then
dm.ADOUsers.Filtered:=false
else
if checkbox1.Checked then begin
 dm.ADOUsers.Filtered:=false;
dm.ADOUsers.Filter:='Username like '+QuotedStr(edit4.Text+'%');
 dm.ADOUsers.Filtered:=true;

                             end;

end;

procedure TFuser.DBImage1Click(Sender: TObject);
begin
    if openPictureDialog1.Execute then
    Dbimage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TFuser.DBImage2Click(Sender: TObject);
begin
if openPictureDialog1.Execute then
    Dbimage2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TFuser.FormActivate(Sender: TObject);
begin
   dm.ADOUsers.Active:=true;
end;

procedure TFuser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ADOUsers.Active:=false;
end;

end.
