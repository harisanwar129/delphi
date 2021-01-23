program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Fuser},
  DATAMODULE in 'DATAMODULE.pas' {DM: TDataModule},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {FMenuUtama},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {TransaksiJual},
  Unit7 in 'Unit7.pas' {Form7},
  Unit8 in 'Unit8.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TTransaksiJual, TransaksiJual);
  Application.CreateForm(TFMenuUtama, FMenuUtama);
  Application.CreateForm(TFuser, Fuser);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
