program Calculadora;

uses
  Forms,
  frmCalculadora in 'frmCalculadora.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
