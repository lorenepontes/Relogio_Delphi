unit UnitRelogio;
(*
Rel�gio e contador de tempo simples
Desenvolvido por Lorena garcia
*)
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Mask, Vcl.Buttons;

type
  TFrmRelogio = class(TForm)
    PnlBotoes: TPanel;
    Panel1: TPanel;
    LblDesenvolvedora: TLabel;
    LblDtHora: TLabel;
    LblContador: TLabel;
    MMenu: TMainMenu;
    Relgio1: TMenuItem;
    Cronmetro1: TMenuItem;
    Sair1: TMenuItem;
    TmRelogio: TTimer;
    LblRelogio: TLabel;
    TmCronometro: TTimer;
    BitBtnIniciar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure TmRelogioTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cronmetro1Click(Sender: TObject);
    procedure Relgio1Click(Sender: TObject);
    procedure emporizador1Click(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure BitBtnIniciarClick(Sender: TObject);
  private
    { Private declarations }
    tempo: TDateTime;
  public
    { Public declarations }
    function AltMenu(N: Integer): Integer;

  end;

var
  FrmRelogio: TFrmRelogio;
  Temp: Integer;

implementation

{$R *.dfm}



procedure TFrmRelogio.Cronmetro1Click(Sender: TObject);
begin
    AltMenu(2);
end;

procedure TFrmRelogio.emporizador1Click(Sender: TObject);
begin
    AltMenu(3);
end;

procedure TFrmRelogio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmRelogio.FormCreate(Sender: TObject);
begin
  LblDtHora.Caption := DateTimeToStr(Now);
end;

procedure TFrmRelogio.Relgio1Click(Sender: TObject);
begin
     AltMenu(1)
 end;

procedure TFrmRelogio.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelogio.TmRelogioTimer(Sender: TObject);
begin
  LblRelogio.Caption := TimeToStr(Now);
  LblDtHora.Caption := DateTimeToStr(Now);
end;

{$Region 'Menu'}
function TFrmRelogio.AltMenu(N : Integer): Integer;
begin
  if TmCronometro.Enabled = false then
     begin
       case N of
        1:begin
           //  relogio
            PnlBotoes.Visible := False;
            LblRelogio.Enabled := Visible;
            LblRelogio.Visible := Visible;
            LblContador.Visible := False;

          end;
        2:begin
          // cronometro
            LblRelogio.Enabled := False;
            LblRelogio.Visible := False;
            PnlBotoes.Visible := True;
            LblContador.Caption := '00:00:0';
            LblContador.Visible := True;
          end;
       end;
     end else
    MessageDlg('Pare a contagem para nevagar entre as op��es!', mtInformation, [mbOK], 0);
end;
   {$EndRegion}

procedure TFrmRelogio.BitBtnIniciarClick(Sender: TObject);
begin
  if not TmCronometro.Enabled then
   Tempo := Time;
    TmCronometro.Enabled := not TmCronometro.Enabled;

    if BitBtnIniciar.Caption = 'Parar' then
         BitBtnIniciar.Caption := 'Iniciar'
        else
            BitBtnIniciar.Caption := 'Parar';

end;

procedure TFrmRelogio.BtnIniciarClick(Sender: TObject);
begin
 LblContador.Caption := FormatDateTime('HH:MM:SS',Time - tempo);

end;

end.
