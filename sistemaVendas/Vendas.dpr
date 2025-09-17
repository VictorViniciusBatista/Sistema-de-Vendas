program Vendas;

uses
  Vcl.Forms,
  uPrincipal in 'src\view\uPrincipal.pas' {fPrincipal},
  uDM in 'src\modules\uDM.pas' {DM: TDataModule},
  uTelaHeranca in 'src\modules\uTelaHeranca.pas' {fTelaHeranca},
  uCadCategoria in 'src\view\uCadCategoria.pas' {fCadCategoria},
  uEnum in 'src\modules\uEnum.pas',
  cCadCategoria in 'src\view\cCadCategoria.pas',
  uCadastroCliente in 'src\view\uCadastroCliente.pas' {fCadCliente},
  uCadProduto in 'src\view\uCadProduto.pas' {fcadProduto},
  uAtualizarDB in 'src\modules\uAtualizarDB.pas' {fAtualizarDB};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
