unit QuizPraUTS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList;

type
  TForm1 = class(TForm)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    CBKode: TComboBox;
    EQTY: TEdit;
    ENama: TEdit;
    EHarga: TEdit;
    ESubTotal: TEdit;
    EDiskon: TEdit;
    ETotal: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EQTYChange(Sender: TObject);
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
var
 kode, nama:string;
 harga, diskon, subtotal,total:currency;
 qty:integer;
begin
 kode:=CBKode.Text;
 kode:=trim(kode);
 kode:=uppercase(kode);
 kode:=copy(kode,1,3);
 // Di baris ini, kode sudah pasti tidak ada spasi di awal dan diakhir
 // kode sudah pasti capital (tidak mempunyai huruf kecil)
 // kode pasti 3 huruf atau kurang
 if length(kode)<>3 then
 begin
 showmessage('Kode harus 3 karakter');
 CBKode.SetFocus;
 exit;
 end;
 // Di baris ini, kode sudah pasti tidak ada spasi di awal dan diakhir
 // kode sudah pasti capital (tidak mempunyai huruf kecil)
 // kode pasti 3 huruf tidak mungkin kurang
 if kode='A01' then
 begin
 harga:=50000;
 nama:='Speaker';
 end
 else
 if kode='B02' then
 begin
 harga:=25000;
 nama:='Mouse';
 end
 else
 if kode='C03' then
 begin
 harga:=750000;
 nama:='Hardisk';
 end
 else
 if kode='D04' then
 begin
 harga:=5000;
 nama:='Mouse Pad';
 end
 else // Jika kode tidak terdaftar
 begin
 showmessage('Kode tidak dikenal');
 exit;
 end;
 if TryStrToInt(EQty.Text,qty)=false then
 begin
 showmessage('Quantity harus angka.');
 exit;
 end;
 // Di baris ini, Qty pasti bilangan bulat tetapi masih mungkin diatas 10
 if (qty<1) or (qty>10) then
 begin
 showmessage('Hanya boleh beli 1 s/d 10 saja');
 exit;
 end;
 // Di baris ini, Qty pasti bilangan bulat dan pasti berisi 1 s/d 10
 ENama.text:=nama;
 EHarga.text:=CurrToSTr(harga);
 Subtotal:= harga * qty;
 ESubTotal.Text:=CurrToStr(subtotal);
 if subtotal>=100000 then diskon:=0.15 * subtotal else
 if subtotal>=50000 then diskon:=0.1 * subtotal else
 if subtotal>=25000 then diskon:=0.05 * subtotal else
 diskon:=0;
 EDiskon.text:=CurrToStr(diskon);
 Total:=Subtotal-Diskon;
 ETotal.text:=CurrToStr(Total);
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
CBKode.Text := '';
EQty.Text := '0';
ENama.Text := '';
EHarga.Text := '0';
ESubTotal.Text := '0';
EDiskon.Text := '0';
ETotal.Text := '0';
cbkode.SetFocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   if(application.MessageBox('Yakin akan keluar dari Program?','Konfirmasi',MB_YesNo)=ID_Yes) then
  begin
  close;
  end
end;

procedure TForm1.EQTYChange(Sender: TObject);
begin
if StrToInt(EQty.Text) > 10 then
ShowMessage('Quantity tidak boleh lebih dari 10');
EQty.SetFocus;
end;

end.
