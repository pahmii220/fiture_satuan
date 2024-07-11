unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    edt2: TEdit;
    lbl2: TLabel;
    edt1: TEdit;
    procedure edt2Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.edt2Change(Sender: TObject);
begin
with DataModule2.zqry1 do
begin
SQL.Clear;
SQL.Add('select * from satuan where nama = "'+edt2.Text+'"');
Open;
end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
ShowMessage('Nama Satuan Tidak Boleh Kosong!');
end else
if DataModule2.zqry1.Locate('nama',Edit1.Text,[]) then
begin
ShowMessage('Nama Satuan '+Edit1.Text+' Sudah Ada Didalam Sistem');
end else
if edt1.Text = '' then
begin
ShowMessage('Diskripsi Tidak Boleh Kosong!');
end else
if DataModule2.zqry1.Locate('diskripsi',edt1.Text,[]) then
begin
ShowMessage('Diskripsi '+edt1.Text+' Sudah Ada Didalam Sistem');
end else
Begin // simpan
with DataModule2.zqry1 do
begin
SQL.Clear;
SQL.Add('insert into Satuan values(null,"'+Edit1.Text+'","'+edt1.Text+'")');
ExecSQL ;
SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil Disimpan!');
end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
ShowMessage('Nama Tidak Boleh Kosong!');
end else
if Edit1.Text = DataModule2.zqry1.Fields[1].AsString then
begin
ShowMessage('Nama '+Edit1.Text+' Tidak Ada Perubahan');
end else
if edt1.Text = '' then
begin
ShowMessage('Diskripsi Tidak Boleh Kosong!');
end else
if edt1.Text = DataModule2.zqry1.Fields[1].AsString then
begin
ShowMessage('Diskripsi '+edt1.Text+' Tidak Ada Perubahan');
end else
begin //kode update
with DataModule2.zqry1 do
begin
SQL.Clear;
SQL.Add('update satuan set nama="'+Edit1.text+'" where id= "'+a+'"');
ExecSQL ;
SQL.Clear;
SQL.Add('update satuan set diskripsi="'+edt1.text+'" where id= "'+a+'"');
ExecSQL ;
SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil Diupdate!');
end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with DataModule2.zqry1 do
begin
SQL.Clear;
SQL.Add('delete from satuan where id= "'+a+'"');
ExecSQL ;

SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil DiDelete!');
end else
begin
ShowMessage('Data Batal Dihapus!');
end;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule2.zqry1.Fields[1].AsString;
edt1.Text:= DataModule2.zqry1.Fields[1].AsString;
a:= DataModule2.zqry1.Fields[0].AsString;
Edit1.Enabled:= True;

end;

procedure TForm1.btn4Click(Sender: TObject);
begin
Edit1.clear;
edt1.clear;
end;

end.
