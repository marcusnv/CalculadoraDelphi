unit frmCalculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnMan, ActnColorMaps;

type
  TForm1 = class(TForm)
    btnNumero7: TSpeedButton;
    btnNumero8: TSpeedButton;
    btnNumero9: TSpeedButton;
    btnAdicao: TSpeedButton;
    btnNumero4: TSpeedButton;
    btnNumero5: TSpeedButton;
    btnNumero6: TSpeedButton;
    btnSubtracao: TSpeedButton;
    btnNumero1: TSpeedButton;
    btnNumero2: TSpeedButton;
    btnNumero3: TSpeedButton;
    btnMultiplicacao: TSpeedButton;
    btnLimpar: TSpeedButton;
    btnNumero0: TSpeedButton;
    btnIgual: TSpeedButton;
    btnDivisao: TSpeedButton;
    edtResultado: TEdit;
    procedure btnNumero1Click(Sender: TObject);
    procedure btnNumero2Click(Sender: TObject);
    procedure btnNumero3Click(Sender: TObject);
    procedure btnNumero4Click(Sender: TObject);
    procedure btnNumero5Click(Sender: TObject);
    procedure btnNumero6Click(Sender: TObject);
    procedure btnNumero7Click(Sender: TObject);
    procedure btnNumero8Click(Sender: TObject);
    procedure btnNumero9Click(Sender: TObject);
    procedure btnNumero0Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnAdicaoClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     function addNum(num:Integer) : Integer;
  end;

var
  Form1: TForm1;
  resultado: Real;
  num1: Integer;
  num2: Integer;
  sinal: Integer;

implementation

{$R *.dfm}

function TForm1.addNum(num:Integer) : Integer;
begin
edtResultado.Text := edtResultado.Text + IntToStr(num);
end;

procedure TForm1.btnNumero1Click(Sender: TObject);
begin
addNum(1);
end;

procedure TForm1.btnNumero2Click(Sender: TObject);
begin
addNum(2);
end;

procedure TForm1.btnNumero3Click(Sender: TObject);
begin
addNum(3);
end;

procedure TForm1.btnNumero4Click(Sender: TObject);
begin
addNum(4);
end;

procedure TForm1.btnNumero5Click(Sender: TObject);
begin
addNum(5);
end;

procedure TForm1.btnNumero6Click(Sender: TObject);
begin
addNum(6);
end;

procedure TForm1.btnNumero7Click(Sender: TObject);
begin
addNum(7);
end;

procedure TForm1.btnNumero8Click(Sender: TObject);
begin
addNum(8);
end;

procedure TForm1.btnNumero9Click(Sender: TObject);
begin
addNum(9);
end;

procedure TForm1.btnNumero0Click(Sender: TObject);
begin
addNum(0);
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
edtResultado.Clear;
num1:=0;
num2:=0;
resultado:=0;
sinal:=0;
end;

procedure TForm1.btnAdicaoClick(Sender: TObject);
begin
sinal:=1;
if Trim(edtResultado.Text) = ' ' then
begin
   ShowMessage('Digite algo no campo!');
end
else begin
btnIgual.Enabled:=True;
num1:= StrToInt(edtResultado.Text);
edtResultado.Clear;
end;

end;

procedure TForm1.btnSubtracaoClick(Sender: TObject);
begin
sinal:=2;
if Trim(edtResultado.Text) = ' ' then
begin
   ShowMessage('Digite algo no campo!');
end
else begin
btnIgual.Enabled:=True;
num1:= StrToInt(edtResultado.Text);
edtResultado.Clear;
end;
end;

procedure TForm1.btnMultiplicacaoClick(Sender: TObject);
begin
sinal:=3;
if Trim(edtResultado.Text) = ' ' then
begin
   ShowMessage('Digite algo no campo!');
end
else begin
btnIgual.Enabled:=True;
num1:= StrToInt(edtResultado.Text);
edtResultado.Clear;
end;
end;

procedure TForm1.btnDivisaoClick(Sender: TObject);
begin
sinal:=4;
if Trim(edtResultado.Text) = ' ' then
begin
   ShowMessage('Digite algo no campo!');
end
else begin
btnIgual.Enabled:=True;
num1:= StrToInt(edtResultado.Text);
edtResultado.Clear;
end;
end;

procedure TForm1.btnIgualClick(Sender: TObject);
begin
num2 := StrToInt(edtResultado.Text);
case sinal of
1:resultado:=num1 + num2;
2:resultado:=num1 - num2;
3:resultado:=num1 * num2;
4:resultado:=num1 / num2;
end;
edtResultado.Text:= FloatToStr(resultado);
btnIgual.Enabled := False;
end;

end.
