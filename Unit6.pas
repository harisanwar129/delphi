unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TTransaksiJual = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid3: TDBGrid;
    Timer1: TTimer;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransaksiJual: TTransaksiJual;

implementation
 uses datamodule;
{$R *.dfm}

procedure TTransaksiJual.Button1Click(Sender: TObject);
begin
close;
end;

procedure TTransaksiJual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.ADOBarang.Active:=true;
dm.ADOFakturJual.Active:=TRUE;
dm.ADODetailJual.Active:=TRUE;
end;

procedure TTransaksiJual.TabSheet1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
if dm.ADODetailJual.State=dsinsert then begin
  if dm.ADOBarang.Locate('Kode',dm.ADODetailJualKode.Value,[LoPartialKey]) then
  begin
      dm.ADOBarang.Edit;
      dm.ADOBarangStock.value:=dm.ADOBarangStock.Value-dm.ADODetailJualJumlah.Value;
      dm.ADOBarang.Post;

  end;
end;

end;

procedure TTransaksiJual.Timer1Timer(Sender: TObject);
begin
label3.Caption:=formatDateTime('DD/mm/YYYY HH:MM:SS',now());

case dm.DSDetailJual.State  of
dsinactive:label4.Caption:='status table:dsinactive';
dsBrowse:Label4.Caption:='status table:dsInsert'; dsEdit:label4.Caption:='status table:dsedit';

end;
end;

end.
