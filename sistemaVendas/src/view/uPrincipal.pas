unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TfPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Movimentao2: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Produto1: TMenuItem;
    Produto2: TMenuItem;
    Vendas1: TMenuItem;
    Cliente2: TMenuItem;
    Cliente3: TMenuItem;
    Produto3: TMenuItem;
    N3: TMenuItem;
    Vendapordata1: TMenuItem;
    Sistema1: TMenuItem;
    mMenuFechar: TMenuItem;
    pnlMain: TPanel;
    procedure mMenuFecharClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    procedure CriarForm(TFormulario: TComponentClass; Formulario: TForm; NameForm: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses uCadCategoria;

//Para criar tela dentro do componente mainmenu
procedure TfPrincipal.CriarForm(TFormulario: TComponentClass; Formulario: TForm;
  NameForm: String);
begin
  Formulario := fPrincipal.pnlMain.FindChildControl(NameForm) as TForm;
  if Formulario = nil then
  begin
    Application.CreateForm(TFormulario, Formulario);
    try
      Formulario.Name := NameForm;
      Formulario.Parent := fPrincipal.pnlMain;
      Formulario.BorderStyle := bsNone;
      Formulario.Align := alClient;
      Formulario.Show;
    except
      FreeAndNil(Formulario);
      raise;
    end;
  end
  else
  begin
    Formulario.BringToFront;
  end;

end;

procedure TfPrincipal.mMenuFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

//Chamar a tela uCadCategoria
procedure TfPrincipal.N2Click(Sender: TObject);
begin
  CriarForm(TfCadCategoria, fCadCategoria, 'TfCadCategoria')
end;

end.
