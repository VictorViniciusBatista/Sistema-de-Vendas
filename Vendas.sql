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