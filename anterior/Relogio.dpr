program Relogio;

uses
  Vcl.Forms,
  Unit_Relogio in 'Unit_Relogio.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
