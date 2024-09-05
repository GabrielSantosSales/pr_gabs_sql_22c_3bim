create database pr_gabs_22c_3bim;
use pr_gabs_22c_3bim;

create table clientes (
	id_cliente tinyint auto_increment primary key,
    nome varchar(30),
    email varchar(35),
    telefone bigint
);

create table pedidos (
	id_pedido tinyint auto_increment primary key,
    id_cliente tinyint,
    data_pedido date,
    total bigint
);

drop table pedidos;

insert into clientes (nome, email, telefone) 
values ("Alice Souza", "alice.souza@example.com", 11999998888),
	("Bruno Lima", "bruno.lima@example.com", 11988887777),
    ("Carla Santos", "carla.santos@example.com", 11977776666),
    ("Daniela Oliveira", "daniela.oliveira@example.com", 11966665555),
    ("Eduardo Pereira", "eduardo.pereira@example.com", 11955554444);
    
insert into pedidos (data_pedido, total) 
values ("2024-08-01", 250),
	("2024-08-03", 150),
    ("2024-08-05", 300),
    ("2024-08-07", 450),
    ("2024-08-09", 200);
    

select clientes.nome, total from clientes left join pedidos on pedidos.id_cliente = clientes.id_cliente;

select clientes.email, data_pedido from clientes left join pedidos on pedidos.id_cliente = clientes.id_cliente;

select nome from clientes right join pedidos on pedidos.id_cliente = clientes.id_cliente where total > 300;