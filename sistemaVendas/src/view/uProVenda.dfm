inherited fProVenda: TfProVenda
  Caption = 'Vendas'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pnlBotoes: TPanel
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
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlFechar: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlEspaco8: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pgPrincipal: TPageControl
    ActivePage = tabManutencao
    inherited tabListagem: TTabSheet
      inherited pnlBotoesListagem: TPanel
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
            OnKeyUp = edtPesquisarKeyUp
          end
          inherited pnlPesquisarr: TPanel
            StyleElements = [seFont, seClient, seBorder]
            inherited btnPesquisar: TSpeedButton
              OnClick = btnPesquisarClick
            end
          end
        end
      end
      inherited dbgListagem: TDBGrid
        Height = 445
        DataSource = dtListagem
        OnTitleClick = dbgListagemTitleClick
      end
      object StatusBar1: TStatusBar
        Left = 0
        Top = 518
        Width = 1100
        Height = 19
        Panels = <
          item
            Text = 'Total de vendas'
            Width = 120
          end
          item
            Width = 90
          end
          item
            Width = 50
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      object Categoria: TLabel
        Left = 140
        Top = 16
        Width = 37
        Height = 15
        Caption = 'Cliente'
      end
      object Label2: TLabel
        Left = 795
        Top = 13
        Width = 59
        Height = 15
        Caption = 'Data Venda'
      end
      object edtVendasId: TLabeledEdit
        Tag = 1
        Left = 3
        Top = 32
        Width = 91
        Height = 23
        Constraints.MaxHeight = 30
        EditLabel.Width = 95
        EditLabel.Height = 15
        EditLabel.Caption = 'N'#250'mero da venda'
        Enabled = False
        MaxLength = 60
        TabOrder = 0
        Text = ''
      end
      object lkCliente: TDBLookupComboBox
        Left = 139
        Top = 32
        Width = 630
        Height = 23
        DataField = 'id'
        KeyField = 'id'
        ListField = 'nome'
        ListSource = DMsvendas.dtCliente
        TabOrder = 1
      end
      object edtDataVenda: TDateEdit
        Left = 795
        Top = 32
        Width = 174
        Height = 23
        ClickKey = 114
        DialogTitle = 'Selecione a data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 2
      end
      object pnlFundo: TPanel
        Left = 0
        Top = 61
        Width = 1100
        Height = 476
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        ExplicitLeft = 5
        ExplicitTop = 59
        object pnltopo: TPanel
          Left = 0
          Top = 0
          Width = 1100
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          Color = clActiveCaption
          ParentBackground = False
          TabOrder = 0
        end
        object pnlBaixo: TPanel
          Left = 0
          Top = 416
          Width = 1100
          Height = 60
          Align = alBottom
          BevelOuter = bvNone
          Color = clActiveCaption
          ParentBackground = False
          TabOrder = 1
          object lblValor: TLabel
            Left = 864
            Top = 25
            Width = 26
            Height = 15
            Caption = 'Valor'
          end
          object edtValor: TCurrencyEdit
            Left = 901
            Top = 21
            Width = 84
            Height = 23
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited imgImagens: TImageList
    Left = 1048
    Top = 176
  end
  inherited ActionList1: TActionList
    Left = 1048
    Top = 264
  end
  object adoLista: TADOQuery
    Connection = DM.conexao
    Parameters = <>
    Left = 1032
    Top = 24
  end
  object dtListagem: TDataSource
    DataSet = adoLista
    Left = 1040
    Top = 96
  end
end
