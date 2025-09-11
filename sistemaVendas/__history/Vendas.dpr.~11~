program Vendas;

uses
  Vcl.Forms,
  uPrincipal in 'src\view\uPrincipal.pas' {fPrincipal},
  uDM in 'src\modules\uDM.pas' {DM: TDataModule},
  uTelaHeranca in 'src\modules\uTelaHeranca.pas' {fTelaHeranca},
  uCadCategoria in 'src\view\uCadCategoria.pas' {fCadCategoria},
  uEnum in 'src\modules\uEnum.pas',
  cCadCategoria in 'src\view\cCadCategoria.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
