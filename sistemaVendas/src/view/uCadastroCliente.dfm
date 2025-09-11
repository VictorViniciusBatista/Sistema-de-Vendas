inherited fCadCliente: TfCadCliente
  Caption = 'Cadatris de Cliente'
  ClientHeight = 520
  ClientWidth = 1072
  StyleElements = [seFont, seClient, seBorder]
  ExplicitLeft = 3
  ExplicitTop = 3
  ExplicitWidth = 1072
  ExplicitHeight = 520
  TextHeight = 15
  inherited pnlBotoes: TPanel
    Top = 430
    Width = 1072
    StyleElements = [seFont, seClient, seBorder]
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
    inherited pnlNovo: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlEspaco: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlAlterar: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlEspaco2: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlCancelar: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlEspaco3: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlGravar: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlEspaco4: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlApagar: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlEspaco5: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlEspaco6: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlEspaco7: TPanel
      Left = 1068
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlFechar: TPanel
      Left = 953
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlEspaco8: TPanel
      Left = 948
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pgPrincipal: TPageControl
    Width = 1072
    Height = 430
    ActivePage = tabManutencao
    ExplicitTop = -6
    inherited tabListagem: TTabSheet
      ExplicitWidth = 1064
      ExplicitHeight = 400
      inherited pnlBotoesListagem: TPanel
        Width = 1064
        StyleElements = [seFont, seClient, seBorder]
        inherited pnlEspaco9: TPanel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited pnlPesquisar: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblIndice: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited edtPesquisar: TMaskEdit
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited pnlPesquisarr: TPanel
            StyleElements = [seFont, seClient, seBorder]
          end
        end
      end
      inherited dbgListagem: TDBGrid
        Width = 1064
        Height = 327
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 1064
      ExplicitHeight = 400
      inherited edtCategoria: TLabeledEdit
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited edtDescricao: TLabeledEdit
        StyleElements = [seFont, seClient, seBorder]
      end
    end
  end
end
