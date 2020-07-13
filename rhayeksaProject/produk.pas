unit produk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Edit5: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var nama, jenis, deskripsi, banyak:String;
begin
  nama := Edit1.Text;
  banyak := Edit2.Text;
  jenis := Edit5.Text;
  deskripsi := Edit4.Text;

  with ADOQuery1 do
  begin
      SQL.Clear;
      SQL.Text:='insert into produk(nama, jenis, banyak, deskripsi)values('+
      QuotedStr(nama)+','+
      QuotedStr(jenis)+','+
      QuotedStr(banyak)+','+
      QuotedStr(deskripsi)+')';
      with ADOQuery1 do
      ExecSQL;
      MessageDlg('Data disimpan.',mtinformation,[mbOK],0);
        begin
          Active:=False;
          SQL.Clear;
          SQL.Text:='select * from produk';
          Active:=True;
        end;
  end;
  Edit1.Clear;
  Edit2.Clear;
  Edit4.Clear;
  Edit5.Clear;
end;



procedure TForm1.Button2Click(Sender: TObject);
begin
with ADOQuery1 do
begin
  Active:=False;
  SQL.Clear;
  SQL.Text:='select * from produk where nama ='+QuotedStr(Edit3.Text);
  Active:=True;
end;
if ADOQuery1.RecordCount=0 then
begin
  MessageDlg('Data Tidak Ditemukan.',mtInformation,[mbOK],0);
  ADOQuery1.Active:=False;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:='select * from produk';
  ADOQuery1.Active:=True;
end
else
begin
  DBGrid1.SetFocus;
end;
end;

end.
