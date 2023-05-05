program Relogio;

uses
  Vcl.Forms,
  UnitRelogio in 'UnitRelogio.pas' {FrmRelogio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmRelogio, FrmRelogio);
  Application.Run;
end.
