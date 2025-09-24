create database vendasUdemy
use vendasUdemy

create table vendasTemporaria 
(
id int primary key identity(1,1),
nome varchar (100)
)

Create table categoria 
(
id int primary key identity (1,1), 
descricao varchar (200)
)

insert into categoria (descricao) values ('Tablets'), ('Roteadores'), ('Perifericos')

insert into categoria (descricao) values ('Notebook')
insert into categoria (descricao) values ('Tablets')
insert into categoria (descricao) values ('Roteadores')
insert into categoria (descricao) values ('Perifericos')

update categoria set descricao = 'Ubiquiti' where id = '1'

Select * from categoria
Select * from categoria where descricao = 'Ubiquiti'

select * from categoria where id = '1' and descricao like '%Ubiquiti%'

delete from categoria where id = 10; 

create table clientes 
(
id int primary key identity (1,1), 
nome varchar (60),
endereco varchar (60), 
cidade varchar (50),
bairro varchar (40),
estado varchar (2),
cep varchar (10),
telefone varchar (14), 
email varchar (100),
dataNascimento datetime
)

select * from clientes

insert into clientes (nome, endereco, cidade, bairro, estado, cep, telefone, email, dataNascimento) values 
(
'Victor Vinicius dos Santos Batista', 'Rua azomar batista de carvalho', 'Sorocaba', 'Jardim Siriema', 'SP', '18075778', '15 991642121', 'vitor.ti@henriplast', '01/06/1998'
); 

insert into clientes (nome, endereco, cidade, bairro, estado, cep, telefone, email, dataNascimento) values 
(
'Camila Lima Leal', 'Rua azomar batista de carvalho', 'Sorocaba', 'Jardim Siriema', 'SP', '18075778', '15 991642121', 'camila.lima@henriplast', '23/11/2000'
); 

insert into clientes (nome, endereco, cidade, bairro, estado, cep, telefone, email, dataNascimento) values 
(
'Teste12', 'Rua azomar batista de carvalho', 'Sorocaba', 'Jardim Siriema', 'SP', '18075778', '15 991642121', 'teste@henriplast', '23/11/1965'
); 

update clientes set email = 'vitor.ti@henriplast.com.br' where id = '1'

select * from clientes where nome like '%v%'

create table produtos 
(
id int primary key identity (1,1), 
nome varchar (60) not null, 
descricao varchar (255) not null, 
valor decimal (18,5) not null,
quantidade decimal (18,5) not null,
idCategoria int
)

insert into produtos (nome, descricao, valor, quantidade, idCategoria) values 
('Fone de ouvido', 'Fone de ouvido com fio', '80.00', 1, 5);

insert into produtos (nome, descricao, valor, quantidade, idCategoria) values 
('Fone de ouvido', 'Fone de ouvido sem fio', '100.00', 1, 5);

insert into produtos (nome, descricao, valor, quantidade, idCategoria) values 
('Fone de ouvido', 'Fone de ouvido gamer', '150.50', 1, 5);

insert into produtos (nome, descricao, valor, quantidade, idCategoria) values 
('Alcool Isoprobilico', 'alcool para limpar componentes eletricos', '120.50', 2, 14) 

select * from produtos
select * from categoria

--drop table produtos 

select p.id,
	   p.nome,
	   p.descricao,
	   p.valor,
	   p.quantidade,
	   p.idCategoria,
	   c.descricao
from produtos as p 
	left join categoria as c on c.id = p.idCategoria

-- se a tabela vendas retonar sem nenhum dado, ele vai criar a tabela 
if OBJECT_ID ('vendas') is null 
begin
create table vendas
(
id int primary key identity (1,1), 
clienteId int not null,
dataVenda datetime default getdate(),
totalVenda decimal (18,5) default 0.00000
);
end;

--drop table vendasItens

if OBJECT_ID ('vendasItens') is null
begin
create table vendasItens 
(
id int primary key identity (1,1),
vendasId int not null, 
produtoId int not null, 
valorUnitario decimal (18,5) default 0.00000,
quantidade decimal (18,5) default 0.00000,
totalProduto decimal (18,5) default 0.00000
)
end; 

--drop table vendasItens

select * from vendasItens 
Select * from vendas

-- verifica se essa tabeça existe, retornando o id
select OBJECT_ID ('vendasItens')

if OBJECT_ID ('categoria') is null
begin
create table vendasTemporaria 
(
id int primary key identity(1,1),
nome varchar (100)
)
end

select vendas.id, vendas.clienteId, clientes.nome, vendas.dataVenda, vendas.totalVenda
from vendas
inner join clientes 
on clientes.id = vendas.clienteId

select vendas.id, vendas.clienteId, clientes.nome, vendas.dataVenda, vendas.totalVenda
from vendas
inner join clientes 
on clientes.id = vendas.clienteId 
where vendas.id = 1

select vendas.id, vendas.clienteId, clientes.nome, vendas.dataVenda, vendas.totalVenda
from vendas
inner join clientes 
on clientes.id = vendas.clienteId 
where clientes.nome like '%vic%'

select vendas.id, vendas.clienteId, clientes.nome, vendas.dataVenda, vendas.totalVenda
from vendas
inner join clientes 
on clientes.id = vendas.clienteId 
where vendas.totalVenda = 10


select * from vendas
select * from clientes
select * from produtos

insert into vendas (clienteId, dataVenda, totalVenda) values (1,'19-09-2025', '10.0'), (1,'18-09-2025', '10.0'), (2, '18-09-2025', '75.0'), (2, '19-09-2025', '120.0')

insert into vendas (clienteId, dataVenda, totalVenda) values (15, '19-09-2025', '10.50')

select * from produtos

update produtos set nome = 'Fone de ouvido - com fio' where id = 1

update produtos set nome = 'Fone de ouvido - sem fio' where id = 2

update produtos set nome = 'Fone de ouvido - Gamer' where id = 3

update produtos set nome = 'Alcool - Isoprobilico 1Lt' where id = 5

update produtos set nome = 'Notebook - Inspiron 15 3250' where id = 8



select id, nome, quantidade, valor as 'valor Unitario', valorTotalProduto = valor * quantidade from produtos 
select * from produtos
select id as 'ID' from produtos

select total = valor * quantidade from produtos

select * from vendasItens
select * from vendas
select * from produtos


select * from clientes

insert into vendasItens (vendasId, produtoId, valorUnitario, quantidade, totalProduto) values 
(
1, 1, '80', 1, '80'
)

insert into vendasItens (vendasId, produtoId, valorUnitario, quantidade, totalProduto) values 
(
12, 1, '100', 2, '100'
)

select vendas.id, vendas.clienteId, clientes.nome, vendas.dataVenda, vendas.totalVenda
from vendas
inner join clientes 
on clientes.id = vendas.clienteId 



select * from vendasItens
select * from vendas


insert into vendas (clienteId, dataVenda, totalVenda) values (15, '19-09-2025', '10.50')

insert into vendasItens (vendasId, produtoId, valorUnitario, quantidade, totalProduto) values 
(
14, 1, '100', 2, '200'
)

update vendasItens set totalProduto = '200' where id = 3


select * from produtos

--- Limpar tabelas conteudo 

delete from vendasItens 
DBCC CHECKIDENT('vendasItens', RESED, 0)

delete from vendas 
DBCC CHECKIDENT('vendas', RESED, 0)

delete from produtos
DBCC CHECKIDENT('produtos', RESED, 0)

delete from clientes 
DBCC CHECKIDENT('clientes', RESED, 0)

delete from categoria 
DBCC CHECKIDENT('categoria', RESED, 0)

----