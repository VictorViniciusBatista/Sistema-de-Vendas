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
'Sonia', 'Rua azomar batista de carvalho', 'Sorocaba', 'Jardim Siriema', 'SP', '18075778', '15 991642121', 'sonia@henriplast', '23/11/1965'
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

drop table produtos 

select p.id,
	   p.nome,
	   p.descricao,
	   p.valor,
	   p.quantidade,
	   p.idCategoria,
	   c.descricao
from produtos as p 
	left join categoria as c on c.id = p.idCategoria
