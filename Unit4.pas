unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, Vcl.ExtCtrls;

type
  TFMenuUtama = class(TForm)
    MainMenu1: TMainMenu;
    Arsip1: TMenuItem;
    PengelolaanDataBarang1: TMenuItem;
    PengelolaanDataSuplayer1: TMenuItem;
    PengelolaanDataUser1: TMenuItem;
    Cetak1: TMenuItem;
    Keluar1: TMenuItem;
    ransaksi1: TMenuItem;
    Penjualan1: TMenuItem;
    Pembelian1: TMenuItem;
    Stock1: TMenuItem;
    Laporan1: TMenuItem;
    Periode1: TMenuItem;
    ahunan1: TMenuItem;
    StockBarang1: TMenuItem;
    entang1: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Dzikri1: TMenuItem;
    aboutme1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Kendaraan11Click(Sender: TObject);
    procedure Supir11Click(Sender: TObject);
    procedure Penjualan1Click(Sender: TObject);
    procedure PengelolaanDataUser1Click(Sender: TObject);
    procedure PengelolaanDataSuplayer1Click(Sender: TObject);
    procedure PengelolaanDataBarang1Click(Sender: TObject);
    procedure Keluar1Click(Sender: TObject);
    procedure Pembelian1Click(Sender: TObject);
    procedure Stock1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenuUtama: TFMenuUtama;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit1, Unit6, Unit7, Unit8;

procedure TFMenuUtama.FormActivate(Sender: TObject);
begin
statusbar1.Panels[0].Text:='User';
statusbar1.Panels[1].Text:='program studi teknik informatika';
end;

procedure TFMenuUtama.Keluar1Click(Sender: TObject);
begin
close;
end;

procedure TFMenuUtama.Kendaraan11Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TFMenuUtama.Pembelian1Click(Sender: TObject);
begin
form7.showmodal;
end;

procedure TFMenuUtama.PengelolaanDataBarang1Click(Sender: TObject);
begin
form2.Showmodal;
end;

procedure TFMenuUtama.PengelolaanDataSuplayer1Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TFMenuUtama.PengelolaanDataUser1Click(Sender: TObject);
begin
Fuser.showmodal;
end;

procedure TFMenuUtama.Penjualan1Click(Sender: TObject);
begin
TransaksiJual.showmodal;
end;

procedure TFMenuUtama.Stock1Click(Sender: TObject);
begin
FORM8.SHOWMODAL;
end;

procedure TFMenuUtama.Supir11Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TFMenuUtama.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels[2].Text:=formatdatetime('ddd,dd mmm yyyy hh:mm:ss',now);
end;

end.
