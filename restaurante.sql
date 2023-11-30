create database restaurante;
use restaurante;

create table Prato(
preco double,
nome varchar(100),
descricao text,
categoria varchar (100),
id_prato integer Primary Key
);
create table Ingrediente(
nome varchar (100),
estoque integer,
id_ing integer Primary Key
);
create table prato_ingrediente(
id_prato integer,
id_ing integer,
constraint fkprato foreign key(id_prato) references Prato(id_prato),
constraint fkid foreign key(id_ing) references Ingrediente(id_ing)
);
create table Cliente(
nome varchar(100),
telefone varchar(20),
id_cliente integer Primary Key
);
create table pedido(
dataPedido date,
statuspedido varchar(20),
id_pedido integer Primary key,
id_cliente integer,
constraint fped foreign key(id_cliente) references cliente(id_cliente)

);

create table prato_pedido(
id_prato integer,
id_pedido integer,
constraint fkpratoPedido foreign key(id_prato) references Prato(id_prato),
constraint fkPedido foreign key(id_pedido) references Pedido(id_pedido)
);
