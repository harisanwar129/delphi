unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, frxClass, frxDBSet;

type
  TForm7 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Button2: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Button3: TButton;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxReport2: TfrxReport;
    TabSheet3: TTabSheet;
    DBGrid4: TDBGrid;
    DBNavigator3: TDBNavigator;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Button4: TButton;
    Label7: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label8: TLabel;
    Edit2: TEdit;
    Button5: TButton;
    Button6: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
 uses datamodule;
{$R *.dfm}

procedure TForm7.Button2Click(Sender: TObject);
begin
frxreport1.ShowReport();
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
frxreport2.ShowReport();
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
dm.QBarang.Close;
dm.QBarang.SQL.Clear;
dm.QBarang.SQL.Add(edit1.Text);
dm.QBarang.Open;

end;

procedure TForm7.Button5Click(Sender: TObject);
begin
with dm.QBarang do
begin
  sql.Clear;
  sql.Add('Delete  From Barang where Barang Like '+QuotedSTR(edit2.Text));
  execsql;
  sql.Clear;
  sql.Add('Select * From Barang');
  open;
end;
end;

procedure TForm7.Button6Click(Sender: TObject);
begin
dm.ADOBarang.Next;
end;

procedure TForm7.ComboBox1Change(Sender: TObject);
begin
with dm.QBarang do
begin
  close;
  sql.Clear;
  sql.Add('Select * From Barang order By '+combobox1.Text+' '+combobox2.Text);
  open;
end;
end;

procedure TForm7.Edit2Change(Sender: TObject);
begin
with dm.QBarang do
begin
  close;
  sql.Clear;
  sql.Add('Select * From Barang where Barang Like '+QuotedSTR(edit2.Text));
  open;
end;
end;

procedure TForm7.TabSheet1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
if dm.ADODetailBeil.State=dsinsert then begin
  if dm.ADOBarang.Locate('Kode',dm.ADODetailBeilKode.Value,[LoPartialKey]) then
  begin
      dm.ADOBarang.Edit;
      dm.ADOBarangStock.value:=dm.ADOBarangStock.Value-dm.ADODetailBeilJumlah.Value;
      dm.ADOBarang.Post;

  end;
end;

end;

procedure TForm7.Timer1Timer(Sender: TObject);
begin
label3.Caption:=formatDateTime('DD/mm/YYYY HH:MM:SS',now());

case dm.DSDetailJual.State  of
dsinactive:label4.Caption:='status table:dsinactive';
dsBrowse:Label4.Caption:='status table:dsInsert'; dsEdit:label4.Caption:='status table:dsedit';
end;
  end;
end.
