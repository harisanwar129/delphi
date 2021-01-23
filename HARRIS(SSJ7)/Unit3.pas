unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtDlgs, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.DBCGrids, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TForm3 = class(TForm)
    SpeedButton1: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    TabSheet2: TTabSheet;
    DBCtrlGrid1: TDBCtrlGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    TabSheet3: TTabSheet;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    DBNavigator3: TDBNavigator;
    ActionList1: TActionList;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    OpenPictureDialog1: TOpenPictureDialog;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
 uses datamodule;
{$R *.dfm}

procedure TForm3.Button10Click(Sender: TObject);
begin
dm.ADSuplayer.Post;
button6.Enabled:=true;
button7.Enabled:=true;
button8.Enabled:=true;
button9.Enabled:=false;
button10.Enabled:=false;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
dm.ADSuplayer.Insert;
button6.Enabled:=false;
button7.Enabled:=false;
button8.Enabled:=false;
button9.Enabled:=true;
button10.Enabled:=true;

end;

procedure TForm3.Button7Click(Sender: TObject);
begin
dm.ADSuplayer.edit;
button6.Enabled:=false;
button7.Enabled:=false;
button8.Enabled:=false;
button9.Enabled:=true;
button10.Enabled:=true;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
if MessageDlg('apakah data akan dihapus ?',mtconfirmation,[mbYes,mbNo],0)=MrYes then
dm.ADSuplayer.Delete;
end;

procedure TForm3.Button9Click(Sender: TObject);
begin
dm.ADSuplayer.Post;
button6.Enabled:=true;
button7.Enabled:=true;
button8.Enabled:=true;
button9.Enabled:=false;
button10.Enabled:=false;
end;

end.
