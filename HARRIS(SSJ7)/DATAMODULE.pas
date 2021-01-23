unit DATAMODULE;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOUsers: TADOTable;
    DSUsers: TDataSource;
    ADOBarang: TADOTable;
    DSBarang: TDataSource;
    ADSuplayer: TADOTable;
    DSSuplayer: TDataSource;
    ADOFakturJual: TADOTable;
    DSFakturJual: TDataSource;
    ADODetailJual: TADOTable;
    DSDetailJual: TDataSource;
    ADODetailJualNoFaktur: TStringField;
    ADODetailJualKode: TStringField;
    ADODetailJualJumlah: TIntegerField;
    ADODetailJualNama_Barang: TStringField;
    ADODetailJualHarga_Barang: TCurrencyField;
    ADODetailJualTotal_Jual: TCurrencyField;
    ADOFakturBeli: TADOTable;
    DSFakturBeli: TDataSource;
    ADODetailBeil: TADOTable;
    DSDetailBeli: TDataSource;
    ADOFakturBeliNoFaktur: TStringField;
    ADOFakturBeliKodeSuplayer: TStringField;
    ADOFakturBeliTgl: TDateField;
    ADOFakturBeliTotal: TFloatField;
    ADODetailBeilNoFaktur: TStringField;
    ADODetailBeilKode: TStringField;
    ADODetailBeilJumlah: TIntegerField;
    ADODetailBeilNama_Barang: TStringField;
    ADODetailBeilHarga_Barang: TCurrencyField;
    ADODetailBeilTotal_Beli: TCurrencyField;
    ADOBarangKode: TStringField;
    ADOBarangBarang: TStringField;
    ADOBarangHarga_Beli: TFloatField;
    ADOBarangHarga_Jual: TFloatField;
    ADOBarangStock: TIntegerField;
    procedure ADODetailJualCalcFields(DataSet: TDataSet);
    procedure ADODetailJualBeforePost(DataSet: TDataSet);
    procedure ADODetailBeilCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.ADODetailBeilCalcFields(DataSet: TDataSet);
begin
ADODetailBeilTotal_Beli.Value:=ADODetailBeilJumlah.Value* ADODetailBeilHarga_Barang.Value;
end;

procedure TDM.ADODetailJualBeforePost(DataSet: TDataSet);
begin
if adodetailjual.State=dsinsert then
begin
  if adobarang.Locate('Kode',ADODetailJualKode.Value,[LoPartialKey]) then
  begin
    adobarang.Edit;
    adobarangstock.Value:=adobarangstock.Value-ADODetailJualJumlah.Value;
    adobarang.Post;
  end;

end;

end;

procedure TDM.ADODetailJualCalcFields(DataSet: TDataSet);
begin
         ADODetailJualTotal_Jual.Value:=ADODetailJualJumlah.Value* ADODetailJualHarga_Barang.Value;



end;

end.
