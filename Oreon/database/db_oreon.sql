Screate database db_oreon;

use db_oreon;

create table tbl_cliente(
cod_cli int primary key auto_increment,
nome_cli varchar (100),
idade_cli int,
sex_cli char (1),
email_cli varchar (30),
tel_cli varchar (11));

create table tbl_planos(
cod_plano int primary key auto_increment,
tipo_plano varchar (30),
desc_plano varchar (100));

create table tbl_pedido(
cod_pedido int primary key auto_increment,
cod_cli int,
cod_plano int,
data_pedido date,
hora_pedido time,
valor_pedido decimal(10,2),
descricao_pedido varchar (100),
foreign key (cod_cli) references tbl_cliente (cod_cli),
foreign key (cod_plano) references tbl_planos (cod_plano));

insert into tbl_cliente (nome_cli, idade_cli, sex_cli, email_cli, tel_cli) values ('Israel', 31, 'M', 'israel@adm.com', '11912345678');
insert into tbl_cliente (nome_cli, idade_cli, sex_cli, email_cli, tel_cli) values ('Isabela', 18, 'F', 'isabela@adm.com', '11987654321');

insert into tbl_planos(tipo_plano, desc_plano) values ('Platinum', 'Plano para clientes com mais de 5 anos');
insert into tbl_planos(tipo_plano, desc_plano) values ('Platinum', 'Plano para clientes com mais de 5 anos');

insert into tbl_pedido (data_pedido, hora_pedido, valor_pedido, descricao_pedido) values ('2022-09-10', '10:30:00', 6000.50, 'Pacote de viagem Premium - Maldivas');
insert into tbl_pedido (data_pedido, hora_pedido, valor_pedido, descricao_pedido) values ('2022-08-10', '20:45:00', 8000.50, 'Pacote de viagem Premium - Dubai');

select 	tbl_pedido.cod_pedido,
		tbl_pedido.data_pedido,
		tbl_pedido.hora_pedido,
		tbl_pedido.valor_pedido,
        tbl_pedido.descricao_pedido,
		tbl_cliente.nome_cli,
        tbl_cliente.idade_cli,
        tbl_cliente.sex_cli,
        tbl_cliente.email_cli,
        tbl_cliente.tel_cli,
        tbl_planos.tipo_plano,
        tbl_planos.desc_plano
	from tbl_pedido
    inner join tbl_cliente
on tbl_pedido.cod_pedido = tbl_cliente.cod_cli
    inner join tbl_planos
on tbl_pedido.cod_pedido = tbl_planos.cod_plano;