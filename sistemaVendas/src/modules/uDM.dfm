object DM: TDM
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object QU: TADOQuery
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 72
    Top = 16
  end
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sql;Persist Security Info=True;User' +
      ' ID=sa;Initial Catalog=vendasUdemy;Data Source=DESKTOP-HF2375H\S' +
      'QLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 16
  end
  object quScriptCategorias: TADOQuery
    Connection = conexao
    Parameters = <>
    SQL.Strings = (
      'if OBJECT_ID ('#39'categoria'#39') is null'
      'begin'
      'create table vendasTemporaria '
      '('
      'id int primary key identity(1,1),'
      'nome varchar (100)'
      ')'
      'end')
    Left = 880
    Top = 16
  end
  object quScriptClientes: TADOQuery
    Connection = conexao
    Parameters = <>
    SQL.Strings = (
      'if OBJECT_ID ('#39'clientes'#39') is null '
      'begin'
      'create table clientes '
      '('
      'id int primary key identity (1,1), '
      'nome varchar (60),'
      'endereco varchar (60), '
      'cidade varchar (50),'
      'bairro varchar (40),'
      'estado varchar (2),'
      'cep varchar (10),'
      'telefone varchar (14), '
      'email varchar (100),'
      'dataNascimento datetime'
      ')'
      'end')
    Left = 880
    Top = 88
  end
  object quScriptProdutos: TADOQuery
    Connection = conexao
    Parameters = <>
    SQL.Strings = (
      'if OBJECT_ID ('#39'produtos'#39') is null'
      'begin'
      'create table produtos '
      '('
      'id int primary key identity (1,1), '
      'nome varchar (60) not null, '
      'descricao varchar (255) not null, '
      'valor decimal (18,5) not null,'
      'quantidade decimal (18,5) not null,'
      'idCategoria int'
      ')'
      'end')
    Left = 888
    Top = 168
  end
  object quScriptVendas: TADOQuery
    Connection = conexao
    Parameters = <>
    SQL.Strings = (
      'if OBJECT_ID ('#39'vendas'#39') is null '
      'begin'
      'create table vendas'
      '('
      'id int primary key identity (1,1), '
      'clienteId int not null,'
      'dataVenda datetime default getdate(),'
      'totalVenda decimal (18,5) default 0.00000'
      ');'
      'end;')
    Left = 896
    Top = 248
  end
  object quScripItensVendas: TADOQuery
    Connection = conexao
    Parameters = <>
    SQL.Strings = (
      'if OBJECT_ID ('#39'vendasItens'#39') is null'
      'begin'
      'create table vendasItens '
      '('
      'id int primary key identity (1,1),'
      'vendasId int not null, '
      'produtoId int not null, '
      'valorUnitario decimal (18,5) default 0.00000,'
      'quantidade decimal (18,5) default 0.00000,'
      'totalProduto decimal (18,5) default 0.00000'
      ')'
      'end; ')
    Left = 896
    Top = 336
  end
end
